class Advertisement < ActiveRecord::Base
  belongs_to :owner, class_name: User
  belongs_to :adv_category
  has_many :tags, :through => :advertisement_tags
  has_many :advertisement_tags
  has_many :feedbacks
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => ":style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  scope :search_new, -> (word){ where('LOWER(text) LIKE LOWER(:w) OR LOWER(name) LIKE LOWER(:w)', w: "%#{word}%") if word.present?}
end
