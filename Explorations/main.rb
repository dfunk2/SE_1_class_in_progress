# Name Mangler

# Reversing name
def reverse_name(name)
  split_name_first_last = name.split
  reversed_first_last = split_name_first_last.reverse
  name = reversed_first_last.join(' ')
  return name
end
#Add Borge to name
def borg(name)
  name << " Borg"
  return name
end


puts "Reversed name: #{reverse_name("Johanna Jackson")}"
puts "New Borg name: #{borg("Johanna Jackson")}"