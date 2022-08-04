module ProductModule
  class ProductClass
    def product_function
      puts "which numbers would you like to multiply?"
      puts "enter first number"
      @n1 = gets.chomp.to_i
      puts "enter second number"
      @n2 = gets.chomp.to_i
      @multi = @n1 * @n2
      puts "the product of #{@n1} and #{@n2} is #{@multi}"
    end
  end
end
