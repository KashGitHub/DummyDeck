class TitlesController < ApplicationController
	def create
		@noc = Noc.find(params[:noc_id])
		@title = @noc.titles.create(params[:title])
		redirect_to noc_path(@noc)
	end
	
    def destroy
    	@noc = Noc.find(params[:noc_id])
    	@title = @noc.titles.find(params[:id])
    	@title.destroy
    	redirect_to noc_path(@noc)
    end
  
end
