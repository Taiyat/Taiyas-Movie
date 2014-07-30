class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

def show 
  @movie = Film.find_by_id(params['id'])
  render 'show'  
end 

  def new 
  end
  def create 
    g = Film.new
    g.caption = params['caption']
    g.url = params['url']
    g.title = params['title']
    g.image = params['image']
    g.save
    redirect_to "/movie/#{ g.id }"
end
  def edit 
    @movie = Film.find_by_id(params['id'])
end
  def update 
    g = Film.find_by_id(params['id'])
    g.caption = params['caption']
    g.url = params['url']
    g.title = params['title']
    g.image = params['image']
    g.save
    redirect_to "/movie/#{ g.id }"
  end
  def destroy
     g = Film.find_by_id(params['id'])
     g.destroy 
    redirect_to "/movie"
  end
  def index
    @movies = Film.all 
end 
end 