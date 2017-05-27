class CartsController < ApplicationController
  def create
    @cart = Cart.new(ip: request.remote_ip)
    if @cart.save
      render :show, status: :created, location: @cart
    end
  end

  def destroy
  end
end
