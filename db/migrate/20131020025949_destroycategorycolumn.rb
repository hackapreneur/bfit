class Destroycategorycolumn < ActiveRecord::Migration
  def change
  	  remove_column :categories, :category_name
  	  add_column :categories, :name, :string
  end
end
