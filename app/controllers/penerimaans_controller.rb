class PenerimaansController < ApplicationController
  def index
  end

  def store
    @jalur = params[:jalur]

    @notes = Penerimaan.count
  
    session[:jalur] = @jalur
    session[:notes] = @notes += 1
    redirect_to step_2_path 
  end

  def storeBioSiswa
    @user = User.new(
      no_daftar: session[:notes],
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

    @penerimaan = Penerimaan.new(
      jalur: session[:jalur],
      notes: session[:notes]
    )
    @penerimaan.save
    
    redirect_to alamats_path(@user)
  end
  
  def save
    
  end
end
