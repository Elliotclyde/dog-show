class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    load_collections
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
      if @dog.save
        redirect_to @dog
      else
        load_collections
        render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
    def dog_params
      params.expect(dog: [ :name,:description,:dog_breed_id ])
    end

    def load_collections
      @dog_breeds = DogBreed.all
    end
end
