def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
  messages = []
  arr.each do |name|
    messages << badge_maker(name)
  end
  return messages
end

def assign_rooms(speakers)
  room_mesg = []
  speakers.each_with_index do |name, idx|
    roomnum = idx + 1
    room_mesg.push("Hello, #{name}! You'll be assigned to room #{roomnum}!")
  end
  return room_mesg
end
def printer(arr)
  badges = batch_badge_creator(arr)
  badges.each do |badge|
    puts badge
  end
  assigns = assign_rooms(arr)
  assigns.each do |mesg|
    puts mesg
  end
end
