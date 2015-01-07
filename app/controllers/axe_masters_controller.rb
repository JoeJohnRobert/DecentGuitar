class AxeMastersController < ApplicationController
  expose(:axe_master)
  expose(:axe_masters) { AxeMaster.all }
  expose(:guitar) #, finder_parameter: :Guitar_id)

end
