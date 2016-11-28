class AddS2ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :s2, :string
  end
end
