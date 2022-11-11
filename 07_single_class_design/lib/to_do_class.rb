class ToDoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks.push(task)
  end

  def print_list
    fail "No tasks on the list" if @tasks.empty?
    "My to do list: #{@tasks.join(", ")}"
  end

  def mark_complete(task)
    fail "This task is not on list" unless @tasks.include?(task)
    @tasks -= [task]
  end
end