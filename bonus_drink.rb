class BonusDrink
  def self.total_count_for(amount)
    bonus = amount / 3
    reminder = amount % 3

    if (bonus + reminder) < 3
      return amount + bonus
    else
      return amount - reminder + total_count_for(bonus + reminder)
    end
  end
end