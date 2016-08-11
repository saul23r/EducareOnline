class PedidoMailer < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pedido_mailer.received.subject
  #
  def received(pedido)
    @pedido = pedido

    mail to: pedido.email, subject: 'Confirmación del Pedido'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.pedido_mailer.shipped.subject
  #
  def shipped(pedido)
    @pedido = pedido

    mail to: pedido.email, subject: 'Orden Enviada'
  end
end
