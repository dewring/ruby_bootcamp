class Layer
  def initialize(name, type)
    @name = name
    @type = type
  end

  def info
    # 레이어의 이름과 타입을 출력합니다.
    puts "레이어 이름: #{@name} / 타입: #{@type}"
  end
end

# 1. 레이어 객체들을 배열에 담습니다.
my_layers = [
  Layer.new("배경", "Shape"),
  Layer.new("제목", "Text"),
  Layer.new("로그인 버튼", "Button")
]

# 2. 반복문을 사용하여 모든 레이어의 정보를 출력합니다.
my_layers.each do |layer|
  layer.info
end
