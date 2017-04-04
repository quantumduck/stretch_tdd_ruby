class Game

  def score(scores)
    frame = 0
    strike = 10
    spare = 10
    prev_rolls = [0, 0]
    total = 0
    scores.each do |roll|
      total += roll
      prev_rolls[1] = prev_rolls[0]
      prev_rolls[0] = roll
    end
    total
  end

  
end
