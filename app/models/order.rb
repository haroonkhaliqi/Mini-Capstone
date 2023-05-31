class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def update_totals
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0

    carted_products.each do |carted_product|
      product = carted_product.product
      quantity = carted_product.quantity

      calculated_subtotal = product.price * quantity
      calculated_tax = product.tax * quantity
      calculated_total = calculated_subtotal + calculated_tax
    end

    self.subtotal = calculated_subtotal
    self.tax = calculated_tax
    self.total = calculated_total
    self.save
  end
end
