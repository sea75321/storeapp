class OrdersController < ApplicationController

	def index
		@orders = Order.includes(:product).all
	end

	def show
		@order = Order.includes(:product).find(params[:id])
	end

	def new
	end

	def create
	end

	def destroy
	end
	
end