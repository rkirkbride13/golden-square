class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    @list << todo
  end

  def incomplete
    @list.reject(&:done?)
  end

  def complete
    @list.select(&:done?)
  end

  def give_up!
    @list.each(&:mark_done!)
  end
end