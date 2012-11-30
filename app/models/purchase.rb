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

    person = Person.new(:name => name, :email => email)
    Notifier.purchase_notification(person, product).deliver

  end
end
