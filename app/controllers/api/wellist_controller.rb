module Api
  class WellistController < ApiBaseController
    before_action :set_wellist, only: [:show]

    def show
      render json: @wellist
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wellist
      @wellist = Wellist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def wellist_params
    #   params.require(:wellist).permit(:wellist_id, :vendor_id)
    # end
  end
end
