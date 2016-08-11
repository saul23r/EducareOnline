class AdminController < ApplicationController
  def welcome
    @products = Product.all
    @products = Product.order(:nombre)
  end

  def dida

    @products = Product.all


  end

  def libro

    @products = Product.all



  end

  def show
    @products = Product.all
    @products = Product.find(params[:id])
  end


  def pro
  end

  def venta
  end
end
