class ItemsController < ApplicationController
      before_action :set_user

      def create
        @item = @user.items.new(item_params)
        @item.save
        redirect_to root_path
      end

      private

      def set_user
        @user = User.find(params[:user_id])
      end

      def item_params
        params.require(:item).permit(:name)
      end

end
