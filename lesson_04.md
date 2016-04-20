## Lesson 04 Homework Assignment

### Fork this [Repo](https://github.com/ROR101KG-0416/lesson-04-homework)
### Code Reading

Add a comment (a line starting with `#` ) before each line explaining what it does. Add a comment before the method name explaining, in plain english, what the method does. Try copying and pasting this into a ruby file and modifying it to help you figure it out. Try adding "puts" lines in at different places to see what happens.


```ruby

  def fizzbuzz(num)
    case
      when num % 15 == 0 then "FizzBuzz"
      when num % 3  == 0 then "Fizz"
      when num % 5  == 0 then "Buzz"
      else num
    end
  end

  def fizz_buzz_to(limit)
    1.upto(limit).each do |num|
      puts fizzbuzz(num)
    end
  end

```

### Fix Broken Code

The following code contains some errors and some coding ettiquette issues. Fix and refactor the code so that it works and is more clear.

```ruby

def area_of_triangle(b, h)
  puts b x height / 2
end

base = 7
height = 6

puts area_of_triangle(height, height)

```

### Coding

1. Create a class called "Waitlist"
  - Add an instance method called "add_party" that takes a string (representing the name of the party) as a parameter and adds the name to an array called **list**, this method should return the name of the recently added party
  -  Add an instance method called "list" that displays the **list** array of all of the parties that are currently waiting for a table in the order in which they were added (i.e. the name listed first represents the first party in the list, second represents the second party and so on...)
  - Add an instance method called "seat" that removes the first string (representing the party) from the **list** array, this method should return the name of the party that was seated
  - Make sure you create a new instance of the Waitlist class and call each method
  - Use puts to print the results of each method in the console
