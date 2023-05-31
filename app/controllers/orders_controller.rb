class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    product = Product.find_by(id: params["product_id"])
    quantity = params["quantity"].to_i

    carted_products.each do |carted_product|
      product = carted_product.product
      quantity = carted_product.quantity

      calculated_subtotal = product.price * quantity
      calculated_tax = product.tax * quantity
      calculated_total = calculated_subtotal + calculated_tax
    end

    @order = Order.create(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    carted_products.update_all(status: "purchased", order_id: @order.id)

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

  def destroy
    @carted_product = CartedProduct.find_by(id: params["id"])

    @carted_product.update(status: "removed")

    render json: {message: "Product has been removed from cart."}
  end
end 
