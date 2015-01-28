class CreateAdvertisementTags < ActiveRecord::Migration
  def change
    create_table :advertisement_tags do |t|

      t.timestamps null: false
    end
  end
end
