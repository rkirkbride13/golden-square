# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class ToDoList
  def initialize
    # initialize with an empty array called tasks
  end

  def add_task(task) # task is a string
    # No return value
    # pushes task into tasks array
  end

  def print_list
    # Throws an exception if no tasks are listed
    # Otherwise, returns a string with a list of tasks
  end

  def mark_complete(task) # task is a string
    # No return value
    # deletes task from tasks array
    # Throws an exception if completed task is not in tasks array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
my_list = ToDoList.new
my_list.add_task("Walk the dog")
my_list.print_list # => "My to do list: Walk the dog"

# 2
my_list = ToDoList.new
my_list.print_list # fails with "No task on list."

# 3
my_list = ToDoList.new
my_list.add_task("Walk the dog")
my_list.add_task("Go to the shops")
my_list.mark_complete("Walk the dog")
my_list.print_list # => "My to do list: Go to the shops"

# 4
my_list = ToDoList.new
my_list.add_task("Walk the dog")
my_list.mark_complete("Go to the shops") # fails with "This task is not on list"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->
