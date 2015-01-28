class AdvCategory < ActiveRecord::Base
  has_many :advertisements
  has_many :adv_categories, foreign_key: :parent_category_id
  belongs_to :parent_category, class_name: :AdvCategory, dependent: :destroy


end
