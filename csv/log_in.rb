require 'csv'

module LoginModule
  class EmployLogIn
    def in_time()
       punch_in = Time.new
       $t1 = punch_in.strftime("%H:%M:%S")
    end
    def out_time()
      punch_out = Time.new
      $t2 = punch_out.strftime("%H:%M:%S")
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

     puts"enter username"
     $uname = gets.chomp

     puts "enter password"
     $pwd = gets.chomp
   end

   def userlogintime
      emplog = EmployLogIn.new
      case emplog
      when:in_time.to_proc
      puts "you are log in at #{$t1}"
      end
   end
      $lg1 = LogIn.new
      $li = LogIn.new
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

class Function
 include LoginModule
  def log_in

     CSV.foreach('text.csv', 'a+') do |csv|

       if $name == $uname && $password == $pwd
         puts "succesfully login"
       else
         puts "invalid credentials."
       end

     end
  end
     $m1 = Function.new
end
