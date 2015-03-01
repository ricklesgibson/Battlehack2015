class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.string :address
      t.string :invited

      t.timestamps null: false
    end
  end
end
