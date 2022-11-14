class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
    @task
  end

  def mark_done!
    @task = "Done"
  end

  def done?
    @task == "Done" ? true : false
  end
end