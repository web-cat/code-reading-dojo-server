class AddLevelCompletedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :levelcompleted, :string
  end
end
