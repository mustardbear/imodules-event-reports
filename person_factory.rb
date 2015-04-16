module PersonFactory
  
  # They say if you need comments they your code isn't very self-documenting.
  # Maybe they are right. But this is pretty complex so I'm going to comment
  # the heck out of this.

  # PersonStruct is a class factory - it creates a Person class based on the
  # structure definied in the configuration file. The parameter is an array
  # of attribute names. 
  
  # The configuration must include a first_name, last_name, and class_year
  
  def PersonFactory.PersonStruct(*keys)
    Class.new do
      
      # create an attribute reader for each attribute along with a few attributes that
      # are needed for all people
      attr_reader *keys
      attr_reader :guests, :activities, :search_name
      attr_writer :class_year
    
      # define the intialize method - most of the time we are just setting attributes
      # to the value from the csv file but it is possible to pass a custom proc
      # to clean up values
      def initialize(hash)
        
        hash.each do |key,value|
          # if this attribute has a custom setter, use that otherwise set to the value
          if PERSON_DEFINITION[key][:setter]
            instance_variable_set("@#{key}", PERSON_DEFINITION[key][:setter].call(value))
          else
            instance_variable_set("@#{key}", value)
          end
        end

        # We're going to keep a list of all this persons guests and activities
        @guests = Array.new
        @activities = Array.new
        
        # NOTE: last_name and first_name attributes must be defined in the configuration file
        # The search name is formatted the same way as the guest of column that iModules spits
        # out
        @search_name = "#{@last_name}, #{@first_name}"
        
      end
    
      # Most instance variables are only set through the initialization process but for those
      # with a custom setter we also create a custom setter method that can be called as needed
      PERSON_DEFINITION.keys.each do |key|
        if PERSON_DEFINITION[key][:setter]
          define_method("#{key}=") { |value| instance_variable_set("@#{key}", PERSON_DEFINITION[key][:setter].call(value)) }
        end
      end
    
      # Adding a guest is pretty straightforward
      def add_guest(person)
        @guests.push(person)
      end
    
      # Sometimes we want to know if this person is the guest of someone else
      def is_guest?
        return @guest_of
      end

      # Adding an activity is pretty straightforward
      def add_activity(activity, columns)
        @activities.push({name: activity, columns: columns})
      end
  
      # It's important to know if this person is attending a given activity
      def attending?(activity_name)
        activity = @activities.select { |row| row[:name].eql?(activity_name) }
        activity.length > 0 ? activity : false
      end
    
      # Finally a useful debugging tool - a custom to_s method
      def to_s
        out = ""
        PERSON_DEFINITION.keys.each do |key|
          instance_variable_name = "@#{key}"
            out << "#{key}: |#{instance_variable_get(instance_variable_name)}| "
        end
        out << "search_name: |#{@search_name}|"
        out
      end 
    end
  end
  
end