class TalukasController < ApplicationController
  def index
    @talukas= Taluka.all
  end
  
  def show
    @taluka = Taluka.find(params[:id])
  end

  def new
    @taluka = Taluka.new
  end

  def create
    @taluka = Taluka.new(taluka_params)
    if @taluka.save 
      redirect_to talukas_path
    else
      render :new 
    end
  end

  def edit
    @taluka = Taluka.find(params[:id])
  end

  def update
    @taluka = Taluka.find(params[:id])
    if @taluka.update(taluka_params)
      redirect_to talukas_path
    else
      render :edit
    end
  end

  def destroy
    @taluka = Taluka.find(params[:id]) 
    @taluka.destroy
    redirect_to talukas_path
  end

  private
  def taluka_params
    params.require(:taluka).permit(:name, :state_id, :district_id)
  end
end
