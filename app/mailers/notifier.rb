class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def purchase_notification(person, product)
    recipients "#{person.name} <#{person.email}>"
    from "Red Ice"
    subject "#{product} - Thank you for your purchase"
    sent_on Time.now
    body { :person => person }
  end
end
