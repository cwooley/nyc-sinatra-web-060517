class ApplicationController < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  register Sinatra::Twitter::Bootstrap::Assets


  # get '/figures/new' do
  #   binding.pry
  #   erb :'/figures/new'
  # end
end
