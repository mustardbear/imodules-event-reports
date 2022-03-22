module Merge

  # This method is used to merge rows for the same person together. It takes an array of rows
  # from the exported csv file (newest at the top of the stack) and returns a single row with
  # all summable columns added together.
  # NOTE: This assumes the top row in the stack is the most recent row.
  #
  # IMPORTANT: The original export must contain the imodules_id column (not included by default)
  #
  def Merge.merge_stack(stack)
  
    # Initialize a new csv table from the stack and create an empty array to receive the merged row
    csv_table = CSV::Table.new(stack)  
    fields = []
  
    # Loop through each column and sum up the ones that are summable and put that in the merged row
    # otherwise just put the value of the top row in the merged one. 
    csv_table.headers.each do |header|
      
      if SUMMABLE.include?(header)
        column = csv_table[header].collect { |x| x.nil? ? 0 : x.to_f} # Have to ensure nil is replaced with zero for adding
        fields << column.inject(0, :+)
      else
        fields << csv_table[header][0]
      end
    end
    merged_row = CSV::Row.new(csv_table.headers, fields)
  end
  
  def Merge.fix_row(headers, row)
    CSV::Row.new(headers, row.collect { |x| x[1] == 0 ? '' : x[1]})
  end

  def Merge.create_merged_report(logger)
    # Read in the entire registration report
    logger.debug { "loading #{SOURCE} as a .csv file" }
    rows = CSV.read(SOURCE, headers: true, encoding: "iso-8859-1:UTF-8")
    logger.debug { "Number of rows = #{rows.length}"}

    output_row_count = 0

    # Merge rows that need merging and create a new .csv file
    logger.debug { "creating merged version in #{MERGED}" }
    CSV.open(MERGED, 'w') do |csv|
  
    logger.info("#{SOURCE} DOES NOT CONTAIN imodules_id") && exit if !rows.headers.include?('imodules_id')
    
      # Write headers to the top of the new file
      csv << rows.headers
  
      # Initialize a new stack we'll use to gather rows for the same person
      stack = []
  
      # Go through each row from the original file
      rows.each do |row|
        # If there's no one in the stack, add this person
        if stack.count == 0
          stack.push(row)
        else
          # We merge records based on the imodules_id - every row should have one and every person should have just one
          if stack[0]['imodules_id'] != row['imodules_id'] || (stack[0]['imodules_id'].nil? || stack[0]['imodules_id'].strip.empty?)
            # This Guest is not the same as those on the stack
            if stack.count > 1
        
              # DO THE MERGE STUFF HERE THEN ADD MERGED ROW TO csv
              stack[0] = Merge.merge_stack(stack)
            end
        
            # Replace any column with a zero with a blank
            new_row = Merge.fix_row(rows.headers, stack[0])
            
            # Put the row in the file
            csv << new_row
            output_row_count += 1

            # CLEAR THE STACK
            stack.clear
        
            # START A NEW STACK
            stack.push(row)
          else
            # PUSH THE GUEST ONTO THE STACK
            stack.push(row)
          end
        end        
      end
      
      # Gotta make sure we don't orphan anything in the stack
      if stack.count == 1
        csv << Merge.fix_row(rows.headers, stack[0])
        output_row_count += 1
      elsif stack.length > 1
        stack[0] = Merge.merge_stack(stack)
        csv << Merge.fix_row(rows.headers, stack[0])
        output_row_count += 1
      end
      
    end

    logger.debug { "Number of rows in the output file: #{output_row_count}"}
    logger.debug { "Number of rows merged: #{rows.length - output_row_count}"}
  end
  
end