class DellAdvCatigiriesFromAdv < ActiveRecord::Migration
  def change
  	remove_column :advertisements, :adv_category_id, :integer
  end
end
