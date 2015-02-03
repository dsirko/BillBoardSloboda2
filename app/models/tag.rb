class Tag < ActiveRecord::Base
  has_many :advertisements, :through => :advertisement_tags
  has_many :advertisement_tags

  def self.tag_cloud(tags)
    return [] if tags.empty?
    max_count = tags.max_by {|e| e[:advertisements.size]}.advertisements.size.to_f
    tags.each do |tag|
      weigth = ((tag.advertisements.size.to_f / max_count) * 20)
      yield tag, weigth
    end
  end
end
