class AnimalsController < ApplicationController

  before_action :set_animal, only: [:show, :edit, :update]

  def index
    # /animals?status=3
        # 1. Find the matching Status
    if !params[:status].nil?
      @status = params[:status]
        # 2. Get all animals with the given status
      @animals = policy_scope(Animal).where(animal_status: @status)
    else
      @animals = policy_scope(Animal)
    end
  end


  def show
    @animal_type = @animal.animal_type.name
    # @animal_status = AnimalStatus.find(@animal.animal_status_id).status
    @animal_status = @animal.animal_status.status
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    authorize @animal
    if @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

private

def animal_params
  params.require(:animal).permit(:animal_type_id, :animal_status_id, :title, :breed, :location, :age, :gender, :description)

  end

  def set_animal
    @animal = Animal.find(params[:id])
    authorize @animal
  end
end
