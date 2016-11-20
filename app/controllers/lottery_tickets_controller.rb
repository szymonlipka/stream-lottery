class LotteryTicketsController < ApplicationController
  before_action :set_lottery_ticket, only: [:show, :edit, :update, :destroy]

  # GET /lottery_tickets
  # GET /lottery_tickets.json
  def index
    @lottery_tickets = LotteryTicket.all
  end

  # GET /lottery_tickets/1
  # GET /lottery_tickets/1.json
  def show
  end

  # GET /lottery_tickets/new
  def new
    @lottery_ticket = LotteryTicket.new
  end

  # GET /lottery_tickets/1/edit
  def edit
  end

  # POST /lottery_tickets
  # POST /lottery_tickets.json
  def create
    @lottery_ticket = LotteryTicket.new(lottery_ticket_params)

    respond_to do |format|
      if @lottery_ticket.save
        format.html { redirect_to @lottery_ticket, notice: 'Lottery ticket was successfully created.' }
        format.json { render :show, status: :created, location: @lottery_ticket }
      else
        format.html { render :new }
        format.json { render json: @lottery_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lottery_tickets/1
  # PATCH/PUT /lottery_tickets/1.json
  def update
    respond_to do |format|
      if @lottery_ticket.update(lottery_ticket_params)
        format.html { redirect_to @lottery_ticket, notice: 'Lottery ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @lottery_ticket }
      else
        format.html { render :edit }
        format.json { render json: @lottery_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lottery_tickets/1
  # DELETE /lottery_tickets/1.json
  def destroy
    @lottery_ticket.destroy
    respond_to do |format|
      format.html { redirect_to lottery_tickets_url, notice: 'Lottery ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lottery_ticket
      @lottery_ticket = LotteryTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lottery_ticket_params
      params.require(:lottery_ticket).permit(:name, :force, :image)
    end
end
