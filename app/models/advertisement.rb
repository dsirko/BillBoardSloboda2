class Advertisement < ActiveRecord::Base
  belongs_to :owner, class_name: User
  belongs_to :adv_category
  has_many :tags, :through => :advertisement_tags
  has_many :advertisement_tags
  has_many :feedbacks

  def self.search(search)
    if search
      where('text LIKE ?', "%#{search}%") | where('name LIKE ?', "%#{search}%") 
    else
      all
    end
  end

end
