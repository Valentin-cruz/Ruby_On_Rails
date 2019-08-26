class Character
    @name
    @taunt
    attr_accessor:name

    def initialize(name)
        @name = name
    end

    def attack(obj)
        puts self.taunt + obj name
    end
end

class Ninja < Character
    def initialize(name,taunt)
        super(name)
        self.taunt = taunt
    end
    def attack
        taunt = puts "...."
        super
    end
end

class Zombie < Character
    def initialize(name,taunt)
        super(name)
        self.taunt = taunt
    end
    def attack
        taunt = puts "brains"
        super
    end
end


class Pirate < Character
    def initialize(name,taunt)
        super(name)
        self.taunt = taunt
    end
    def attack
        taunt = puts "argh"
        super
    end
end
