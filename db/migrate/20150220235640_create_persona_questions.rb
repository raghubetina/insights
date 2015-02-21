class CreatePersonaQuestions < ActiveRecord::Migration
  def change
    create_table :persona_questions do |t|
      t.belongs_to :persona, index: true
      t.belongs_to :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :persona_questions, :personas
    add_foreign_key :persona_questions, :questions
  end
end
