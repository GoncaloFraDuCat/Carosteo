class AddUnconfirmedEmailToUsers < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:users, :role)

      add_column :users, :unconfirmed_email, :string
    end
  end
end
