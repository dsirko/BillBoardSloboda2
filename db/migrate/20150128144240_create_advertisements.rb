class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :name
      t.text :text

      t.timestamps null: false
    end
  end
end
