require 'test_helper'

class EmployerMailerTest < ActionMailer::TestCase
  test "new_employer" do
    mail = EmployerMailer.new_employer
    assert_equal "New employer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
