class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @adopted = AnimalStatus.find_by("status = 'adopted'").id
    @reunited = AnimalStatus.find_by("status = 'reunited'").id
    lost = AnimalStatus.find_by("status = 'lost'").id
    adopt = AnimalStatus.find_by("status = 'adopt'").id
    @lost_animals = Animal.find_by(location: "#{current_user.location}", animal_status_id: "#{lost}") #.take(5)
    @adopt_animals = Animal.find_by("animal_status_id = #{adopt}").order(id: :desc) #.take(5)
  end
end
