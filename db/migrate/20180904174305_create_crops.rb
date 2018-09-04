class CreateCrops < ActiveRecord::Migration[5.2]
  def change
    create_table :crops, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name
      t.string :type
      t.string :variety
      t.string :quantity
      t.string :quality
      t.string :status

      t.timestamps
    end
  end
end
