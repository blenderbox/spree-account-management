Spree::UsersHelper.class_eval do

  def billing
    @user.billing_address
  end

  def shipping
    @user.shipping_address
  end

end
