class PageController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def welcome

    @products = Product.order(:nombre)
    @products = Product.search(params[:search])

  end

  def show

    @products = Product.all
    @products = Product.find(params[:id])

  end

  def libro
    @products = Product.order(:nombre)
    @products = Product.search(params[:search])
  end

  def dida

    @products = Product.order(:nombre)
    @products = Product.search(params[:search])
  end


  def about


  end


end
