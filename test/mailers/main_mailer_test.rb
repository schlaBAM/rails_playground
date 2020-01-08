require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "send_srm_email" do
    mail = MainMailer.send_srm_email
    assert_equal "Send srm email", mail.subject
    assert_equal ["technical-merchant-support@shopify.com"], mail.to
    assert_equal ["support-dash-email@shopify.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
