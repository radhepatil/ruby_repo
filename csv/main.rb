$LOAD_PATH << '.'
require 'sign_up'
require 'log_in'
require 'csv'
require 'time'
require "byebug"
while 1
  puts "* Welcome to Shriffle technologies *"
  puts "press 1 for Sign up"
  puts "press 2 for login"
  puts "press 3 for logout"
  puts "please enter your choice"
  $answer = gets.chomp.to_i
  case $answer

   when 1
    $sg1.usersignup
   when 2
    $li.userlogin
    $m1.log_in
    $lg1.userlogintime
   when 3
    $lg2.userlogouttime

    $ph = (Time.parse($t2) - Time.parse($t1))
    $productive_hours = Time.at($ph).utc.strftime("%H:%M:%S")
    puts "thanks, your productive hours: #{$productive_hours}"
    break
  end
end

CSV.open('test.csv',"a+")do |csv|
  csv << ["username","email","password","punch_in","punch_out","productive_hours"] if csv.count < 1
  csv << ["#{$name}", "#{$email}", "#{$password}" ,"#{$t1}", "#{$t2}", "#{$productive_hours}"]
end


