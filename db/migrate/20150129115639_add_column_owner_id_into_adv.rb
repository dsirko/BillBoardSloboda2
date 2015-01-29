class AddColumnOwnerIdIntoAdv < ActiveRecord::Migration
  def change
  	add_column :advertisements, :owner_id, :integer
  end
end
