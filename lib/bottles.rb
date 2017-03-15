class Bottles
  def verse(number)
    next_number = number - 1
    number_of_bottles = number_of_bottles(number)
    next_number_of_bottles = number_of_bottles(number - 1)
    <<-VERSE
#{number_of_bottles} of beer on the wall, #{number_of_bottles} of beer.
Take one down and pass it around, #{next_number_of_bottles} of beer on the wall.
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
