class Product < ActiveRecord::Base
    has_many :reviews 
    has_many :users, through: :reviews 

    
    def leave_review(user, product, star_rating, comment)
    User.create(user = user.id, product = self, star_rating = review.star_rating, comment= review.comment)
    end

    def print_all_reviews
        self.reviews.map do |r|
        puts r.print_review 
        end
    end



end