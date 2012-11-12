class RequirementsController < ApplicationController
	def create
		@noc = Noc.find(params[:noc_id])
		@requirement = @noc.requirements.create(params[:requirement])
		redirect_to noc_path(@noc)
	end
	
    def destroy
    	@noc = Noc.find(params[:noc_id])
    	@requirement = @noc.requirements.find(params[:id])
    	@requirement.destroy
    	redirect_to noc_path(@noc)
    end
end
