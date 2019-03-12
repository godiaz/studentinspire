class EmployerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employer_mailer.new_employer.subject
  #
  def new_employer(employer)
    @employer = employer

    mail to: "to@example.org", subject: 'New employer signed up' #This needs to be client's email!!!!!
  end
end
