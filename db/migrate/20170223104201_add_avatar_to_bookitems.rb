class AddAvatarToBookitems < ActiveRecord::Migration[5.0]
  def change
    add_column :bookitems, :avatar, :string
  end
end
