class Product < ApplicationRecord
  def is_discounted?
    x = false
    if price <= 10
      x = true
    end
    return x
  end

  def tax
    return price * 0.09 
  end

  def total
    tot = price + tax
    return tot
  end
end
