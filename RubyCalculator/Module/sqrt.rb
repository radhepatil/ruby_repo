module SquareRootModule
  class SquareRootClass
    def square_root_function
      puts "which numbers would you like to find squareroot?"
      puts "enter a number"
      @n1 = gets.chomp.to_i
      @square_root = Math.sqrt(@n1).round()
      puts "the sqaureroot of  #{@n1}  is #{@square_root}"
    end
  end
end
