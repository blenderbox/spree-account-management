Spree::User.class_eval do

  attr_accessible :ship_address_id, :bill_address_id

  def last_order
    orders.complete.first
  end

  def shipping_address
    last_order.ship_address
  end

  def billing_address
    last_order.bill_address
  end

  def first_name
    billing_address.first_name
  end

  def last_name
    billing_address.last_name
  end

  def phone
    billing_address.phone
  end

  def order_addresses
    orders.reject do |o|
      o.ship_address.nil? || o.ship_address.address1.nil?

    end.collect do |o|
      [ o.ship_address.address1, o.ship_address.id ]

    end.unshift(["New Address", 0])
  end
end
