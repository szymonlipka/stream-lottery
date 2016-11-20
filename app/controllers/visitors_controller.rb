class VisitorsController < ApplicationController
  def index
    @lottery_tickets = LotteryTicket.all
  end
end
