class Review < ActiveRecord::Base 
belongs_to :user
belongs_to :product

def print_review
 puts "Review for #{product.name} by #{user.name}: #{review.star_rating}. #{review.comment}"
end


end