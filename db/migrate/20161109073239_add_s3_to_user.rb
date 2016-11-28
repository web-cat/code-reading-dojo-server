class AddS3ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :s3, :string
  end
end
