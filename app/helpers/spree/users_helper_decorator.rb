Spree::UsersHelper.class_eval do

  def address_fields
    {
      address1: "street address",
      address2: "street address (cont'd)",
      city: "city",
      state: "state",
      zipcode: "zipcode"
    }
  end

end
