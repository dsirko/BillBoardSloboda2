class Advertisement < ActiveRecord::Base
  belongs_to :user
  belongs_to :adv_category
  has_many :advertisement_tags
  has_many :feedbacks



end
