class Todo
  def initialize(task)
    @task = task
    @complete = false
  end

  def task
    @task
  end

  def mark_complete
    @complete = true
  end

  def complete?
    @complete
  end

end