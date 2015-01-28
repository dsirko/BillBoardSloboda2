class AdvertisementTag < ActiveRecord::Base
  belongs_to :advertisement
  belongs_to :tag
end
