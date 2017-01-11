class MessageMailer < ApplicationMailer
  default from: "pagina.taxi.5.estrelas@gmail.com"

  def contact_users(contact)
    @contact = contact

    mail to: "taxicincoestrelas@gmail.com", subject: "Mensagem através da página web"
  end
end
