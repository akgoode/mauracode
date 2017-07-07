module Api
  class WellistController < ApiBaseController

    def show
      @wellist = Wellist.find(params[:id])

      render json: @wellist
    end
  end
end
