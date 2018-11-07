# app/helpers/restaurants_helper.rb
module RestaurantsHelper
  def avg_rating(restaurant)
    return 0 if restaurant.reviews.size == 0

    ratings = restaurant.reviews.map(&:rating)
    (ratings.inject { |sum, el| sum + el }.to_f / ratings.size).round
  end
end
