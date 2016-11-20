class LotteryTicket < ApplicationRecord
  include Paperclip::Glue

  has_attached_file :image, styles: { medium: "200x300>" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.find_tickets(ids)
    (ids ? LotteryTicket.limit(12).find(ids) : LotteryTicket.all.limit(12)).flat_map{|ticket| [ticket] * ticket.force}.shuffle
  end
end
