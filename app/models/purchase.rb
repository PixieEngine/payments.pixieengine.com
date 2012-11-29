class Purchase < ActiveRecord::Base
  attr_accessible :email, :name, :product, :token

  after_create :make_payment

  def make_payment
    price = 1500

    Stripe::Charge.create(
      :amount => price,
      :currency => "usd",
      :card => token,
      :description => "#{email} :: #{product}"
    )
  end
end
