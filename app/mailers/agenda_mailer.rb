class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def destroy_mail(emails, title)
    @agenda_title = title
    emails.each do |email|
      mail(to: email,subject: I18n.t('views.messages.delete_agenda'))
    end
  end

end
