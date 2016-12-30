require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  test "contact_users" do
    mail = MessageMailer.contact_users
    assert_equal "Contact users", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
