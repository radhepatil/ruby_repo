module FactorialModule
  class FactorialClass
    def factorial_function
      puts "which numbers would you like to find square?"
      puts "enter a number"
      @n1 = gets.chomp.to_i
      @factorial = 1
      while (@n1 > 0)
        @factorial = @factorial * @n1
        @n1 -= 1
      end
    puts "the factorial is #{@factorial}"
    end
  end
end
