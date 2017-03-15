require 'pry'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, last)
    verse_indices = (last..start).to_a.reverse

    verse_indices.map do |num|
      verse(num)
    end.join("\n")
  end

  def verse(num)
    <<~HEREDOC
      #{first_line(num)}
      #{second_line(num)}
    HEREDOC
  end

  private

  def first_line(num)
    "#{num_bottles(num)} of beer on the wall, #{num_bottles(num)} of beer.".capitalize
  end

  def second_line(num)
    if num == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{article(num)} down and pass it around, #{num_bottles(num-1)} of beer on the wall."
    end
  end

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