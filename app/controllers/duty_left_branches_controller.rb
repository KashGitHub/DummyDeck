class DutyLeftBranchesController < ApplicationController
def create
		@noc = Noc.find(params[:noc_id])
		@duty_left_branch = @noc.duty_left_branches.create(params[:duty_left_branch])
		redirect_to noc_path(@noc)
	end
	
    def destroy
    	@noc = Noc.find(params[:noc_id])
    	@duty_left_branch = @noc.duty_left_branches.find(params[:id])
    	@duty_left_branch.destroy
    	redirect_to noc_path(@noc)
    end
end
