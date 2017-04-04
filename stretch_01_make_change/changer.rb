class Changer

  @@coins = [25, 10, 5, 1]

  # def initialize
  #   []
  # end

  def self.make_change(amount)
    change = []
    @@coins.each do |coin|
      while amount >= coin
        amount -= coin
        change << coin
      end
    end
    change
  end

end
