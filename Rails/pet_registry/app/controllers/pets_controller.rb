class PetsController < ApplicationController
  def index
    #fetches all pets from the database
    @pets = Pet.all
  end

  def show
    set_page
  end

  def card
    index
    render :card
  end

  def new
    @pet = Pet.new 
  end

  def create 
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_page
  end

  def update
    set_page
    if @pet.update(pet_params)
      redirect_to @pet
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_page
    @pet.destroy
    redirect_to root_path, status: :see_other
  end

  private
  def pet_params
      params.require(:pet).permit(:name, :age, :animal, :color, :breed, :picture)
  end
  def set_page
    @pet = Pet.find(params[:id])
  end

end

