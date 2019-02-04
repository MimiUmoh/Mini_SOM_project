# Mini_SOM_project

### Description 

The SOM was created for the New York times API to test their movie reviews critics section using a test driven development approach with testing tool Rspec.

### Languages and tools used
* Ruby
* Rspec

### Gems required
* httparty
* json
 
### How to download
1. You have the option of downloading the SOM as a zip or git cloning it onto your terminal.
2. Once you have done that, you can then open the application on a text editor such a vscode or atom to attempt some testing.

1.	To use the application, you need to get your own API key for movie reviews. Follow this link https://developer.nytimes.com/  to create your account.
2.	Once You have your API key, you can use it to set up your base uri and endpoint that is on the lib/services/movie_reviews.rb file. Use this link to help you with the setup https://developer.nytimes.com/docs/movie-reviews-api/1/overview. Always make sure you API key is positioned at the end of your endpoint.
3.	If you have not got the json and httparty gem installed, make sure you install them by doing  gem install ‘json’ , gem install ‘httparty.’
4.	Then run bundle install.
5.	Once you have sorted that out you can start writing your methods in lib/services/movie_reviews.rb.
6.	Once you have done that, you can start writing your tests in spec/movie_reviews_spec.rb.
7.	You can run rspec on your terminal to check if your tests have passed or failed.

