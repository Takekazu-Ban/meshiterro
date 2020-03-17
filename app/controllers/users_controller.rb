# マイページ用コントローラー
class UsersController < ApplicationController

# 詳細ページ定義
  def show
  	# ユーザーデータを１件取得
  	@user = User.find(params[:id])
  	@post_images = @user.post_images.page(params[:page]).reverse_order
  end

# 編集ページ定義
  def edit
  	@user = User.find(params[:id])
  end

# アップデート機能
  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id)
  end
  private
  def user_params
  	params.require(:user).permit(:name, :profile_image)
  end

end
