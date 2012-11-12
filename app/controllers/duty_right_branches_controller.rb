class DutyRightBranchesController < ApplicationController
	def create
		@noc = Noc.find(params[:noc_id])
		@duty_right_branch = @noc.duty_right_branches.create(params[:duty_right_branch])
		redirect_to noc_path(@noc)
	end
	
    def destroy
    	@noc = Noc.find(params[:noc_id])
    	@duty_right_branch = @noc.duty_right_branches.find(params[:id])
    	@duty_right_branch.destroy
    	redirect_to noc_path(@noc)
    end
end