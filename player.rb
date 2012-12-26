class Computer
  attr_accessor :choice
  def initialize
    @choice = ["scissors","rock","paper"].sample
  end
end