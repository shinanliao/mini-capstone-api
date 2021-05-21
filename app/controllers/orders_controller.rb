class OrdersController < ApplicationController
  def index
    orders = current_user.orders
    render json: orders
  end
  
  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    order.subtotal = order.quantity * order.product.price
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax

    if order.save
      render json: order
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    if current_user
      order = current_user.orders.find(params[:id])
      render json: order
    end
  end

end
