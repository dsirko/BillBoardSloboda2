class AddadvertisementIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :advertisement_id, :integer 
  end
end
