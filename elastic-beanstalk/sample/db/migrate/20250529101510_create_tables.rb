class CreateTables < ActiveRecord::Migration[8.0]
  def change
    create_table :things do |t|
      t.string :name
      t.timestamps
    end

     Thing.create!(name: "Sun")
     Thing.create!(name: "Mars")
     Thing.create!(name: "Jupiter")
     Thing.create!(name: "Pluto")
  end
end
