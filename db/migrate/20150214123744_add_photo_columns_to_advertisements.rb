class AddPhotoColumnsToAdvertisements < ActiveRecord::Migration
  def self.up
    add_attachment :advertisements, :photo
  end
  def self.down
    remove_attachment :advertisements, :photo
  end
end
