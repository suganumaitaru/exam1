class BoyattersController < ApplicationController
   before_action :set_boyatter, only: [:edit, :update, :destroy]
   
  def index
    @boyatters = Boyatter.all
  end
  
  def new
    if params[:back]
      @boyatter = Boyatter.new(boyatters_params)
    else
      @boyatter = Boyatter.new
    end
  end
  
  def create
    @boyatter = Boyatter.create(boyatters_params)
    if @boyatter.save
      redirect_to boyatters_path, notice: "ツイートしました！"
    else
      render 'new'
    end
  end
  
  def edit 
  end

  def update
    @boyatter.update(boyatters_params)
    if @boyatter.save 
    redirect_to boyatters_path,notice: "修正しました！"
  else
    render 'edit'
    end
  end
  
  def destroy
    @boyatter.destroy
    redirect_to boyatters_path, notice: "削除しました！"
  end
  
  def confirm
    @boyatter = Boyatter.new(boyatters_params)
    render :new if @boyatter.invalid?
  end
  

  
   private
   def boyatters_params
     params.require(:boyatter).permit(:content)
   end

   def set_boyatter
     @boyatter = Boyatter.find(params[:id])
   end
  
end
