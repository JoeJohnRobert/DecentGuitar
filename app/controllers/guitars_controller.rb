class GuitarsController < ApplicationController

  expose(:axe_master) 
  expose(:guitars) 
  expose(:guitar, attributes: :guitar_params) 

  def new
  end  

  def create
    if guitar.save
      redirect_to axe_master
    else
      redirect_to root_path, notice: "Sorry could'nt save!"
    end
  end

  def update
    # binding.pry
    if guitar.save
      redirect_to axe_master
    else  
      redirect_to axe_master, notice: "Sorry could'nt save!"
    end
  end
end

  private
    def guitar_params
      params.require(:guitar).permit(:name, :make, :model, :axe_master_id)
    end
