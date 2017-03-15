class Bottles
  def verse(number)
    next_number = number - 1
    number_of_bottles = number_of_bottles(number)
    next_number_of_bottles = number_of_bottles(number - 1)
    <<-VERSE
#{number_of_bottles} of beer on the wall, #{number_of_bottles} of beer.
Take #{one_or_it(number)} down and pass it around, #{next_number_of_bottles} of beer on the wall.
VERSE
  end

  def number_of_bottles(number)
    bottle_name = number == 1? "bottle" : "bottles"
    "#{number} #{bottle_name}"
  end

  def one_or_it(number)
    if number == 1
      "it"
    else
      "one"
    end
  end


end
