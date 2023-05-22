class OrdersController < ApplicationController
  before_action :authenticate_user
  def create
    product = Product.find_by(id: params["product_id"])
    quantity = params["quantity"].to_i

    calculated_subtotal = product.price * quantity
    calculated_tax = product.tax * quantity
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])

    render :show
  end

  def index
    @orders = current_user.orders

    render :index
  end
end 
