class InstamsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_instam, only: [:edit, :update, :destroy]

  def index
   @instams = Instam.all
  end

  def new
    @instam = Instam.new
  end

  def create
    @instam = Instam.create(instams_params)
    if @instam.save
       redirect_to instams_path, notice: "画像を投稿しました！"
       NoticeMailer.sendmail_instam(@instam).deliver
    else
     render 'new'
    end
  end
  
  def edit
     @instam = Instam.find(params[:id])   
     redirect_to instams_path, notice: "画像を編集しました！"
  end 
  
  def update
    @instam = Instam.find(params[:id])   
    @instam.update(instams_params)
  end 

  def destroy
    @instam = Instam.find(params[:id])   
    @instam.destroy
    redirect_to instams_path, notice: "画像を削除しました！"
  end

  private
   def instams_params
      params.require(:instam).permit(:content)
   end
   
  def set_instam
   @instam = Instam.find(params[:id])
  end  
end
