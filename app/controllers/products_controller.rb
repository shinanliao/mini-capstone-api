class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end
end
