class DutiesController < ApplicationController
	def create
		@noc = Noc.find(params[:noc_id])
		@duty = @noc.duties.create(params[:duty])
		redirect_to noc_path(@noc)
	end
	
    def destroy
    	@noc = Noc.find(params[:noc_id])
    	@duty = @noc.duties.find(params[:id])
    	@duty.destroy
    	redirect_to noc_path(@noc)
    end
end