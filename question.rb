# Generates random Questions and answer correctness

class Question 
  def initialize(player)
    # generates random number
    @num1 = rand(1...20)
    @num2 =rand(1..20)
    puts "#{player}: What does  #{@num1} and #{@num2} equal to?"
  end
  def check_answer_correctness
   answer = gets.chomp.to_i
   if (answer == @num1 +@num2)
    puts "YES! You are Correct"
    return  true
   end
    puts "Seriously?  No !"
    return false
  end
end 
