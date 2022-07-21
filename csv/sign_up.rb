module SessionModule

    def namevalid(name)
     if $name =~/^[a-zA-Z\-\`]++(?: [a-zA-Z\-\`]++)?$/
      return true
     end
    end

    def emailvalid(email)
      if $email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
       return true
      end
    end

    def passvalid(password)
      if $password =~/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
        return true
      end
    end

end


class SignUp

  include SessionModule

  def usersignup
     puts"Enter Username"
     $name = gets.chomp
     if namevalid($name)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter your email-id"
     $email = gets.chomp

     if emailvalid($email)
        puts "valid"
     else
        puts "invalid"
     end

     puts "Enter Password"
     $password = gets.chomp

     if passvalid($password)
        puts "valid"
     else
        puts "invalid"
     end

  end

  $sg1 = SignUp.new

end

