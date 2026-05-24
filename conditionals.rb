def above_my_means?(price,budget)
  price > budget
end
def check_if_above_my_means(price,budget)
  if above_my_means?(price,budget)
    need = price - budget
    "no puedes pagar #{price}" +
    "If you want to buy this, you must have #{need}"
  else
    leftover = budget - price
    "si puedes pagar #{price}" +
    "If you buy this, you left $ #{leftover}"
  end
end

puts check_if_above_my_means(2000, 1000)
puts check_if_above_my_means(500, 1000)

def krw_to_other(krw,other)
  if other == "cad"
    krw * 0.001
  elsif other == "mxn"
    krw * 0.013
  elsif other == "usd"
    krw * 0.0007
  else
    raise "wrong currency"
  end
end

puts krw_to_other(30_000, "mxn")
puts krw_to_other(30_000, "usd")
puts krw_to_other(30_000, "cad")
#puts krw_to_other(30_000, "leika")

def divisible?(divisor, number)
  number % divisor == 0
end

def fizz_buzz(each_number)
  if (divisible?(3,each_number) and divisible?(5,each_number)) == true
    "fizzbuzz"
  elsif (divisible?(3,each_number))
    "fizz"
  elsif (divisible?(5,each_number))
    "buzz"
  else
    "#{each_number}"

  end
end

puts fizz_buzz(3)
puts fizz_buzz(5)
puts fizz_buzz(15)
puts fizz_buzz(20)
puts fizz_buzz(31)

#Aug 22, 2025

#1부터 10까지 출력하기
for numbre in 1..10
  puts "#{numbre} 번째입니다"
end



#리스트 안의 과일들에 대해 "나는 ___ 좋아해!" 출력하기
names = ["사과", "바나나", "멜론"]

names.each do |name|
  puts "나는 #{name} 좋아해!"
end

#1부터 20까지 출력하다가 7의 배수를 만나면 멈추기

for number in 1..20
  if divisible?(7,number)
  #  break
   next
  end
  puts number
end

#"철수"를 제외하고 친구들 이름에 "안녕, ___" 출력하기

friends = ["철수" , "제이드", "은영"]
for friend in friends
  next if friend == "철수"
  puts "안녕, #{friend}"
end

#"비밀번호를 입력하세요"를 반복해서 묻고, "1234"를 입력하면 멈추기

correct_answer = "1234"
answer = ""
until answer == correct_answer
  puts "what is password?"
  answer = gets.chomp
  if answer != correct_answer
    puts "wrong password"
  end
end
