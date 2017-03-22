class Bottles

  def verse(n)
    <<~HEREDOC
      #{first_line(n)}
      #{second_line(n)}
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

  def second_line(n)
    if n == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{pronoun(n)} down and pass it around, #{bottles(n-1)} of beer on the wall."
    end
  end

  def first_line(n)
    if n == 0
      "#{bottles(n).capitalize} of beer on the wall, #{bottles(n)} of beer."
    else
      "#{bottles(n)} of beer on the wall, #{bottles(n)} of beer."
    end
  end
end
