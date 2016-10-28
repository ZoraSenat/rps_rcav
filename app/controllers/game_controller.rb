class GameController < ApplicationController
  #exception to capital letters (first letter of class must be capital letter)

  def user_plays_anything
    @user_move = params["move"]

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == @user_move
      @result = "You tied!"
    else
      if ((@computer_move == "scissors" && @user_move == "rock") ||
        (@computer_move == "paper" && @user_move == "scissors") ||
        (@computer_move == "rock" && @user_move == "paper"))
        @result = "You won!"
      else
        @result = "You lost!"
      end
    end
    render("game/play_anything.html.erb")
  end

end
