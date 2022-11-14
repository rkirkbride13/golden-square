class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    @list << todo
  end

  def incomplete
    @list.select { |task| task.done? == false}
  end

  def complete
    @list.select { |task| task.done?}
  end

  def give_up!
    @list.each { |task| task.mark_done!}
  end
end