class CreateCrons < ActiveRecord::Migration[5.1]
  def change
    create_table :crons do |t|
      t.string :name
      t.string :unique_id
      t.string :url
      t.string :expression
      t.integer :grace_period
      t.boolean :enabled

      t.timestamps
    end
  end
end
