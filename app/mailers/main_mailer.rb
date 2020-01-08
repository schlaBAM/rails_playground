class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.send_srm_email.subject
  #
  def send_srm_email
    @greeting = "Hi" #state of TMS variable passed from submit button

    mail to: "technical-merchant-support@shopify.com"
    mail subject: "Send srm email to"
    mail from: "support-dash-email@shopify.com"
  end
end
