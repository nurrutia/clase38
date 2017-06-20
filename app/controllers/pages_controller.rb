class PagesController < ApplicationController
  def x
  end

  def new_user
	
	if params[:nombre].present? && params[:email].present? && params[:edad].present?
  	@user = User.new(nombre: params[:nombre], email: params[:email], edad: params[:edad]).save
  	redirect_to pages_x_path, alert:" Listo"
  	else
  	redirect_to pages_x_path, alert:" Ingrese datos"
  	end
  end
end
