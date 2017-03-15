class Bottles
  def verse(number)
    number_of_bottles = number_of_bottles(number)
    <<-VERSE
#{capitalize_start(number_of_bottles)} of beer on the wall, #{number_of_bottles} of beer.
#{second_line(number)}
VERSE
  end

  def verses(first, last)
    output = ""
    while first >= last
      output << verse(first)
      first -= 1
    end
    output
  end

  def second_line(number)
    if number == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      next_number_of_bottles = number_of_bottles(number - 1)
      "Take #{one_or_it(number)} down and pass it around, #{next_number_of_bottles} of beer on the wall."
    end
  end

  def number_of_bottles(number)
    bottle_name = number == 1? "bottle" : "bottles"
    number_name = number == 0? "no more" : "#{number}"
    "#{number_name} #{bottle_name}"
  end

  def one_or_it(number)
    number == 1? "it" : "one"
  end

  def capitalize_start(s)
    s.slice(0,1).capitalize + s.slice(1..-1)
  end

end
