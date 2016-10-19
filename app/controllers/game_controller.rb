class GameController < ApplicationController
  #exception to capital letters (first letter of class must be capital letter)
  def user_plays_rock

    moves = ["rock","paper","scissors"]

    @computer_move = moves.sample
    #use @-symbol to change variable from local variable to instance variable
    if @computer_move = "rock"
      @result = "You tied!"
    else
      if @computer_move == "scissors"
        @result = "You win!"
      else
        @result = "You lose!"
      end
    end
    render("game/play_rock.html.erb")
  end

  def user_plays_paper

    moves = ["rock","paper","scissors"]

    @computer_move = moves.sample
    #use @-symbol to change variable from local variable to instance variable
    if @computer_move = "paper"
      @result = "You tied!"
    else
      if @computer_move == "rock"
        @result = "You win!"
      else
        @result = "You lose!"
      end
    end
    render("game/play_paper.html.erb")
  end

  def user_plays_scissors

    moves = ["rock","paper","scissors"]

    @computer_move = moves.sample
    #use @-symbol to change variable from local variable to instance variable
    if @computer_move = "scissors"
      @result = "You tied!"
    else
      if @computer_move == "paper"
        @result = "You win!"
      else
        @result = "You lose!"
      end
    end
    render("game/play_scissors.html.erb")
  end
end
