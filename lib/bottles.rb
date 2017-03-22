class Bottles
  def verse(number)
    plural_string = lambda{ |num| pluralize(num, 'bottle', 'bottles') }
    string = %(#{plural_string.call(number).capitalize} of beer on the wall, #{plural_string.call(number)} of beer.
#{shop(number)}, #{plural_string.call(number - 1)} of beer on the wall.
)
    string
  end

  def verses(*args)
    strings = []
    
    args.each do |number|
      strings << verse(number)
    end

    strings.join("\n")
  end

  def pluralize(n, singular, plural = nil)
    if n.zero?
      'no more bottles'
    elsif n == 1
      "1 #{singular}"
    elsif n < 0
      pluralize(100 + n, 'bottle', 'bottles')
    elsif plural
      "#{n} #{plural}"
    else
      "#{n} #{singular}s"
    end
  end

  def shop(num)
    if num > 0
      "Take #{num == 1 ? 'it' : 'one'} down and pass it around"
    else
      'Go to the store and buy some more'
    end
  end
end
