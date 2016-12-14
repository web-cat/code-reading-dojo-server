class AddLevelToTap < ActiveRecord::Migration[5.0]
  def change
    add_column :taps, :level, :string
  end
end
