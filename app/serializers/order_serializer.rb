class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subtotal, :tax, :total

  has_many :carted_products
end
