class CreateTaps < ActiveRecord::Migration[5.0]
  def change
    create_table :taps do |t|
      t.string :email
      t.string :word
      t.string :success
      t.string :time

      t.timestamps
    end
  end
end
