class AddConsentToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :consent, :string
  end
end
