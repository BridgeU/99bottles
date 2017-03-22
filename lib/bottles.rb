class Bottles

  def verse(n)
    <<~HEREDOC
      #{n} bottles of beer on the wall, #{n} bottles of beer.
      Take one down and pass it around, #{n-1} bottles of beer on the wall.
    HEREDOC
  end


end
