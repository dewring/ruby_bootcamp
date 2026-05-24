class VisualLayer
  attr_accessor :name, :type, :visible, :locked

  def initialize(name, type)
    @name = name
    @type = type
    @visible = true
    @locked = false  # 빈칸: 기본값은 '잠기지 않음'으로 설정하고 싶어요.
  end
end