class CreateFlight < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.references :home, foreign_key: true
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end