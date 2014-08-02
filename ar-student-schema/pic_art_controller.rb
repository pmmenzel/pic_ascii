require_relative 'app/models/pics'



  # @mule_deer = ["Antonio," "Pat", "Nina", "Ian", "Frank", "Cassidy", "Alex", "Yen", "Johan", "Jessica", "Erick", "Vlad", "Tommy", "Gunnari", "Evan", "Dani", "Mathew", "Ori", "Pat_Lauer", "Whitney", "Katia", "Zen", "Premila", "Brooks", "Melissa"]
@mule_deer = ["Antonio"]

def print_instructions
  system "clear"
  space(10)
  puts @dbc
  space(10)
  puts @person_a
  space(5)
  puts @person_b
end

def space(size)
  puts "\n" * size
end

def get_input
  @input = gets.chomp
end

def rand_person(cohort_array)
  cohort_array.sample
end

def select_person
  20.times do
      system "clear"
      puts "\n" * 15
      puts Picture.find_by_name(rand_person(@mule_deer)).picture[3311...16559]
      sleep 0.1
  end
end

# mule_deer = Picture.all

# p mule_deer.first

print_instructions
get_input

while @input != "exit"

  case @input
  when "instructions"
    print_instructions
  when ""
    select_person
  end

  get_input
end



