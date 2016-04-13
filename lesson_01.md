## Lesson 01 Homework Assignment

### Fork this [Repo](https://github.com/ROR101-0416/lesson-01-homework)
### Code Reading

Add a comment (a line starting with `#` ) before each line explaining what it does. Add a comment before the method name explaining, in plain english, what the method does. Try copying and pasting this into a ruby file and modifying it to help you figure it out. Try adding "puts" lines in at different places to see what happens.

```ruby
def full_name(first_name, last_name, title)
  # Example comment line

  name = nil

  if title && first_name && last_name
    name = title + " " + first_name + " " + last_name
  elsif title && last_name
    name = title + " " + last_name
  elsif first_name && last_name
    name = first_name + " " + last_name
  elsif first_name
    name = first_name
  else
    raise "Oh no, that doesn't look like a name"
  end

  return name
end
```

### Fix Broken Code

The following code contains some errors and some coding ettiquette issues. Fix and refactor the code so that it works and is more clear.

```ruby

def full_name(f, l)
  puts f + l
end

puts full_nam("bubba", "chuck")

```

### Coding

1. Write a method called `add` that does the following:
  - takes two parameters and adds them together returning the result. For example `add(1, 2)` should return `3`. 
  - Add a line that calls your add function with two values, stores the result in a variable, and then prints the result to the screen.

2. Write a method, `join_strings` that does the following: 
  - takes two string values as parameters and joins them together with a space in between, returning the result. 
  - For example `join_strings("hello", "dolly")` should return `"hello dolly"`.

3. Write a method called 'old_enough_to_vote?' that does the following:
  - Takes a integer year as a parameter and returns a "yes" if a person born in that year is old enough to vote or returns "no" if the person is not old enough to vote


### Reading/Active Learning Assignment

- Complete RubyMonk's **Ruby Primer** interactive tutorial found [here](https://rubymonk.com/learning/books/1-ruby-primer)
- **Install Rails** - follow the instructions found [here](http://installrails.com/)
