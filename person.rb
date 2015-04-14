# class Person
#   @@count = 0
#
#   # DONE
#   attr_reader(:first_name, :last_name, :search_name, :alternate_id, :former_name, :preferred_name, :email, :class_year)
#
#   # DONE
#   def initialize(first_name, last_name, alternate_id, former_name, preferred_name, email, class_year, guest_of)
#     @first_name = first_name
#     @last_name = last_name
#     @search_name = "#{last_name}, #{first_name}"
#     @alternate_id = alternate_id
#     @former_name = former_name
#     @preferred_name = preferred_name
#     @email = email
#     @class_year = class_year.eql?("Not an Alumnus/Alumna") ? "No Class Year" : (class_year.nil? || class_year.strip.empty? ? "No Class Year" : class_year)
#     @guest_of = guest_of
#     @guests = Array.new
#     @activities = Array.new
#   end
#
#   # DONE
#   def class_year=(new_class_year)
#     @class_year =  (new_class_year.nil? || new_class_year.strip.empty?) ? "No Class Year" : new_class_year
#   end
#
#   # DONE
#   def is_guest?
#     return @guest_of
#   end
#
#   # DONE
#   def guest_of
#     return @guest_of
#   end
#
#   # DONE
#   def add_guest(person)
#     @guests.push(person)
#   end
#
#   # DONE
#   def add_activity(activity, columns)
#     @activities.push({name: activity, columns: columns})
#   end
#
#   # DONE
#   def activities
#     @activities
#   end
#
#   # DONE
#   def attending?(activity_name)
#     activity = @activities.select { |row| row[:name].eql?(activity_name) }
#     activity.length > 0 ? activity : false
#   end
#
#   # DONE
#   def to_s
#     "|#{@last_name}|, |#{@first_name}| (#{@preferred_name}): |#{@alternate_id}|   |#{@former_name}|   |#{@email}|   class_year = |#{@class_year}|   #{@guest_of} #{@guests} #{@activities}"
#   end
# end
