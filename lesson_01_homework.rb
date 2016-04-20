## Lesson 01 Homework Assignment

### Code Reading

# Add a comment (a line starting with `#` ) before each line explaining what it does. 
# Add a comment before the method name explaining, in plain english, what the method does. 
# Try copying and pasting this into a ruby file and modifying it to help you figure it out. 
# Try adding "puts" lines in at different places to see what happens.


# ```ruby
# defining a method (with 3 parameters): first name, last name, and title using string interpolation
def full_name(first_name, last_name, title)

# name starts out with no value
  name = nil

# if we have parameters title and first_name and last_name
  if title && first_name && last_name
# pass values/variables that are assigned for these parameters
# variable for title is "Mr.", variable for first_name is "Simon", variable for last_name is "Fuzzyface"
# then name = Mr. Simon Fuzzyface
    name = title + " " + first_name + " " + last_name

# unless the parameters passed are for title and last_name
# then name = Mr. Fuzzyface
  elsif title && last_name
    name = title + " " + last_name

# unless the parameters passed are for first_name and last_name
# then name = Simon Fuzzyface
  elsif first_name && last_name
    name = first_name + " " + last_name

# unless the parameters passed are for first_name
# then name = Simon
  elsif first_name
    name = first_name

# unless first_name or last_name are not passed
# raise is used as default for when the necessary variables are not passed, 
# so we get "Oh no, that doesn't look like a name"
  else
    raise "Oh no, that doesn't look like a name"
  end
# the method has put the values into the appropriate variables
  return name
end

puts full_name("Simon", "Fuzzyface", "Mr.")
puts full_name("Mr.", "Fuzzyface", "")
puts full_name("Simon", "Fuzzyface", "")
puts full_name("Simon", "", "")


# ```

# ### Fix Broken Code

# The following code contains some errors and some coding ettiquette issues. 
# Fix and refactor the code so that it works and is more clear.

# ```ruby

# This is the original

# def full_name(f, l)
#   puts f + l
# end
# puts full_nam("bubba", "chuck")


# This is the correction

# define method full_name (with 2 parameters)
# change (f, l) to (first_name, last_name)
# not technically an error but should have variables that make sense
def full_name(first_name, last_name)
# set name to nil
    name = nil
# code in where names are passed
# puts should go after end
    name = first_name + " " + last_name
end

# typo: missing e on full_name
# names were in wrong order...should be "chuck", "bubba"
puts full_name("chuck", "bubba")


# ```

# ### Coding

# 1. Write a method called `add` that does the following:
#   - takes two parameters and adds them together returning the result. 
#   For example `add(1, 2)` should return `3`. 
#   - Add a line that calls your add function with two values, stores the 
#   result in a variable, and then prints the result to the screen.

# define method add that has 2 parameters
def add(num1, num2)
# add parameters num1 and num2
  num1 + num2
end
# pass value to parameter 1 (num1 = 5), pass value to parameter 2 (num2 = 7), print the added values of num1 and num2 and print
puts add(5, 7)
 
# define method add that has 2 parameters
def add(num1, num2)
# add parameters num1 and num2 and store the value in variable sum
  sum = num1 + num2
# print the value of sum
  puts sum
end


# 2. Write a method, `join_strings` that does the following: 
#   - takes two string values as parameters and joins them together with a space in between, 
    # returning the result. 
#   - For example `join_strings("hello", "dolly")` should return `"hello dolly"`.

# define method that concatenates 2 strings ("Ziggy" and "Bigcat")
def join_strings(firstName='Ziggy', lastName='Bigcat')
# concatenate of variable firstName and variable lastName 
# with a space band after firstName (before the curly brace)
  "#{firstName } #{lastName}"
end
# print the concatenated strings
puts join_strings


# 3. Write a method called 'old_enough_to_vote?' that does the following:
#   - Takes a integer year as a parameter and returns a "yes" if a person born in that year 
#     is old enough to vote or returns "no" if the person is not old enough to vote

# define method using conditionals around a person's age, based on value in variable year
def oldEnough (year)
# condition: if year is less than or equal to 1998
  if year <= 1998
# person is old enough to vote, 
# print out 'You are allowed to vote'
    puts 'You are allowed to vote'
# otherwise
  else
# if year is NOT less than or equal to 1998
# person is NOT old enough to vote, 
# print out 'You are to young to vote :('
    puts 'You are too young to vote :('
# end conditional
  end
# end method
end
# run method with birth year 2001
puts oldEnough(2001)

