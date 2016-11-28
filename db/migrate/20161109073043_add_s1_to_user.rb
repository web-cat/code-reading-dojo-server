class AddS1ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :s1, :string
  end
end
