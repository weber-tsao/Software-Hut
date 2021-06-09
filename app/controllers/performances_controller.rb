class PerformancesController < ApplicationController
    before_action :set_performance, only: [:show, :edit, :update, :destroy]

    def index
    end

    def edit
    end

    def show
    end

    def update
      if @performance.update(performance_params)
        if current_user.account_type == "vendor"
          redirect_to root_path, notice: "Performance updated" #set to return to summary when up
        else
          redirect_to vendors_path, notice: "Performance updated"
        end
      else
        render :edit
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance
      @performance = Performance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def performance_params
      params.require(:performance).permit(
        :performance_id, :vendor_id, :KPI1, :KPI2, :KPI3, :KPI4, :KPI5, :KPI6, 
        :initial_credit, :credit_threshold, :current_credit, :initial_risk, :current_risk
      )
    end
end