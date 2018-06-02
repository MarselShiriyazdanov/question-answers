class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :user, null: false
      t.text :title, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
