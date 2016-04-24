class QuotesController < ApplicationController
  before_action :set_quote, only: [:show]
  # respond_to :json

  # GET /quotes
  # GET /quotes.json
  def index
    @quote = Quote.offset(rand(Quote.count)).first
    @quote_output = []
    @quote_output << @quote.quote << @quote.character
  end

  # def create
  #   @quote = Quote.new(quote_params)
  #
  #   respond_to do |format|
  #     if @quote.save
  #       format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
  #       format.json { render :show, status: :created, location: @quote }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @quote.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.fetch(:quote, {})
    end
end
