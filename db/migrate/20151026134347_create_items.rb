class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :list, index: true, foreign_key: true
      t.string :description
      t.datetime :due_date
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
