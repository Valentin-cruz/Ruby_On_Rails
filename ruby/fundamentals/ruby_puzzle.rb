# def puzzle_1
#     a = [3,5,1,2,7,9,8,13,25,32]
#     sum = 0
#     a.each do |i|
#         sum += i
#     end
#     puts sum
#     puts a.find_all {|i| i > 10}
# end
# puts puzzle_1

# def puzzle_2
#     a = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
#     b = []
#     a.shuffle.each do |i|
#         if i.length > 5
#             b.push(i)
#         end
#         puts i
#     end
#     puts '---------'
#     puts b
# end
# puts puzzle_2

# def puzzle_3
#     a=('a'..'z').to_a
#     b = a.shuffle
#     puts a.last
#     if ['a','e','i','o','u','y'].include?(b.first)
#         puts 'Vowel'
#     end
#     puts a.first
# end
# puzzle_3

# def puzzle_4
#     a = []
#     (1..10).each do |i|
#         a.push(rand(55..100).floor)
#     end
#     puts a
# end
# puzzle_4

# def puzzle_5
#     a = []
#     (1..10).each do |i|
#         a.push(rand(55..100).floor)
#     end
#     puts a.sort
#     puts '---------'
#     puts a.min
#     puts a.max
# end
# puzzle_5

# def puzzle_6
    # a=('a'..'z').to_a
    # b = a.shuffle.slice(21, 5).join
    # puts b
# puts (65+rand(26)).chr*5
def puzzle_7
    (1..10).each do |i|
        puts (1..5).map { (65 + rand(26)).chr }.join
    end
end
puzzle_7
