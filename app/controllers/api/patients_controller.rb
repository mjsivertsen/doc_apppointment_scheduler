class Api::PatientsController < ApplicationController

  before_action :set_patient, only: [:show, :update, :destroy]

  def index
    patients = Patient.all
    render json: patients
  end

  def show
    render json: @patient
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient
    else
      render json: {errors: patient.errors}, status: 422 
    end
  end

  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: {errors: patient.errors}, status: 422 
    end
  end

  def destroy
    render json: @patient.destroy
  end

  private

  def patient_params
  params.require(:patient).permit(:name)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end 

end