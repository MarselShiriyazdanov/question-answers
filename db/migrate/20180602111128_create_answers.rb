class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :user, null: false
      t.belongs_to :question, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
