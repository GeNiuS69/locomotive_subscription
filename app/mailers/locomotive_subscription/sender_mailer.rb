#encoding: utf-8
module LocomotiveSubscription
  class SenderMailer < ActionMailer::Base
    default from: "info@kdm69.ru",
            subject: "Все новости КДМ ТО"

    def send_news(email,news)
        @address = "http://kdm69.ru"
        @news = news
        mail(to: email)
    end
    
  end
end
