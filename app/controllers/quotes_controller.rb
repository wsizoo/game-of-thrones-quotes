class QuotesController < ApplicationController
  before_action :set_quote, only: [:show]

  # GET /quotes
  # GET /quotes.json
  def index
    @character = params[:char]
    if @character.nil?
      @quote = Quote.offset(rand(Quote.count)).first
    else
      @quotes = Quote.where("lower(character) like ?", "%#{@character.downcase}%")
      @quote = @quotes.offset(rand(@quotes.count)).first
    end
    if @quote.nil?
      redirect_to quotes_path
    else
      @quote_output = []
      @quote_output << @quote.quote << @quote.character
    end
  end

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
