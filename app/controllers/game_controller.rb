class GameController < ApplicationController
  #exception to capital letters (first letter of class must be capital letter)
  def user_plays_rock
    @user_move = "rock"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @result = "You tied!"
    else
      if @computer_move == "scissors"
        @result = "You won!"
      else
        @result = "You lost!"
      end
    end
    render("game/play_anything.html.erb")
  end


  def user_plays_paper
    @user_move = "paper"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "paper"
      @result = "You tied!"
    else
      if @computer_move == "rock"
        @result = "You won!"
      else
        @result = "You lost!"
      end
    end
    render("game/play_anything.html.erb")
  end

  def user_plays_scissors
    @user_move = "scissors"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "scissors"
      @result = "You tied!"
    else
      if @computer_move == "paper"
        @result = "You won!"
      else
        @result = "You lost!"
      end
    end
    render("game/play_anything.html.erb")
  end
end
