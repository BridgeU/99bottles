class Bottles
  def verse(number)
    "#{pluralize(number, 'bottle')} of beer on the wall, "\
    "#{pluralize(number, 'bottle')} of beer."\
    "\n"\
    "Take one down and pass it around, "\
    "#{next_bottles(number)} of beer on the wall."\
    "\n"
  end

  private

  def next_bottles(number)
    if number > 0
      pluralize(number - 1, "bottle")
    else
      "no more bottles"
    end
  end

  def pluralize(number, string)
    "#{number} #{string}#{number > 1 ? 's' : ''}"
  end
end
