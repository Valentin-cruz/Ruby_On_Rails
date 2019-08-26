a = ["john", "bob", "carl", "kelly", "tim", "jim"]
b = [9,3,6,1,7,4,8,0,2]

# %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

#return the first value or 0th value of the array
# puts a[0]
# puts b[0]

# using .class
    #Array

# using .at
    # puts a.at(2)
    #carl

# using .shuffle
    # puts a.shuffle.join("-")
    # jim
    # john
    # kelly
    # tim
    # carl
    # bob

# using .delete
    # a.delete("jim")
    # puts a
    # john
    # kelly
    # tim
    # carl
    # bob

# using .push
    # b.push(1,2,3)
    # puts b
    # 9
    # 3
    # 6
    # 1
    # 7
    # 4
    # 8
    # 0
    # 2
    # 1
    # 2
    # 3

# using .pop
    # a.pop
    # a.pop(2)
    # puts a
    # john
    # bob
    # carl
# using .length
#     puts ("The length is #(a.length)")
#     # The length is 6

# using .join
#     puts a.shuffle.join("-")
#     # bob-kelly-john-tim-jim-carl

# using .reverse
    # puts a.reverse
    # jim
    # tim
    # kelly
    # carl
    # bob
    # john

# using .insert
    # a.insert(-2,"billy")
    # puts a
    # john
    # bob
    # carl
    # kelly
    # tim
    # billy
jim