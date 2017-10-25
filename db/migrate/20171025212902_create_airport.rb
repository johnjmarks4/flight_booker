class CreateAirport < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :name
      t.references :home
      t.references :destination

      t.timestamps
    end
  end
end