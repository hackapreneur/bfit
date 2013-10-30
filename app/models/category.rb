class Category < ActiveRecord::Base
  has_many :subcategory

  accepts_nested_attributes_for :subcategory
end
