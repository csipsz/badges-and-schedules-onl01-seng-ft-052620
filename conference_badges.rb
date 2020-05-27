def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.collect do |name|
    "Hello, my name is #{name}."
  end
end

=begin
def assign_rooms(array)
  room_count = 0 
  array.collect do |name|
    room_count += 1 
    "Hello, #{name}! You'll be assigned to room #{room_count}!"
  end 
end
=end 

def assign_rooms(array)
  result = []
  array.each_with_index do |name, index|
    result << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  result 
end

def printer(attendees)
  attendees.collect do |attendee|
    puts batch_badge_creator(attendee)
    puts assign_rooms(attendee)
  end 
end 