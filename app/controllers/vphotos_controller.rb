class VphotosController < ApplicationController

  def destroy
    @vphoto = Vphoto.find(params[:id])
    @vacation = @vphoto.vacation

    @vphoto.destroy

    redirect_to edit_vacation_path(@vacation), notice: "Foto succesvol verwijdert"
  end
end
