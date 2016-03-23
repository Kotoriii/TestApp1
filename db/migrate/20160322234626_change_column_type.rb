class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :orders, :total, :integer
  	change_column :products, :price, :integer
  end
end
