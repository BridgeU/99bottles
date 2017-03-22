class Bottles

  def verse(n)
    <<~HEREDOC
      #{bottles(n)} of beer on the wall, #{bottles(n)} of beer.
      Take one down and pass it around, #{bottles(n-1)} of beer on the wall.
    HEREDOC
  end

  def bottles(n)
    n == 1 ? "#{n} bottle" : "#{n} bottles"
  end

end
