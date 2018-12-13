class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lat
      t.string :long
      t.string :checkin

      t.timestamps
    end
  end
end
