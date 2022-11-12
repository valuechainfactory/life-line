class NextOfKinsController < ApplicationController
    def new
        @next_of_kin = NextOfKin.new
    end

    def create
        @next_of_kin = NextOfKin.new(next_of_kin_params)
        if @next_of_kin.save
            redirect_to @next_of_kin
        else
            render 'new'
        end
    end

    def show
        @next_of_kin = NextOfKin.find(params[:id])
    end

    def index
        @next_of_kins = NextOfKin.all
    end

    def edit
        @next_of_kin = NextOfKin.find(params[:id])
    end

    def update
        @next_of_kin = NextOfKin.find(params[:id])
        if @next_of_kin.update(next_of_kin_params)
            redirect_to @next_of_kin
        else
            render 'edit'
        end
    end

    def destroy
        @next_of_kin = NextOfKin.find(params[:id])
        @next_of_kin.destroy
        redirect_to next_of_kins_path
    end

    private
        def next_of_kin_params
            params.require(:next_of_kin).permit(:first_name, :second_name, :phone_number)
        end
end
