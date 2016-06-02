class TextbookMatchesController < ApplicationController
  before_action :set_textbook_match, only: [:show, :edit, :update, :destroy]

  # GET /textbook_matches
  # GET /textbook_matches.json
  def index
    @textbook_matches = TextbookMatch.all
  end

  # GET /textbook_matches/1
  # GET /textbook_matches/1.json
  def show
  end

  # GET /textbook_matches/new
  def new
    @textbook_match = TextbookMatch.new
  end

  # GET /textbook_matches/1/edit
  def edit
  end

  # POST /textbook_matches
  # POST /textbook_matches.json
  def create
    @textbook_match = TextbookMatch.new(textbook_match_params)

    respond_to do |format|
      if @textbook_match.save
        format.html { redirect_to @textbook_match, notice: 'Textbook match was successfully created.' }
        format.json { render :show, status: :created, location: @textbook_match }
      else
        format.html { render :new }
        format.json { render json: @textbook_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textbook_matches/1
  # PATCH/PUT /textbook_matches/1.json
  def update
    respond_to do |format|
      if @textbook_match.update(textbook_match_params)
        format.html { redirect_to @textbook_match, notice: 'Textbook match was successfully updated.' }
        format.json { render :show, status: :ok, location: @textbook_match }
      else
        format.html { render :edit }
        format.json { render json: @textbook_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textbook_matches/1
  # DELETE /textbook_matches/1.json
  def destroy
    @textbook_match.destroy
    respond_to do |format|
      format.html { redirect_to textbook_matches_url, notice: 'Textbook match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textbook_match
      @textbook_match = TextbookMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textbook_match_params
      params.require(:textbook_match).permit(:from_user_id, :to_user_id, :textbook_id)
    end
end
