require_relative "human"

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def damage(hp)
        if hp == 999
            @health = 0
        else
            @health -= hp
        end
        puts "HP: #{@health}"
        self
    end

    def steal(target)
        self.attack(target)
        @health += 10
        puts "HP: #{@health}"
        self
    end

    def escape
        @health -= 15
        puts "HP: #{@health}"
        self
    end
end