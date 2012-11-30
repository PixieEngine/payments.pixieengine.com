require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  def test_purchase_notification
    person = Person.new(:name => "John Smith", :email => "coolio@test.example.com")

    # Send the email, then test that it got queued
    email = Notifier.purchase_notification(person, "Test Product").deliver
    assert !ActionMailer::Base.deliveries.empty?

    assert_equal [person.email], email.to

    assert email.body.to_s.length > 25
  end
end
