class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def create
        @patient = Patient.new(patient_params)
        respond_to do |format|
            if @patient.save
                format.html { redirect_to patients_path, notice: 'Patient was successfully created.'}
            else
                flash[:alert] = "Patient was not created."
                render :new, locals: { patient: @patient }
            end
        end
    end

    def update
        @patient = Patient.find(params[:id])
        respond_to do |format|
            if @patient.update(patient_params)
                format.html { redirect_to patients_path, notice: 'Patient was successfully updated.' }
            else
                flash[:alert] = "Patient was not updated."
                render :edit, locals: { patient: @patient }
            end
        end
    end

    private

    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :national_id, :image, :telephone, :gender, :doctor_id)
    end
end