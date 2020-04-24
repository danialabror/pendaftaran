class AlamatsController < ApplicationController
  def index
    id = params[:id]

    session[:id_user] = id
  end

  def store

    @alamat = Alamat.new(
      user_id: session[:id_user],
      kp: params[:kp],
      rt: params[:rt],
      rw: params[:rw],
      kelurahan: params[:kelurahan],
      kecamatan: params[:kecamatan],
      kotakabupaten: params[:kotakabupaten],
      provinsi: params[:provinsi],
      kodepos: params[:kodepos],
      telp_rumah: params[:telp_rumah],
      email: params[:email],
      tinggal_dengan: params[:tinggal_dengan]
    )
    @alamat.save

    redirect_to kesehatans_path(@alamat[:user_id])
  end

end
