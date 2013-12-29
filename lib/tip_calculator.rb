class Tip_calculator

  def value(integer, percent)
    (integer * percent).round(2)
  end

  def to_percent(integer)
    (Float(integer))/100
  end
end