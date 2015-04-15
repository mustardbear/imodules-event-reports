# For parsing command line arguments
class Arguments
  def self.parse(args)
    options = OpenStruct.new
    options.event = ""
  
    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: ruby process.rb [options] (i.e. ruby process.rb -e r15)"
      opts.separator ""
      opts.separator "Specific options:"
  
      opts.on("-e", "--event EVENT",
        "Require the EVENT before processing the report") do |event|
        options.event << event
      end
    end
    
    opt_parser.parse!(args)
    options
  
  end
end
