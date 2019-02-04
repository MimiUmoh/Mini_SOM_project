require 'httparty'
require 'json'

class MovieReviews
  include HTTParty

  
  base_uri'https://api.nytimes.com/svc/movies/v2'


  def reviews(picks)
    @critics_picks = JSON.parse(self.class.get("/reviews/#{picks}.json?&api-key=Gp7vad0IiyO3Go6UBpFwvUQrMqpqmocA").body)
  end

  def retrieve_results
    @critics_picks['results']
  end 


  def retrieve_display_title
        display_title = []
        retrieve_results.each{ |title|
        display_title << title['display_title']
      }
      display_title
  end 


  def retrieve_critics_pick
        critics_pick = []
        retrieve_results.each{ |pick|
        critics_pick << pick['critics_pick']
        }
      critics_pick
  end 

  def retrieve_by_line
      by_line =[]
      retrieve_results.each{ |byline|
      by_line << byline['byline']
    }
    by_line
  end 

  def retrieve_date 
    date = []
    retrieve_results.each{ |date_type|
    date << date_type['openinig_date']}
  end 


end 

# test = MovieReviews.new 
# test.reviews('picks')
#  p test.retrieve_by_line