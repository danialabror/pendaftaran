class UsersController < ApplicationController
  def index
    
  end

  def store
    @user = User.new(
      no_daftar: params[:no_daftar],
      nama_lengkap: params[:nama_lengkap],
      nama_panggil: params[:nama_panggil],
      jk: params[:jk],
      ttl: params[:ttl],
      agama: params[:agama],
      cita: params[:cita],
      hoby: params[:hoby],
      jml_saudara: params[:jml_saudara],
      berat: params[:berat],
      tinggi: params[:tinggi],
      goldar: params[:goldar],
      foto: params[:foto]
    )

    @user.save

    redirect_to step_3_path
  end

end
