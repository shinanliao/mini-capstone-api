class AddStatusTocartedProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :carted_products, :status, :string, default: "carted"
  end
end
