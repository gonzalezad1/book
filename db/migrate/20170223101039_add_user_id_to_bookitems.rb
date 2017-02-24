class AddUserIdToBookitems < ActiveRecord::Migration[5.0]
  def change
    add_column :bookitems, :user_id, :integer
  end
end
