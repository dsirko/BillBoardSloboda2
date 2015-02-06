class Advertisement < ActiveRecord::Base
  belongs_to :owner, class_name: User
  belongs_to :adv_category
  has_many :tags, :through => :advertisement_tags
  has_many :advertisement_tags
  has_many :feedbacks
  scope :search_new, -> (word){ where('LOWER(text) LIKE LOWER(:w) OR LOWER(name) LIKE LOWER(:w)', w: "%#{word}%") if word.present?}
end
