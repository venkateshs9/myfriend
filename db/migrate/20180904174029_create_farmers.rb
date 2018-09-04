class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :mobile
      t.text :address
      t.string :status

      t.timestamps
    end
  end
end
