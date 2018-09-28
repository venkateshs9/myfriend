class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :type, null: false
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.string :password
      t.string :mobile
      t.string :address

      t.timestamps
    end
  end
end
