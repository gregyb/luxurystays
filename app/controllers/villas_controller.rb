class VillasController < ApplicationController


  def index
    @villas = Villa.all
  end

  def show
    @villa = Villa.find(params[:id])
  end

  def new
    @villa = Villa.new
  end

  def create
   @villa = Villa.new(villa_params)
   @villa.save
   redirect_to villa_path(@villa)
 end

 def edit
  @villa = Villa.find(params[:id])
 end

 def update
  @villa = Villa.find(params[:id])
  @villa.update(villa_params)
 end

 def destroy
  @villa = Villa.find(params[:id])
  @villa.destroy
  redirect_to villas_path
 end

 private

 def villa_params
  params.require(:villa).permit(:title, :price, :city, :description)
 end
end
