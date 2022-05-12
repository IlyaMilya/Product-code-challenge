class ReviewsCreated < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product
      t.integer :star_rating
      t.string :comment
  end
end
end
