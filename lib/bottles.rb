class Bottles

  def verse(n)
    <<~HEREDOC
      #{bottles(n)} of beer on the wall, #{bottles(n)} of beer.
      Take #{pronoun(n)} down and pass it around, #{bottles(n-1)} of beer on the wall.
    HEREDOC
  end

  def bottles(n)
    case n
    when 1 then "#{n} bottle"
    when 0 then "no more bottles"
    else "#{n} bottles"
    end
  end

  def pronoun(n)
    n == 1? 'it' : 'one'
  end

end
