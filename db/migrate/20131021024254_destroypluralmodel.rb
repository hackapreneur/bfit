class Destroypluralmodel < ActiveRecord::Migration
  def change
  	drop_table :videos
  end
end
