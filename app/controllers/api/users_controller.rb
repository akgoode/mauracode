module Api
  class UsersController < ApiBaseController
    def create
      @user = User.create(user_params)
      puts @user
      Wellist.create(@user.id)
      render json: @user
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:email, :care_type, :care_sub_type)
      end
  end
end
