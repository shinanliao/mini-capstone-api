class CartedProductsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :order_id, :quantity, :status
end
