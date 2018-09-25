class ChangeMobileToBeStringInFarmers < ActiveRecord::Migration[5.2]
  def change
    change_column :farmers, :mobile, :string
  end
end
