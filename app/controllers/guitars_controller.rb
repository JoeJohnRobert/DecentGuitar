class GuitarsController < ApplicationController

  expose(:axe_master) 
  expose(:guitar, attributes: :guitar_params) 

  def create
    if guitar.save
      redirect_to axe_master, notice: "Axe saved!"
    else
      render :new 
    end
  end

  def update
    if guitar.save
      redirect_to axe_master, notice: "Axe updated!"
    else  
      render :show
    end
  end

  def destroy
    if guitar.destroy
      redirect_to axe_master, notice: "Axe deleted!"
    else
      redirect_to axe_master
    end
  end
        
  private
    def guitar_params
      params.require(:guitar).permit(:make, :model, :color, :axe_master_id)
    end

end
