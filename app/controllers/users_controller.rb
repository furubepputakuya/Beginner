class UsersController < ApplicationController
  before_action :before_action_1, {only: [:users_page]}
  before_action :before_action_2, {only: [:users_page]}

  def users_entrance
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if session[:company_id]
      session[:company_id] = nil
    end

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/posts/jp")
    else
      flash.now[:notice] = "ユーザー登録に失敗しました"
      render("users/users_entrance")
    end
  end

  def login
    @user = User.find_by(email: params[:email])

    if session[:company_id]
      session[:company_id] = nil
    end

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインに成功しました"
      redirect_to("/users/#{@user.id}/users_page")
    else
      flash.now[:notice] = "ログインに失敗しました"
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render("users/users_entrance")
    end
  end

  def users_page
    @likes = Like.where(user_id: session[:user_id]).paginate(page: params[:page], per_page: 3)
  end

  def before_action_1
    if session[:user_id] == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/users/users_entrance")
    end
  end

  def before_action_2
    if session[:user_id] != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  private
  def user_params
   params.permit(:name,
                 :email,
                 :password)
  end
end
