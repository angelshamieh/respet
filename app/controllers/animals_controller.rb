class AnimalsController < ApplicationController
  DEFAULT_ANIMAL_STATUS = 'lost'

  before_action :set_animal, only: [:show, :edit, :update]
  before_action :set_animal_status, only: :index

  def index
      # 2. Get all animals with the given status
    @animals = policy_scope(Animal).where(animal_status: @status)
  end


  def show
    @animal_type = @animal.animal_type.name
    # @animal_status = AnimalStatus.find(@animal.animal_status_id).status
    @animal_status = @animal.animal_status.status
    @first_photo = @animal.photos.first
    @remaining_photos = @animal.photos.reject{|photo| photo == @first_photo}
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.animal_status = AnimalStatus.find_by status: params[:status]
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
    params.require(:animal).permit(:animal_type_id, :animal_status_id, :title, :breed, :location, :age, :gender, :description, photos: [])
  end

  def set_animal
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def set_animal_status
    # /animals?status=3
        # 1. Find the matching Status
    params[:status] = DEFAULT_ANIMAL_STATUS if params[:status].nil?

    @status = AnimalStatus.find_by(status: params[:status])
    if @status.nil?
      @status = AnimalStatus.find_by(status: DEFAULT_ANIMAL_STATUS)
    end
  end
end
