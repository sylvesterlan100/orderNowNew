class SubordersController < ApplicationController

	def index
		@suborders=Suborder.all
	end

	def new
		@suborder=current_user.suborders.build
	end

	def create
		
		@suborder = current_user.suborders.build(suborder_params)
		@suborder.save
		redirect_to suborders_path
	end

	def edit
	end

	def update
	end

	def destroy
		@suborder = Suborder.find(params[:id])
		@suborder.destroy
		redirect_to suborders_path

	end

	def show
	end


private
def suborder_params
      params.require(:suborder).permit(:item, :amount, :price)
    end

end
