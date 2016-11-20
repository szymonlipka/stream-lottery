class CreateLotteryTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :lottery_tickets do |t|
      t.string :name
      t.integer :force

      t.timestamps
    end
  end
end
