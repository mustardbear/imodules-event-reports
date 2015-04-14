class Person
  @@count = 0
  
  def initialize(first_name, last_name, alternate_id, former_name, preferred_name, email, class_year, guest_of)
    @first_name = first_name
    @last_name = last_name
    @search_name = "#{last_name}, #{first_name}"
    @alternate_id = alternate_id
    @former_name = former_name
    @preferred_name = preferred_name
    @email = email
    @class_year = class_year.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (class_year.nil? || class_year.strip.empty? ? "No Class Year" : class_year)
    @guest_of = guest_of
    @guests = Array.new
    @activities = Array.new
  end
  
  def first_name
    @first_name
  end
  
  def last_name
    @last_name
  end
  
  def search_name
    @search_name
  end
  
  def alternate_id
    @alternate_id
  end
  
  def former_name
    @former_name
  end
  
  def preferred_name
    @preferred_name
  end
  
  def email
    @email
  end

  def class_year
    @class_year
  end
  
  def class_year=(new_class_year)
    @class_year =  (new_class_year.nil? || new_class_year.strip.empty?) ? "No Class Year" : new_class_year
  end
    
  def is_guest?
    return @guest_of
  end
  
  def guest_of
    return @guest_of
  end
  
  def add_guest(person)
    @guests.push(person)
  end

  def add_activity(activity, columns)
    @activities.push({name: activity, columns: columns})
  end
  
  def activities
    @activities
  end
  
  def attending?(activity_name)
    activity = @activities.select { |row| row[:name].eql?(activity_name) }
    activity.length > 0 ? activity : false
  end
  
  def to_s
    "|#{@last_name}|, |#{@first_name}| (#{@preferred_name}): |#{@alternate_id}|   |#{@former_name}|   |#{@email}|   class_year = |#{@class_year}|   #{@guest_of} #{@guests} #{@activities}"
  end
end
