#encoding: utf-8
module LocomotiveSubscription
  class SenderMailer < ActionMailer::Base
    default from: "info@kdm69.ru",
            subject: "Все новости КДМ ТО"

    def send_news(email,news)
        @address = "http://198.199.124.29:7777"
        @news = news
        mail(to: email)
    end
    
  end
end
