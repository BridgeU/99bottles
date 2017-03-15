require 'pry'

class Bottles

  def verse(num)
    # binding.pry


    <<~HEREDOC
      #{num_bottles(num)} of beer on the wall, #{num_bottles(num)} of beer.
      Take #{article(num)} down and pass it around, #{num_bottles(num-1)} of beer on the wall.
    HEREDOC
  end

  private

  def article(num)
    num == 1? "it" : "one"
  end

  def num_bottles(num)
    if num == 1
      "1 bottle"
    elsif num == 0
      "no more bottles"
    else
      "#{num} bottles"
    end
  end
end