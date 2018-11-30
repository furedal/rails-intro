class SupplierRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :supplier

  before_create :ensure_supplier
  def ensure_supplier
    supplier = Supplier.find_by(id: self.supplier_id) unless self.supplier_id.blank?
    supplier.create(
      name: self.name
    ) unless supplier || self.name.blank?

    raise Exceptions::BadRequest("Supplier is required") unless supplier
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end
