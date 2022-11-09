class CreateClimates < ActiveRecord::Migration[7.0]
  def change
    create_table :climates do |t|
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
