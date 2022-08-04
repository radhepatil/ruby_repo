$LOAD_PATH << '.'
require 'add'
require 'sub'
require 'multi'
require 'divide'
require 'square'
require 'cube'
require 'sqrt'
require 'factorial'

class Welcome
  @add=AdditionModule::AdditionClass.new
  @sub=SubtractionModule::SubtractionClass.new
  @into=ProductModule::ProductClass.new
  @dev=DivisionModule::DivisionClass.new
  @square=SquareModule::SquareClass.new
  @cbrt=CubeModule::CubeClass.new
  @sqrt=SquareRootModule::SquareRootClass.new
  @fact=FactorialModule::FactorialClass.new
	def self.start
		while 1
			puts "************************************ Ruby Calculator **************************************"
      puts "**********************************press 1 for Addition*************************************"
      puts "**********************************press 2 for sutraction***********************************"
      puts "**********************************press 3 for product**************************************"
      puts "**********************************press 4 for division*************************************"
      puts "**********************************press 5 for square***************************************"
      puts "**********************************press 6 for cube*****************************************"
      puts "**********************************press 7 for squareroot***********************************"
      puts "**********************************press 8 for factorial************************************"
      puts "**********************************Please Enter your Choice*********************************"
      answer = gets.chomp.to_i
      case answer
      when 1
        @add.addition_function
      when 2
        @sub.subtract_function
      when 3
        @into.product_function
      when 4
        @dev.division_function
      when 5
        @square.sqaure_function
      when 6
        @cbrt.cube_function
      when 7
        @sqrt.square_root_function
      when 8
        @fact.factorial_function
      end
    break

  end
end
end
Welcome.start
