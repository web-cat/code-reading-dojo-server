class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.string :email
      t.string :gender
      t.string :age
      t.string :experience
      t.string :enjoy
      t.string :language

      t.timestamps
    end
  end
end
