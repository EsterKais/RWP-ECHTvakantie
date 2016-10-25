class VacationsController < ApplicationController

    def index
        @vacations = Vacation.all
    end

    def new
        @vacation = Vacation.new
    end

    def create
        @vacation = Vacation.new( vacation_params )

        if @vacation.save
            redirect_to vacation_path(@vacation)
        else
            render 'new'
        end
    end


    def show
        @vacation = Vacation.find_by_tit(params[:title])
    end

    def destroy
        @vacation = Vacation.find_by_title(params[:title])

        @vacation.destroy

        redirect_to root_path
    end

    def edit
        @theme = Vacation.find_by_title(params[:title])
    end

    def update
        @vacation = Vacation.find_by_title(params[:title])

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