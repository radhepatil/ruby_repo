module SubtractionModule
  class SubtractionClass
    def subtract_function
      puts "which numbers would you like to subtract?"
      puts "enter first number"
      @n1 = gets.chomp.to_i
      puts "enter second number"
      @n2 = gets.chomp.to_i
      @sub = @n1 - @n2
      puts "the difference between #{@n1} and #{@n2} is #{@sub}"
    end
  end
end
