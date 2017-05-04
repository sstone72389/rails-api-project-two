class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :name, null: false
      t.boolean :is_complete, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
