class Bottles
  def verse(number)
    number_of_bottles = number_of_bottles(number)
    <<-VERSE
#{number_of_bottles} of beer on the wall, #{number_of_bottles} of beer.
#{second_line(number)}
VERSE
  end

  def second_line(number)
    next_number_of_bottles = number_of_bottles(number - 1)
    "Take #{one_or_it(number)} down and pass it around, #{next_number_of_bottles} of beer on the wall."
  end

  def number_of_bottles(number)
    bottle_name = number == 1? "bottle" : "bottles"
    number_name = number == 0? "no more" : "#{number}"
    "#{number_name} #{bottle_name}"
  end

  def one_or_it(number)
    number == 1? "it" : "one"
  end


end
