# class Fixnum
#     def who_am_i
#         puts self
#     end
# end
# class String
#     def who_am_i
#         puts self
#     end
# end
# 4.who_am_i # => 4
# 15.who_am_i # => 15
# "string".who_am_i # => "string"
# "hello_world".who_am_i # => "hello_world"

# class Mammal
#     def initialize
#         puts "I am alive"
#         self
#     end
#     def breath  
#         puts "Inhale and exhale"
#         self
#     end
    
#     def who_am_i
#         puts self
#         self
#     end
# end
# my_mammal = Mammal.new.who_am_i.breath

class MathDojo

    def initialize
        @result = 0
        self
    end
    def add(*obj)
        sum = 0
        obj.flatten.each do |i|
            sum += i
        end
        @result += sum
        self
    end
    def subtract(*obj)
        min = 0
        obj.flatten.each do |i|
            min -= i
        end
        @result += min
        self
    end
    def result
        puts @result
    end

end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15