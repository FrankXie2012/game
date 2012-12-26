class Game
  def initialize(player,computer)
    @player = player
    @computer = computer
  end

  def compare
    result = ""
    case @player
      when "scissors"
        if @computer == "rock"
          result = "You lose"
        elsif @computer == "paper"
          result = "You win"
        else
          result = "No winner"
        end
      when "rock"
        if @computer == "paper"
          result = "You lose"
        elsif @computer == "scissors"
          result = "You win"
        else
          result = "No winner"
        end
      when "paper"
         if @computer == "scissors"
          result = "You lose"
        elsif @computer == "rock"
          result = "You win"
        else
          result = "No winner"
        end
      end
    result
  end
end