class CreateGoodTimes < ActiveRecord::Migration
  def change
    create_table :good_times do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.date :visit

      t.timestamps
    end
  end
end
