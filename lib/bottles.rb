class Bottles
  def verse(number)
    plural_string = pluralize(number - 1, "bottle", "bottles")
    string = %(#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{plural_string} of beer on the wall.
)
    string
  end

  def pluralize(n, singular, plural=nil)
    if n == 1
        "1 #{singular}"
    elsif plural
        "#{n} #{plural}"
    else
        "#{n} #{singular}s"
    end
  end
end
