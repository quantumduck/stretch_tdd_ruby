class Game

  def score(scores)
    frame = 1
    newframe = true
    rolls = []
    total = 0
    scores.each do |roll|
      total += roll
      if (rolls[-2] == :strike)
        total += roll
      end
      if ((rolls[-1] == :spare) || (rolls[-1] == :strike))
        total += roll
      end
      if newframe
        if (roll == 10)
          if (frame <= 9)
            rolls << :strike
          else
            rolls << roll
          end
          frame += 1
        else
          rolls << roll
          newframe = false
        end
      else
        if (roll + rolls[-1] == 10)
          if (frame <= 9)
            rolls << :spare
          else
            rolls << roll
          end
        else
          rolls << roll
        end
        newframe = true
        frame += 1
      end
    end
    total
  end

end
