class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status
      t.text :body

      t.timestamps
    end
  end
end
