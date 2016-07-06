class AddMoreFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :date_birth, :datetime
    add_column :users, :cp, :integer
    add_column :users, :cellphone, :integer
  end
end
