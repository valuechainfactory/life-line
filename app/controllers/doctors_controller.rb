class DoctorsController < ApplicationController
  before_action :authenticate_doctor!
  # def index
  #   @doctors = Doctor.all
  # end
end
