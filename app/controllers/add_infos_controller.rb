class AddInfosController < ApplicationController
def create
		@noc = Noc.find(params[:noc_id])
		@add_info = @noc.add_infos.create(params[:add_info])
		redirect_to noc_path(@noc)
	end
	
	def destroy
    	@noc = Noc.find(params[:noc_id])
    	@add_info = @noc.add_infos.find(params[:id])
    	@add_info.destroy
    	redirect_to noc_path(@noc)
  end
end
