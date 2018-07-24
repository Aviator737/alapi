class AddPasswordSalt < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :password_salt, :string
  end
end
