class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :user_id, :subtotal, :tax, :total

  belongs_to :product
end
