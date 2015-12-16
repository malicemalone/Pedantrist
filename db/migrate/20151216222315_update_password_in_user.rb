class UpdatePasswordInUser < ActiveRecord::Migration
  def change
  	rename_column :users, :password, :password_hash
  end
end
