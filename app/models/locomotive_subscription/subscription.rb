module LocomotiveSubscription
  class Subscription
    include Locomotive::Mongoid::Document
    include Locomotive
    field :email, type: String
    
    def self.send_news
      @emails = Subscription.all.map {|subs| subs.email}
      @news = Locomotive::ContentType.where(slug: 'news').first.entries.where(:updated_at.gte => Date.today-100.day)
      if @news.count > 0
        @email.each do |email|
          SenderMailer.send_news(email,@news).deliver
        end
      end
    end
  end
end
