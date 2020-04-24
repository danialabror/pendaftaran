class KesehatansController < ApplicationController
  def index
    id = params[:user_id]

    session[:user_id] = id
  end

  def store
    @kesehatan = Kesehatan.new(
      user_id: session[:user_id],
      tbc: params[:tbc],
      malaria: params[:malaria],
      chotipa: params[:chotipa],
      cacar: params[:cacar],
      lainnya: params[:lainnya],
      kelainan_jasmani: params[:kelainan_jasmani]
    )
    @kesehatan.save 

    redirect_to ortus_path(@kesehatan[:user_id])
  end
end
