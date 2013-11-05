class Notifications < ActionMailer::Base
  default from: "tasklists@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_pledge.subject
  #
  def new_tasklist(tasklist)
    @greeting = "Hi"
    @id = tasklist.id

    mail to: tasklist.user.email
  end
end
