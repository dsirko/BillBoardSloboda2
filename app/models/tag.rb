class Tag < ActiveRecord::Base
  has_many :advertisements, :through => :advertisement_tags
  has_many :advertisement_tags
end
