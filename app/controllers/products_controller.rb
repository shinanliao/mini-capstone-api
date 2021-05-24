class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all

    if params[:category]
      category = Category.find_by("name iLike ?", params[:category])
      products = category.products
    end
    
    if params[:search]
      products = products.where("name LIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      products = products.where("price < ?", 10)
    end

    if params[:sort] == "price" && params[:sort_order] = "asc"
      products = products.order(price: :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      products = products.order(price: :desc)
    else
      products = products.order(id: :asc)
    end
    render json: products
  end

  def create 
    product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    supplier_id: params[:supplier_id],
    inventory: params[:inventory]
  )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.inventory = params[:inventory] || product.inventory
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Goodbye forever!"}
  end
end