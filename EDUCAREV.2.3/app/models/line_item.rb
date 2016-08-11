class LineItem < ActiveRecord::Base

  belongs_to :pedido
  belongs_to :product
  belongs_to :cart

  def self.search(search)
    if search
      where('pedido_id = ?', search)
    end
  end

  def total_price
    product.precio * quantity
  end
end
