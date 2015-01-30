class AddParentCategoryIdToAdvCategory < ActiveRecord::Migration
  def change
    add_column :adv_categories, :parent_category_id, :integer
  end
end
