require 'active_model/serializers/xml'
class Pedido < ActiveRecord::Base
  include ActiveModel::Serializers::Xml
  has_many :line_items, dependent: :destroy

  enum pay_type: {
      "Cheque"          => 0,
      "Tarjeta de Crédito"    => 1,
      "Orden de Compra" => 2
  }


  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end