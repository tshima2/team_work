class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def delegate_leader_mail(email, name)
    @email = email
    @team_name = name
    mail to: @email, subject: I18n.t('views.messages.delegate_leader')
  end
end
