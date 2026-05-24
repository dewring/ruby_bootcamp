#Even or Odd Printer
class EvenOrOdd
  def divisible?(divisor, number)
  number % divisor == 0
  end
  def run(numbers)
    for number in numbers
      if divisible?(2, number)
       puts "even"
      elsif divisible?(1, number)
       puts "odd"
      end
    end
  end
end
EvenOrOdd.new.run([1, 2, 3, 4, 5, 127])

#Password Prompt
class PasswordPrompt2
  def ask
    # put nothing in container for answer
    answer = ""
    # put "letmein" in container for password
    password = "letmein"
    # until the content of container password
    # is the same as container answer
    until password == answer
      # ask !!!
      puts "what is password?"
      # read the answer from the terminal
      answer = gets.chomp
      # check if password is different than answer
      if password != answer
        # if different then say "wrong password"
        puts "wrong password"
      end
    end
  end
end
# PasswordPrompt2.new.ask

#Password Prompt
class PasswordPrompt
  def ask
    ask = ""
    wrong_ask = "letmein"
    until ask == wrong_ask
      puts "what is password?"
      ask = gets.chomp
      if ask != wrong_ask
        puts "wrong password"
      end
    end
  end
end
# PasswordPrompt.new.ask

#Food Liker_next if
class FoodLiker
  def say(foodlikers)
    for foodliker in foodlikers
      if foodliker == "broccoli"
        puts "Ugh, not broccoli"
        next
      end
      puts "I love to eat #{foodliker}!"
    end

    
  end
end
FoodLiker.new.say(["pizza", "broccoli", "dumplings", "mandu"])

#Food Liker_ifelse
class FoodLiker
  def say(foodlikers)
    for foodliker in foodlikers
      next if foodliker == "broccoli"
      #if foodliker == "broccoli"
      #  next
      #end
      puts "I love to eat #{foodliker}!"
    end
  end
end
FoodLiker.new.say(["pizza", "broccoli", "dumplings"])

#Name Skipper
class NameSkipper
  def greet(skips)
    for skip in skips
      if skip == "Chad"
        next
      elsif skip == "Mom"
        puts "Hi, Mom!"
        next
      end
      puts "Hello, #{skip}"
    end
  end
end
NameSkipper.new.greet(["Chad", "Robin", "Mom"])

#Stop at Negative
class Stopper
  def print_until_negative(prints)
    for print in prints
      if print < 0
        break
      elsif print == 0
        puts "Zero"
        next
      elsif print > 0
        puts print
      end
    end
  end
end
Stopper.new.print_until_negative([3, 0, 8, -1, 10])

#Greeter
class Greeter
  def hello(greeting)
      if greeting == "Jade"
        puts "Hello, Bestie"
      elsif greeting == "Kelvin"
        puts "My little slave"
      else
        puts "Hello, #{greeting}" 
      end
  end
end
Greeter.new.hello("Robin")
Greeter.new.hello("Jade")
Greeter.new.hello("Kelvin")

#Number Categorizer
class Categorizer
  def describe(cates)
    for cate in cates
      if cate < 0
        puts "Negative number"
        next
      elsif cate == 0
        puts "Zero"
        next
      elsif cate > 0 and cate < 11
        puts "Small number"
        #next
      else
      puts "Large number"
      end
    end
  end
end
Categorizer.new.describe([0, 3, 10, 25, -2])

#Multiplication Table
class TablePrinter
  def print(no)
    if no <= 0
      puts "Invalid input"
      return
    end 
    (1..10).each do |range|
      puts "#{no} x #{range} = #{range * no}"
    end
    # if it is at here, too late
    # if no <= 0
    #   puts "Invalid input"
    #   return
    # end 
  end
end
TablePrinter.new.print(3)
TablePrinter.new.print(7)
TablePrinter.new.print(0)
TablePrinter.new.print(-3)