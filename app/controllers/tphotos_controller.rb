class TphotosController < ApplicationController
  def destroy
    @tphoto = Tphoto.find(params[:id])
    @theme = @tphoto.theme

    @tphoto.destroy

    redirect_to edit_theme_path(@theme), notice: "Photo successfully removed"
  end
end
