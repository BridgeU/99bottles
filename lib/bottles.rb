require 'pry'

class Bottles

  def verse(num)
    # binding.pry


    <<~HEREDOC
      #{num_bottles(num)} of beer on the wall, #{num_bottles(num)} of beer.
      Take one down and pass it around, #{num_bottles(num-1)} of beer on the wall.
    HEREDOC
  end

  private

  def num_bottles(num)
    num == 1? "1 bottle" : "#{num} bottles"
  end

end