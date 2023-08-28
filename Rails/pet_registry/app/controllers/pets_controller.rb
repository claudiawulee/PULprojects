class PetsController < ApplicationController
  def index
    #fetches all pets from the database
    @pets = Pet.all
  end

  def show
    set_page
    # @activity = @pet.activities.build
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
    byebug
    #figure out how to add activities to each pet
    # @pet.activities << ID
    #check which activities are already added
    #removing activities (unselecting)
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
      params.require(:pet).permit(:name, :age, :animal, :color, :breed, :picture, activity_ids:[])
  end
  def activities_params
    return params[:pet_activities]
  end
  def set_page
    @pet = Pet.find(params[:id])
    # @activities = Activity.find(1)
  end

end

