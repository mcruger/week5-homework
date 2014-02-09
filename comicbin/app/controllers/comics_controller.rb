class ComicsController < ApplicationController

	def index
		#renders index by default
		@comics = Comic.all
	end

	def show	
		comic_id = params["comic_id"]
		@comic = Comic.find_by :id => comic_id
		render 'show'
	end

	def delete
		comic_id = params["comic_id"]

    	c = Comic.find_by(:id => comic_id)
    	c.destroy
    	redirect_to "/comics"
    end

    def new
    	render 'new'
    end 

    def add
    	@comic = Comic.new
    	@comic.title = params["title"]
    	@comic.description = params["description"]
    	@comic.image = params["image"]
    	@comic.save
    	redirect_to "/comics"
    end

	def test
		render 'test'
	end

end