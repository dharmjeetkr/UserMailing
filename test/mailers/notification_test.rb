require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "sending" do
    mail = Notification.sending
    assert_equal "Sending", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
