class NextOfKinsController < ApplicationController
    def index  
        @patient = Patient.find(params[:patient_id])
        @next_of_kins = @patient.next_of_kins
    end

    def new
        @next_of_kin = NextOfKin.new
    end
    
    def create
        @next_of_kin = NextOfKin.new(next_of_kin_params)
        if @next_of_kin.save
            flash[:notice] = "Next of kin was successfully created"
            redirect_to root_path
        else
            render :new
        end

        
    end
    
    private
    
    def next_of_kin_params
        params.require(:next_of_kin).permit(:first_name, :last_name, :relationship, :phone_number, :patient_id)
    end
    
end
