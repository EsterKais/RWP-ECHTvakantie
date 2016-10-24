class VacationsController < ApplicationController

    def index
        @vacations = Theme.all
    end

    def new
        @vacation = Theme.new
    end

    def create
        @vacation = Theme.new( vacation_params )

        if @vacation.save
            redirect_to vacation_path(@vacation)
        else
            render 'new'
        end
    end


    def show
        @vacation = Theme.find_by_title(vacation_params[:title])
    end

    def destroy
        @vacation = Theme.find_by_title(vacation_params[:title])

        @vacation.destroy

        redirect_to root_path
    end

    def edit
        @theme = Theme.find_by_title(vacation_params[:title])
    end

    def update
        @vacation = Theme.find_by_title(vacation_params[:title])

        if @vacation.update_attributes( vacation_params )
            redirect_to vacation_path(@theme), notice: "Update succesvol"
        else
            render :edit
        end
    end

    private


    def vacation_params
        params.require(:vacation).permit(:title, :country, :region, :price, :description, :show)
    end

end