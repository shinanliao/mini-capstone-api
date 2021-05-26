class RemoveStatusFromCartedProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :carted_products, :status, :string
  end
end
