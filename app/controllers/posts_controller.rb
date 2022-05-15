class PostsController < ApplicationController

def new
    @post = Place.new
    @post["place_id"] = params["place_id"]
end
    
def create
    @post = Place.new
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]
    @post["place_id"] = params["post"]["place_id"]
    @post.save
    redirect_to "/places"

end
