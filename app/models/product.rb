class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  
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

  def images
    Image.where(product_id: id)
  end
end
