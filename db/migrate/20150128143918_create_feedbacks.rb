class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text :text
      t.integer :rating

      t.timestamps null: false
    end
  end
end
