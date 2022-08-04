module DivisionModule
  class DivisionClass
    def division_function
      puts "which numbers would you like to divide?"
      puts "enter first number"
      @n1 = gets.chomp.to_i
      puts "enter second number"
      @n2 = gets.chomp.to_i
      if @n2 == 0
        puts "you can't divide by zero!"
        division_function
      else
        @devide = @n1 / @n2
      end
      puts "the reminder of #{@n1} and #{@n2} is #{@devide}"
    end
  end
end
