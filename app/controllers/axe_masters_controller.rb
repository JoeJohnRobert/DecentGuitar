class AxeMastersController < ApplicationController
  expose(:axe_master)
  expose(:axe_masters)
  expose(:guitars) #{ axe_master.guitars }
  # expose(:guitar) #, finder_parameter: :Guitar_id)

end
