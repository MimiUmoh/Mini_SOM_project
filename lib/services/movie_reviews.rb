require 'httparty'
require 'json'

class MovieReviews
  include HTTParty

  base_uri'https://api.nytimes.com/svc/movies/v2'

  def reviews(picks)
    @critics_picks = JSON.parse(self.class.get("/reviews/#{picks}.json?&api-key=Gp7vad0IiyO3Go6UBpFwvUQrMqpqmocA").body)
  end

  def retrieve_has_more
    @critics_picks['has_more']
  end 

  def retrieve_results
    @critics_picks['results']
  end 

  def retrieve_copyright
    @critics_picks['copyright']
  end 

  def retreive_mpaa_writing 
    mpaa = []
    retrieve_results.each{ |rating|
    mpaa << rating['mpaa_rating']
    }
    mpaa
  end 

  def retreive_mpaa_writing_count
    mpaa = []
    retrieve_results.each{ |rating|
    mpaa << rating['mpaa_rating'].chars 
    }
    mpaa
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
    date << date_type['openinig_date'].to_i
    }
    date
  end 

  def retrieve_summary 
    summary_array = []
    retrieve_results.each{ |summary|
    summary_array << summary['summary_short']
    }
    summary_array
  end 

  def retrieve_links
    links = []
    retrieve_results.each{ |link|
    links << link['link']
    }
    links 
  end 

  def retrieve_suggested_links 
    suggested_link = []
    retrieve_links.each{ |suggested|
    suggested_link << suggested['suggested_link_text']
    }
    suggested_link
  end 

  def retrieve_url 
    url = [] 
    retrieve_links.each{ |url_links|
    url << url_links['url']
    }
    url 
  end 

  def retreive_multimedia
    multimedia = []
    retrieve_results.each{ |media|
    multimedia << media['multimedia']
    }
    multimedia
  end 

  def retrieve_src_image 
    src = []
    retreive_multimedia.each{ |jpg|
    src << jpg['src']
    }
    src
  end 

  def retrieve_height
    height = []
    retreive_multimedia.each{ |heights|
    height << heights['height']
    }
    height 
  end 

  def retrieve_width
    width = []
    retreive_multimedia.each{ |w|
    width << w['width']
    }
    width
  end 

  def retrieve_date_updated
    update = []
    retrieve_results.each{ |date|
    update << date['date_updated']
    }
    update 
  end 

end 

 test = MovieReviews.new 
test.reviews('picks')
 p test.retreive_multimedia