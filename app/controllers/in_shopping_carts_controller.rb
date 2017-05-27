class InShoppingCartsController < ApplicationController
  before_action :set_in_shopping_cart, only: [:show, :update, :destroy]

  # GET /in_shopping_carts
  # GET /in_shopping_carts.json
  def index
    @in_shopping_carts = InShoppingCart.all
  end

  # GET /in_shopping_carts/1
  # GET /in_shopping_carts/1.json
  def show
  end

  # POST /in_shopping_carts
  # POST /in_shopping_carts.json
  def create
    @in_shopping_cart = InShoppingCart.new(in_shopping_cart_params)

    if @in_shopping_cart.save
      render :show, status: :created, location: @in_shopping_cart
    else
      render json: @in_shopping_cart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /in_shopping_carts/1
  # PATCH/PUT /in_shopping_carts/1.json
  def update
    if @in_shopping_cart.update(in_shopping_cart_params)
      render :show, status: :ok, location: @in_shopping_cart
    else
      render json: @in_shopping_cart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /in_shopping_carts/1
  # DELETE /in_shopping_carts/1.json
  def destroy
    @in_shopping_cart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_shopping_cart
      @in_shopping_cart = InShoppingCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_shopping_cart_params
      params.require(:in_shopping_cart).permit(:product_id, :cart_id)
    end
end
