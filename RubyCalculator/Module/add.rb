module AdditionModule
  class AdditionClass
    def addition_function
      puts "which numbers would you like to add?"
      puts "enter first number"
      @n1 = gets.chomp.to_i
      puts "enter second number"
      @n2 = gets.chomp.to_i
      @sum = @n1 + @n2
      puts "the sum of #{@n1} and #{@n2} is #{@sum}"
    end
  end
end
