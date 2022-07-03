class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.date :date_time, null: false
      t.string :priority
      t.boolean :isComplete

      t.timestamps
    end
  end
end
