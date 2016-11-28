class AddS4ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :s4, :string
  end
end
