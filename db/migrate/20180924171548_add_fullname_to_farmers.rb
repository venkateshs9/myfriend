class AddFullnameToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :fullname, :string
  end
end
