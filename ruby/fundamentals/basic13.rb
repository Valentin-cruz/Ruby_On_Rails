# print numbers 1-255
# (1..255).each { |n| puts n }

# print odds 1-255
# 257.times do |i|
#     next if i % 2 == 0
#     puts i
# end

# print sum
# def sum(num)
#     sum = 0
#     for num in 0..num do
#         puts sum = num + sum
#         num +=1
#     end
#     return sum
# end
# sum(255)

# iterate through array
# a = [1,2,3,4,5,6,7]
# a.each{|x| puts x}

# find max
# a = [1,2,3,4,5,6,7]
# puts a.index(a.max)

# get avarage
# def sum(num)
#     sum = 0
#     for num in 0..num do
#         sum = num + sum
#         num +=1
#     end
#     return puts (sum/num)
# end
# sum(20)

# array with odd numbers
# array.length do |i|
#     next if i % 2 == 0
#     puts i
# end

# greater than y
# def greaterY(arr,y)
#     for i in 0...arr.size
#         if i > y
#             puts i
#         end
#     end
#     return arr
# end

# square the values
# def square_array(array)
#     arr = []
#     array.each { |i| arr << i ** 2 }
#     arr
# end

# my_arr = [1, 2]
# p square_array(my_arr)

# eliminate negative values
# def absolute(array)
#     arr = []
#     array.each { |i| arr << (i.abs) }
#     arr
# end

# my_arr = [1, 2,-3]
# p absolute(my_arr)

# max,min,average
# a=[1,2,3,4,5,6,7,8,9,10]
# puts a.max
# puts a.min
# puts a.max/a.size

# shifting values in array
# a=[1,2,3,4,5,6,7,8,9,10]
# a.shift
# puts a

# numbers to string
def num_str arr
    arr.map! {|i|
        if i < 0
            i = 'Dojo'
        else
            i = i
        end
        }
    puts arr
end
my_arr=[-1,-3,2]
num_str(my_arr)