require 'csv'

module LoginModule
  class EmployLogIn
    def in_time()
       punch_in = Time.new
       $t1 = punch_in.strftime("%H:%M:%S:%p")
    end
    def out_time()
      punch_out = Time.new
      $t2 = punch_out.strftime("%H:%M:%S:%p")
    end

  end
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

class LogIn
   include LoginModule

   def userlogin

     puts"Enter Username"
     $uname = gets.chomp

     puts "Enter Password"
     $pwd = gets.chomp
   end

   def userlogintime
      emplog = EmployLogIn.new
      case emplog
      when:in_time.to_proc
      puts "you are log in at #{$t1}"
      end
   end
   def log_in

     CSV.foreach('text.csv', 'r') do |row|

       if $name == $uname && $password == $pwd
         puts "succesfully login"
       else
         puts "invalid credentials."
       end

     end
  end
      $lg1 = LogIn.new
      $li = LogIn.new
      $m1 = LogIn.new
end

class LogOut
   include LoginModule
   def userlogouttime
      emplog2 = EmployLogIn.new
      case emplog2
      when:out_time.to_proc
      puts "you are log out at #{$t2}"
      end
   end
   $lg2=LogOut.new

end

