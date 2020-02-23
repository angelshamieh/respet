class AnimalsController < ApplicationController

  before_action :set_animal, only: [:show, :edit, :update]

  def index
    # /animals?status=3
    # 1. Find the matching Status
    @status = AnimalStatus.find(params[:status])
    # 2. Get all animals with the given status
    @animals = policy_scope(Animal).where(animal_status: @status)
  end

  # def lost
  #   @status = AnimalStatus.find(name: 'lost')
  #   @animals = policy_scope(Animal).where(animal_status: @status)
  # end

  def show
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
