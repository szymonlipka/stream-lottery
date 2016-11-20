class VisitorsController < ApplicationController
  def index
    @lottery_tickets = params[:lottery_tickets] ? LotteryTicket.find(params[:lottery_tickets]) : LotteryTicket.limit(12).to_a
  end

  def choose_tickets
  end
end
