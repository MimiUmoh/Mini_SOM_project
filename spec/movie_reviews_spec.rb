require 'spec_helper'

describe MoviesNYT do
  context  'Critics picks' do 
    before(:all) do 
      @review_picks = MoviesNYT.new.movie_reviews_nyt
      @review_picks.reviews('picks')
    end 
     
    it 'Has more should be true' do 
      expect(@review_picks.retrieve_has_more). to be true 
    end 


    it 'MPA rating has to be a sting' do 
      @review_picks.retreive_mpaa_writing.each do |rating|
        expect(rating).to be_kind_of(String)
      end 
    end 

    it 'Display title should be a string' do 
      @review_picks.retrieve_display_title.each do |title|
        expect(title).to be_kind_of(String)
      end 
    end 

    it 'Critics picks should be in the form of an integer' do 
      @review_picks.retrieve_critics_pick.each do |pick|
        expect(pick).to be_kind_of(Integer)
      end 
    end 

    it 'By Line should be a string' do 
      @review_picks.retrieve_by_line.each do |byline|
        expect(byline).to be_kind_of(String)
      end 
    end 

    it 'Date  should contain integers even though it is string' do 
      @review_picks.retrieve_date.each do |date|
        expect(date).to be_kind_of(Integer)
      end 
    end 

    it 'Summary short should be a string' do 
      @review_picks.retrieve_summary.each do |summary|
        expect(summary).to be_kind_of(String)
      end 
    end 

    it 'URL should contain basic elements of a link' do 
      @review_picks.retrieve_url.each do |url|
        expect(url).to start_with('http://www.nytimes.com')
      end 
    end 

    it 'SRC image link should have .jpg at the end' do 
      @review_picks.retrieve_src_image.each do |link|
        expect(link).to end_with('.jpg').and start_with('https://static01.nyt.com/images')
      end 
    end 

    it 'Height should be an integer' do 
      @review_picks.retrieve_height.each do |height|
        expect(height).to be_kind_of(Integer)
      end 
    end  

    it 'Width should be an integer' do 
      @review_picks.retrieve_width.each do |width|
        expect(width).to be_kind_of(Integer)
      end 
    end 

  end 

end 
