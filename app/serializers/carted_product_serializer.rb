class CartedProductsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :order_id, :quantity, :status

  belongs_to :product
end
