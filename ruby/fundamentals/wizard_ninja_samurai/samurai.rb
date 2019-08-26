require_relative "human"
require_relative "wizard"
require_relative "ninja"

class Samurai < Human
    @@samurai_num = 0
    def initialize
        super
        @health = 200
        @@samurai_num +=1
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
    def death_blow(target)
        target.damage(999)
        self
    end
    def meditate
        @health = 200
        puts "HP: #{@health}"
        self
    end
    def how_many
        puts "Samurai: #{@samurai_num}"
    end
end