class AddTagIdToAdvertisementTags < ActiveRecord::Migration
  def change
    add_column :advertisement_tags, :tag_id, :integer
  end
end
