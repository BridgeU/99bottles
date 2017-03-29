class Bottles
  def verse(number)
    sing(number)
  end

  def verses(start, finish)
    (finish..start).to_a.reverse.map{ |bottles| sing(bottles) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def sing(bottles)
    @nr_bottles = bottles

    "#{how_many_bottles.capitalize} of beer on the wall, "\
    "#{how_many_bottles} of beer."\
    "\n"\
    "#{what_to_do}, "\
    "#{how_many_bottles} of beer on the wall."\
    "\n"
  end

  def what_to_do
    if @nr_bottles > 0
      message = "Take #{one_or_it} down and pass it around"
      @nr_bottles -= 1
    else
      message = "Go to the store and buy some more"
      @nr_bottles = 99
    end

    message
  end

  def how_many_bottles
    message = if @nr_bottles > 0
      pluralize(@nr_bottles, "bottle")
    else
      "no more bottles"
    end
  end

  #--

  def one_or_it
    @nr_bottles > 1 ? "one" : "it"
  end

  def next_bottles(number)
    if number - 1 > 0
      pluralize(number - 1, "bottle")
    else
      "no more bottles"
    end
  end

  def pluralize(number, string)
    "#{number} #{string}#{number > 1 ? 's' : ''}"
  end
end
