require_relative 'mammal'

class Lion < Mammal
    def fly
        @health -= 10
        self
    end
    def attack_town
        @health -= 50
        self
    end
    def eat_humans
        @health += 20
        self
    end
    def display_health
        puts "#{@health}"
        puts "this is a lion!"
    end
end

lion1 = Lion.new()
lion1.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
