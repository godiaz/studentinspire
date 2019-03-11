# Preview all emails at http://localhost:3000/rails/mailers/employer_mailer
class EmployerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/employer_mailer/new_employer
  def new_employer
    EmployerMailer.new_employer
  end

end
