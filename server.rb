require 'csv'
require 'sinatra'
require 'shotgun'
require 'pry'
require_relative "lib/wizard_article"

get '/' do
  @articles = []
  CSV.foreach('articles.csv', headers: true) do |row|

    @articles << WizardArticle.new(row['title'], row['description'])
  end



  erb :index

end

get '/new_article' do
  erb :new_article
end


post '/post_article' do
  @post_title       = params['post_title']
  @post_description = params['post_description']
  @post_contents    = params['post_contents']

  @article = WizardArticle.new(@post_title, @post_description, @post_contents)
  @article.write_to_csv
  redirect '/'
end

