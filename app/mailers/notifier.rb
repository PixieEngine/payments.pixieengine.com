class Notifier < ActionMailer::Base
  default from: "daniel@pixieengine.com"

  def purchase_notification(person, product)
    @person = person
    @product = product

    mail(:to => person.email, :subject => "Thank you for your purchase")
  end
end
