class CreateMillers < ActiveRecord::Migration[5.2]
  def change
    create_table :millers, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :mobile
      t.text :address
      t.string :status
      t.string :mill_name
      t.string :mill_location

      t.timestamps
    end
  end
end
