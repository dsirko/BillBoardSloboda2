class Advertisement < ActiveRecord::Base
  belongs_to :owner, class_name: User
  belongs_to :adv_category
  has_many :advertisement_tags
  has_many :feedbacks



end
