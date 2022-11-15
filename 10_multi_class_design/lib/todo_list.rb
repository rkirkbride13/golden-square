class TodoList
  def initialize
    @list = []
  end

  def add(task)
    @list << task
  end

  def list
    @list
  end

  def completed_tasks
    @list.select {|task| task.complete?}
  end

  def incompleted_tasks
    @list.reject {|task| task.complete?}
  end
end