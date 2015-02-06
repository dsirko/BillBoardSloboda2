class AddAdvCategoryIdToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :adv_category_id, :integer
  end
end
