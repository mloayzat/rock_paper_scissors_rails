class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    @computer_move = ["rock", "paper", "scissors"].sample 

    
    if @user_move == @computer_move 
     @result = "It's a tie!"
        elsif @user_move == "rock" && @computer_move == "paper" || @user_move == "scissors" && @computer_move == "rock" || @user_move == "paper" && @computer_move == "scissors" 
    @result = "lose!"
        elsif @user_move == "scissors" && @computer_move == "paper" || @user_move == "paper" && @computer_move == "rock"  || @user_move == "rock" && @computer_move == "scissors" 
    @result = "win!"

        else @result = "are not smart, that doesn't seem to be a valid move, what were you thinking, it was supposed to be a simple game."

end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
