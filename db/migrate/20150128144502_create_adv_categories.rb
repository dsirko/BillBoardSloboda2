class CreateAdvCategories < ActiveRecord::Migration
  def change
    create_table :adv_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
