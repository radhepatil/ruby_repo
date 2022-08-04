module SquareModule
  class SquareClass
    def square_function
      puts "which numbers would you like to find square?"
      puts "enter a number"
      @n1 = gets.chomp.to_i
      @square = @n1 ** 2
      puts "the sqaure of  #{@n1}  is #{@square}"
    end
  end
end
