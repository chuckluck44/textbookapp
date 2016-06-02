class TextbookRequestsController < ApplicationController
  before_action :set_textbook_request, only: [:show, :edit, :update, :destroy]

  # GET /textbook_requests
  # GET /textbook_requests.json
  def index
    @textbook_requests = TextbookRequest.all
  end

  # GET /textbook_requests/1
  # GET /textbook_requests/1.json
  def show
  end

  # GET /textbook_requests/new
  def new
    @textbook_request = TextbookRequest.new
  end

  # GET /textbook_requests/1/edit
  def edit
  end

  # POST /textbook_requests
  # POST /textbook_requests.json
  def create
    @textbook_request = TextbookRequest.new(textbook_request_params)

    respond_to do |format|
      if @textbook_request.save
        format.html { redirect_to @textbook_request, notice: 'Textbook request was successfully created.' }
        format.json { render :show, status: :created, location: @textbook_request }
      else
        format.html { render :new }
        format.json { render json: @textbook_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /textbook_requests/1
  # PATCH/PUT /textbook_requests/1.json
  def update
    respond_to do |format|
      if @textbook_request.update(textbook_request_params)
        format.html { redirect_to @textbook_request, notice: 'Textbook request was successfully updated.' }
        format.json { render :show, status: :ok, location: @textbook_request }
      else
        format.html { render :edit }
        format.json { render json: @textbook_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textbook_requests/1
  # DELETE /textbook_requests/1.json
  def destroy
    @textbook_request.destroy
    respond_to do |format|
      format.html { redirect_to textbook_requests_url, notice: 'Textbook request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textbook_request
      @textbook_request = TextbookRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def textbook_request_params
      params.require(:textbook_request).permit(:user_id, :textbook_id)
    end
end
