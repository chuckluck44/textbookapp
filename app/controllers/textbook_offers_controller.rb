class TextbookOffersController < ApplicationController
  before_action :set_textbook_offer, only: [:show, :edit, :update, :destroy]

  # GET /textbook_offers
  # GET /textbook_offers.json
  def index
    @textbook_offers = TextbookOffer.all
  end

  # GET /textbook_offers/1
  # GET /textbook_offers/1.json
  def show
  end

  # GET /textbook_offers/new
  def new
    @textbook_offer = TextbookOffer.new
  end

  # GET /textbook_offers/1/edit
  def edit
  end

  # POST /textbook_offers
  # POST /textbook_offers.json
  def create
    @textbook_offer = TextbookOffer.new(textbook_offer_params)

    respond_to do |format|
      if @textbook_offer.save
        format.html { redirect_to @textbook_offer, notice: 'Textbook offer was successfully created.' }
        format.json { render :show, status: :created, location: @textbook_offer }
      else
        format.html { render :new }
        format.json { render json: @textbook_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textbook_offers/1
  # PATCH/PUT /textbook_offers/1.json
  def update
    respond_to do |format|
      if @textbook_offer.update(textbook_offer_params)
        format.html { redirect_to @textbook_offer, notice: 'Textbook offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @textbook_offer }
      else
        format.html { render :edit }
        format.json { render json: @textbook_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textbook_offers/1
  # DELETE /textbook_offers/1.json
  def destroy
    @textbook_offer.destroy
    respond_to do |format|
      format.html { redirect_to textbook_offers_url, notice: 'Textbook offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textbook_offer
      @textbook_offer = TextbookOffer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textbook_offer_params
      params.require(:textbook_offer).permit(:user_id, :textbook_id)
    end
end
