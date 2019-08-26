require_relative 'mammal'
class Human < Mammal
    puts 'I am in the human file'
    require_relative 'mammal'
end
human = Human.new