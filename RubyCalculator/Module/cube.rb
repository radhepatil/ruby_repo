module CubeModule
  class CubeClass
    def cube_function
      puts "which numbers would you like to find cube?"
      puts "enter a number"
      @n1 = gets.chomp.to_i
      @cube = @n1*@n1*@n1
      puts "the sqaure of  #{@n1}  is #{@cube}"
    end
  end
end
