class MedicalCentersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @centers = MedicalCenter.geocoded

    @markers = @centers.map do |center|
      {
        lat: center.latitude,
        lng: center.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { center: center }),
        image_url: helpers.asset_url('paw-solid.svg')
      }

    end
  end
end
