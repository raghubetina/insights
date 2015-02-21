class AddPersonaQuestionsCountToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :persona_questions_count, :integer, :default => 0
  end
end
