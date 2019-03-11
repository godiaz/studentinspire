class PagesController < ApplicationController
  def home
  end

  def subscribe
    email = params[:email]
    gibbon = Gibbon::Request.new
    body = {email_address: email, status: 'subscribed'}
    begin
      gibbon.lists('54c11512d5').members.create(body: body)
      flash[:notice] = 'Thank you for subscribing to the mailing list'
    rescue Gibbon::MailChimpError => e
      case e.title
      when 'Member Exists'
        flash[:error] = 'You are already subscribed to the mailing list'
      else
        flash[:error] = 'There was a problem subscribing you to the mailing list'
      end
    end
    redirect_to root_path
  end
end
