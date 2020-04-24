class FinishsController < ApplicationController
  def index
    user_id = params[:user_id]
    
    @user = User.find(user_id)
    @penerimaan = Penerimaan.find(@user.no_daftar)
    @alamat = Alamat.find_by(user_id: user_id)
    @kesehatan = Kesehatan.find_by(user_id: user_id)
    @ortu = Ortu.find_by(user_id: user_id)
    @rapot = Rapot.find_by(user_id: user_id)

  end
end
