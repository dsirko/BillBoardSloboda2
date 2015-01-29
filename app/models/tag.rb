class Tag < ActiveRecord::Base
  has_many :advertisements, :through => :advertisement_tags
end
