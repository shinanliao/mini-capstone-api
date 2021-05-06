class ProductsController < ApplicationController
  def show_all
    products = Product.all
    render json: products.as_json
  end

  def show_one
    bed_product = Product.last
    render json: bed_product.as_json
  end
end
