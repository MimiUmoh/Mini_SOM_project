require_relative 'services/movie_reviews'


class DeveloperNYTimes

  def movie_reviews_nyt
    MovieReviews.new 
  end

  base_uri'https://api.nytimes.com/svc/movies/v2'


  def reviews
    @critics_picks = JSON.parse(self.class.get("/reviews/picks.json?&api-key=Gp7vad0IiyO3Go6UBpFwvUQrMqpqmocA").body)
  end


end
