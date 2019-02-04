require 'spec_helper'


describe MoviesNYT do
  context  'Critics picks' do 
    before(:all) do 
      @review_picks = MoviesNYT.new.movie_reviews_nyt
      @review_picks.reviews('picks')
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

    it 'By Line should be in all uppercase letters' do 
      @review_picks.retrieve_by_line.each do |byline|
        expect(byline).to be_kind_of(String)
      end 
    end 





  end 


end 
