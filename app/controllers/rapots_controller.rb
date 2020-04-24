class RapotsController < ApplicationController
  def index
    id = params[:user_id]

    session[:user_id] = id
  end

  def store
    @rapot = Rapot.new(
      user_id: session[:id_user],
      pai_71: params[:pai_71],
      pai_72: params[:pai_72],
      pai_81: params[:pai_81],
      pai_82: params[:pai_82],
      pai_91: params[:pai_91],
      indo_71: params[:indo_71],
      indo_72: params[:indo_72],
      indo_81: params[:indo_81],
      indo_82: params[:indo_82],
      indo_91: params[:indo_91],
      ing_71: params[:ing_71],
      ing_72: params[:ing_72],
      ing_81: params[:ing_81],
      ing_82: params[:ing_82],
      ing_91: params[:ing_91],
      mtk_71: params[:mtk_71],
      mtk_72: params[:mtk_72],
      mtk_81: params[:mtk_81],
      mtk_82: params[:mtk_82],
      mtk_91: params[:mtk_91],
      ipa_71: params[:ipa_71],
      ipa_72: params[:ipa_72],
      ipa_81: params[:ipa_81],
      ipa_82: params[:ipa_82],
      ipa_91: params[:ipa_91],
      ips_71: params[:ips_71],
      ips_72: params[:ips_72],
      ips_81: params[:ips_81],
      ips_82: params[:ips_82],
      ips_91: params[:ips_91],
      prestasi: params[:prestasi],
      info: params[:info]   
    )
    @rapot.save

    redirect_to finishs_path(@rapot[:user_id])
  end
end
