require 'spec_helper'

describe MoviesNYT do
  context  'Critics picks' do 
    before(:all) do 
      @review_picks = MoviesNYT.new.movie_reviews_nyt
      @review_picks.reviews('picks')
    end 
     
    it 'Should be an array' do 
      expect(@review_picks.retrieve_results).to be_kind_of(Array)
    end 

    it 'Should be a hash' do 
      @review_picks.retrieve_links.each do |links_hash|
        expect(links_hash).to be_kind_of(Hash)
      end 
    end 

    it 'Should be a hash' do 
      @review_picks.retreive_multimedia.each do |multimedia|
        expect(multimedia).to be_kind_of(Hash)
      end 
    end

    it 'Should be true' do 
      expect(@review_picks.retrieve_has_more). to be true 
    end 

    it 'Should have All rights reserved' do 
      expect(@review_picks.retrieve_copyright).to end_with('All Rights Reserved.')
    end 

    it 'Should be a sting' do 
      @review_picks.retreive_mpaa_writing.each do |rating|
        expect(rating).to be_kind_of(String)
      end 
    end 
    
    it 'Should have between 0 and 10 characters' do 
      @review_picks.retreive_mpaa_writing_count.each do |rating|
        expect(rating.count).to be_between(0,10)
      end 
    end 
    

    it 'Should be a string' do 
      @review_picks.retrieve_display_title.each do |title|
        expect(title).to be_kind_of(String)
      end 
    end 

    it 'Should be in the form of an integer' do 
      @review_picks.retrieve_critics_pick.each do |pick|
        expect(pick).to be_kind_of(Integer)
      end 
    end 

    it 'Should be a string' do 
      @review_picks.retrieve_by_line.each do |byline|
        expect(byline).to be_kind_of(String)
      end 
    end 

    it 'Should contain integers even though it is string' do 
      @review_picks.retrieve_date.each do |date|
        expect(date).to be_kind_of(Integer)
      end 
    end 

    it 'Should include colons' do
      @review_picks.retrieve_date_updated.each do |update|
        expect(update).to include (':')
      end 
    end 

    it 'Should include dashes' do
      @review_picks.retrieve_date_updated.each do |update|
        expect(update).to include ('-')
      end 
    end 

    it 'Should be a string' do 
      @review_picks.retrieve_suggested_links .each do |suggested|
        expect(suggested).to be_kind_of(String)
      end
    end 

    it 'Should be a string' do 
      @review_picks.retrieve_summary.each do |summary|
        expect(summary).to be_kind_of(String)
      end 
    end 

    it 'Should contain basic elements of a link' do 
      @review_picks.retrieve_url.each do |url|
        expect(url).to start_with('http://www.nytimes.com')
      end 
    end 

    it 'Should have .jpg at the end' do 
      @review_picks.retrieve_src_image.each do |link|
        expect(link).to end_with('.jpg').and start_with('https://static01.nyt.com/images')
      end 
    end 

    it 'Should be an integer' do 
      @review_picks.retrieve_height.each do |height|
        expect(height).to be_kind_of(Integer)
      end 
    end  

    it 'Should be an integer' do 
      @review_picks.retrieve_width.each do |width|
        expect(width).to be_kind_of(Integer)
      end 
    end 
    
  end 

end 
