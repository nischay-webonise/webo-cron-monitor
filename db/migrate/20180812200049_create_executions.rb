class CreateExecutions < ActiveRecord::Migration[5.1]
  def change
    create_table :executions do |t|
      t.references :cron, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
