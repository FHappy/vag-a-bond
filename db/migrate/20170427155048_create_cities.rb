class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :img_url
      t.string :country

      t.timestamps
    end
  end
end
