class FavoriteController < ApplicationController
	before_action :person
	before_action :favorite, except: [:index, :new, :update]
  def index
  	@favorites = @person.favorites
  end

  def show
  end

  def new
  	@favorite = Favorite.new
  end

  def create
  	@favorite = @person.favorite.new(favorite_params)
  	if @favorite.save
  		redirect_to person_favorite_path(@person, @favorite)
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @favorite.update(favorite_params)
  		redirect_to person_favorite_path(@person, @favorite)
  	else
  		render :edit
  	end
  end

  def destroy
  	@favorite.destroy
  	redirect_to person_favorite_path(@person)
  end

  private
  	def favorite_params
  		params.require(:favorite).permit(:likes, :dislikes)
  	end

  	def favorite
  		@favorite = @person.favorites.find(params[:id])
  	end

  	def person
  		@person = Person.find(params[:person_id])
  	end
end
