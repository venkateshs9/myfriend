class ChangeMobileToBeStringInMillers < ActiveRecord::Migration[5.2]
  def change
    change_column :millers, :mobile, :string
  end
end
