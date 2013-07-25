module LocomotiveSubscription
  class SenderMailer < ActionMailer::Base
    default from: "info@kdm69.ru",
            subject: "Все новости КДМ ТО"

    def send_news
        @address = "http://198.199.124.29:7777"
        @emails = Subscription.all.map{ |subs| subs.email }
        @news = Locomotive::ContentType.where(slug: 'news').first.entries.where(:updated_at.gte => Date.today-100.day)
        if @news.count > 0
            @emails.each do |email|
                mail(to: email).deliver!
            end
        end
        
    end
  end
end
