class PedidosController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :ensure_cart_isnt_empty, only: :new
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.all
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show

  end


  def pedidos
    @cart_id = params[:cart_id]
    @cart = LineItem.find(@cart_id)
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)
    @pedido.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @pedido.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        session[:pedido_id] = @pedido.id
        PedidoMailer.received(@pedido).deliver_later
        format.html { redirect_to page_welcome_url, notice:
            'Gracias por tu compra.' }
        format.json { render :show, status: :created,
                             location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors,
                             status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end



  private
  def ensure_cart_isnt_empty
    if @cart.line_items.empty?
      redirect_to page_welcome_url, notice: 'Tu carrito está vacio'
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:name, :address, :email, :pay_type, :cart_id)
    end
end
