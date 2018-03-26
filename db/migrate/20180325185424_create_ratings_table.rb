# Rating schema
class CreateRatingsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :score
    end
  end
end
