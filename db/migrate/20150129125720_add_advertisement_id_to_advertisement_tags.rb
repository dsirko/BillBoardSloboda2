class AddAdvertisementIdToAdvertisementTags < ActiveRecord::Migration
  def change
    add_column :advertisement_tags, :advertisement_id, :integer
  end
end
