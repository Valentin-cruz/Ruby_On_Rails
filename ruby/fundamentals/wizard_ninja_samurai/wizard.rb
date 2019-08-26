require_relative "human"

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def damage(hp)
        if hp == 999
            @health = 0
        else
            @health -= hp
        end
        puts "HP: #{@health}"
    end
    
    def heal(hp)
        @health += 10
        puts "HP: #{@health}"
        self
    end

    def fireball(target)
        target.health -=20
        self
    end
end