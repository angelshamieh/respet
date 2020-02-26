class MedicalCentersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @centers = MedicalCenter.geocoded

    @markers = @centers.map do |center|
      {
        lat: center.latitude,
        lng: center.longitude
      }

    end
  end
end
