class AddAvatarColumnsToLotteryTickets < ActiveRecord::Migration[5.0]
  def up
    add_attachment :lottery_tickets, :image
  end
  def down
    remove_attachment :lottery_tickets, :image
  end
end
