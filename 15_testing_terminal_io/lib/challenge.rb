class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string = @terminal.gets
    @terminal.puts "Please enter a number of repeats"
    number = get_number
    @terminal.puts "Here is your result"
    @terminal.puts "#{string * number}"
  end

  private
  def get_number
    response = @terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "This input must be a number"
  end
end
