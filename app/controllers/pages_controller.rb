class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @adopted = AnimalStatus.find_by("status = 'adopted'").id
    @reunited = AnimalStatus.find_by("status = 'reunited'").id
    lost = AnimalStatus.find_by("status = 'lost'").id
    adopt = AnimalStatus.find_by("status = 'adopt'").id
    if current_user.nil? || Animal.where(location: "#{current_user.location}", animal_status_id: "#{lost}").count < 1
      @lost_animals = Animal.where(animal_status_id: "#{lost}").order(created_at: :desc).take(5)
    else
      @lost_animals = Animal.where(location: "#{current_user.location}", animal_status_id: "#{lost}").take(5)
    end
    @adopt_animals = Animal.where(animal_status_id: "#{adopt}").order(created_at: :desc).take(5)
  end
end
