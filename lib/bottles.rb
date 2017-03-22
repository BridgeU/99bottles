class Bottles
  def verse(number)
    plural_string = lambda{ |num| pluralize(num, 'bottle', 'bottles') }
    string = %(#{plural_string.call(number)} of beer on the wall, #{plural_string.call(number)} of beer.
Take #{number == 1 ? "it" : "one"} down and pass it around, #{plural_string.call(number - 1)} of beer on the wall.
)
    string
  end

  def pluralize(n, singular, plural = nil)
    if n.zero?
      'no more bottles'
    elsif n == 1
      "1 #{singular}"
    elsif plural
      "#{n} #{plural}"
    else
      "#{n} #{singular}s"
    end
  end
end
