class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :email
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4

      t.timestamps
    end
  end
end
