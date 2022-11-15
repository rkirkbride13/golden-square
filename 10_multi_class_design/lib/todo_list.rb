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
end