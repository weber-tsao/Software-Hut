class VendorResponsesController < ApplicationController  
  def new
    @vendor_response = VendorResponse.new
    @questionset = Question.all
    @answer = AnswerOption.where(question_id: 1)
  end

  def create
    @vendor_response = VendorResponse.new(vendor_response_params)

    if @vendor_response.save
      redirect_to new_vendor_responses_path, notice: 'Response was successfully created.'
    else
      render :new
    end
  end

  def update
    if @vendor_response.update(vendor_response_params)
      redirect_to vendor_responses_path, notice: 'Vendor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vendors/1
  def destroy
    @vendor_response.destroy
    redirect_to vendor_responses_url, notice: 'Vendor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_response
      @vendor_response = Vendor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_response_params
      params.require(:vendor_response).permit(question_ids: [], answer_option_ids: [], vendor_ids: [])
    end
end