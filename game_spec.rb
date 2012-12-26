require "./game"

describe Game do
  it "compare the inputs of computer and player" do
    input1 = "scissors"
    input2 = "rock"
    input3 = "paper"

    game = Game.new(input1, input2)
    game.compare.should eq("You lose")

    game = Game.new(input1, input3)
    game.compare.should eq("You win")

    game = Game.new(input2, input3)
    game.compare.should eq("You lose")

    game = Game.new(input2, input1)
    game.compare.should eq("You win")

    game = Game.new(input3, input1)
    game.compare.should eq("You lose")

    game = Game.new(input3, input2)
    game.compare.should eq("You win")

    game = Game.new(input1, input1)
    game.compare.should eq("No winner")

    game = Game.new(input2, input2)
    game.compare.should eq("No winner")

    game = Game.new(input3, input3)
    game.compare.should eq("No winner")
  end
end