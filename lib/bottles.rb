class Bottles
  def verse(number)
    next_number = number - 1

    <<-VERSE
#{number_of_bottles(number)} of beer on the wall, #{number_of_bottles(number)} of beer.
Take one down and pass it around, #{number_of_bottles(next_number)} of beer on the wall.
VERSE
  end

  def number_of_bottles(number)
    if number == 1
      bottle_name = "bottle"
    else
      bottle_name = "bottles"
    end
    "#{number} #{bottle_name}"
  end

end
