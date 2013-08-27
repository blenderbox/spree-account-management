Spree::User.class_eval do

  #validates_numericality_of :phone, allow_nil: true, on: :update

  # new users automatically generate an incomplete order upon creation
  # that we can attach an initial address to if they choose to fill this out before
  # placing an actual order

end
