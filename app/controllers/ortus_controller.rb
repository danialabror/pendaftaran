class OrtusController < ApplicationController
  def index
    id = params[:user_id]

    session[:user_id] = id
  end

  def store
    @ortu = Ortu.new(
      user_id: session[:id_user],
      nama_a: params[:nama_a],
      ttl_a: params[:ttl_a],
      pekerjaan_a: params[:pekerjaan_a],
      pendidikan_a: params[:pendidikan_a],
      kewarganegaraan_a: params[:kewarganegaraan_a],
      agama_a: params[:agama_a],
      telp_a: params[:telp_a],
      nama_i: params[:nama_i],
      ttl_i: params[:ttl_i],
      pekerjaan_i: params[:pekerjaan_i],
      pendidikan_i: params[:pendidikan_i],
      kewarganegaraan_i: params[:kewarganegaraan_i],
      agama_i: params[:agama_i],
      telp_i: params[:telp_i],
      nama_w: params[:nama_w],
      ttl_w: params[:ttl_w],
      pekerjaan_w: params[:pekerjaan_w],
      pendidikan_w: params[:pendidikan_w],
      kewarganegaraan_w: params[:kewarganegaraan_w],
      agama_w: params[:agama_w],
      telp_w: params[:telp_w],
    )
    @ortu.save

    redirect_to rapots_path(@ortu[:user_id])
  end
end
