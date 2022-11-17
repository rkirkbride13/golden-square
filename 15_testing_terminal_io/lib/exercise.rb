class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers." 
    @terminal.puts "Please enter a number"
    input_1 = get_number
    @terminal.puts "Please enter another number"
    input_2 = get_number
    @terminal.puts "Here is your result:"
    @terminal.puts "#{input_1} - #{input_2} = #{input_1 - input_2}"
  end

  private

  def get_number
    response = @terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "Input must be a number!"
  end

end