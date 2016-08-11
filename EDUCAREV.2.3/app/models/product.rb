class Product < ActiveRecord::Base
  belongs_to :genero
  belongs_to :editorial
  belongs_to :marca
  belongs_to :proveedor
  has_many :entradas

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

def self.latest
  order(:updated_at).last
end

  def self.search(search)
    if search
      where('nombre LIKE ?', "%#{search}%")
    else
      all
    end

  end



  private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end

  end



end
