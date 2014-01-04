class FixConfirmableOnUsers < ActiveRecord::Migration
  def self.up
    rename_index :users, "index_users_on_confirmation_token", "confirmation_token"
    User.update_all(:confirmed_at => Time.now)
  end

  def self.down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
