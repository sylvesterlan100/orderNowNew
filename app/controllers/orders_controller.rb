class OrdersController < ApplicationController

		

	def index
		@orders=Order.all
		@order=current_user.orders.build
	end

	def new
		@order = current_user.orders.build
	
	end

	def create
		@order = current_user.orders.build()
		if @order.save
      		redirect_to orders_path, notice: "Order was successfully created."
   		else
    		render action: 'new'
    	end
	end

	def edit
	end

	def update
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		redirect_to orders_path
	end

	def show
		@order=current_user.orders.find_by(id: params[:id])

	end

  	private
    def set_order
      @order = Order.find(params[:id])
    end

    def correct_user
      @order=current_user.orders.find_by(id: params[:id])
      redirect_to orders_path, notice: "Not authorized" if @order.nil?
    end
	


end
