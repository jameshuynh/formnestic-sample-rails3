class CreateQuizPoolQuestionOptions < ActiveRecord::Migration
  def change
    create_table :quiz_pool_question_options do |t|
      t.text :description
      t.integer :quiz_pool_question_id
      t.boolean :is_correct

      t.timestamps
    end
  end
end
