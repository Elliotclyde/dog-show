class DogBreedsController < ApplicationController
  
  def index
    @dogbreeds = DogBreed.all
  end

  def new
    @dogbreed = DogBreed.new
  end

  def show
    @dogbreed = DogBreed.find(params[:id])
  end

  def create
    @dogbreed = DogBreed.new(dogbreed_params)
    if @dogbreed.save
      redirect_to @dogbreed
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def dogbreed_params
      params.expect(dog_breed: [ :name ])
    end
end
