class RockPaperScissors

  def initialize(player1,player2)
  @player1 = player1
  @player2 = player2
  @referee = {
    'rock' => {
      'rock' => 'Draw!!!',
      'paper' => 'Player 2 wins',
      'scissors' => 'Player 1 wins'
    },
    'paper' => {
      'rock' => 'Player 2 wins',
      'paper' => 'Draw!!!',
      'scissors' => 'Player 1 wins'
    },
    'scissors' => {
      'rock' => 'Player 2 wins',
      'paper' => 'Player 1 wins',
      'scissors' => 'Draw!!!'
    }
  }
  @alert = "Please enter either Rock, Paper or Scissors "
  end

  def result
    #verification
    return "Player 1 and Player 2: #{@alert}" unless @referee.has_key?(@player1) || @referee.has_key?(@player2)
    return "Player 1 #{@alert}" unless @referee.has_key?(@player1)
    return "Player 2 #{@alert}" unless @referee.has_key?(@player2)
    #result
    return "Result: #{@referee[@player1][@player2]} "
  end
end
