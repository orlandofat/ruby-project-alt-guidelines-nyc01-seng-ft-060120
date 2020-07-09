class AddReviewToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :review, :text
  end
end
