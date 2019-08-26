class Project
    # your code here
    def initialize(name, description)
        @name = name
        @description = description
    end
    def name
        @name
    end
    def elevator_pitch
        puts "#{@description}, #{@name}"
    end
end
