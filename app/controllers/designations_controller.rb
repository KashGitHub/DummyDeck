class DesignationsController < ApplicationController
	def create
		@noc = Noc.find(params[:noc_id])
		@designation = @noc.designations.create(params[:designation])
		redirect_to noc_path(@noc)
	end
	
	def destroy
    	@noc = Noc.find(params[:noc_id])
    	@designation = @noc.designations.find(params[:id])
    	@designation.destroy
    	redirect_to noc_path(@noc)
  end
  
end
