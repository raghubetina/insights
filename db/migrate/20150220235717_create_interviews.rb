class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.date :held_on
      t.string :name
      t.string :company
      t.belongs_to :user, index: true
      t.belongs_to :persona, index: true
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :interviews, :users
    add_foreign_key :interviews, :personas
  end
end
