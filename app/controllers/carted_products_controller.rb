class CartedProductsController < ApplicationController

  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end
  
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      order_id: params[:order_id],
      quantity: params[:quantity]
    )
    if carted_product.save
      render json: carted_product
    else
      render json: {errors: carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    carted_product = current_user.carted_products.where(status: "carted").find(params[:id])
    carted_product.update(status: "removed")
    render json: {message: "Product Gone!"}
  end
end
