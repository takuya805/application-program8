class RemoveUnconfirmedEmailInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :unconfirmed_email, :string
    remove_column :users, :confirmation_sent_at, :datatime
    remove_column :users, :confirmation_token, :string
    remove_column :users, :confirmed_at, :datatime
  end
end
