class AddAdvCatigiriesForAdvWithDefaultCatigories < ActiveRecord::Migration
  def change
  	add_column :advertisements, :adv_category_id, :integer,  default: 1, null: false
  end
end