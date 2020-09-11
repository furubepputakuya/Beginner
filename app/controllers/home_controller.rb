class HomeController < ApplicationController
  before_action :before_action_1, {only: [:board_form]}
  before_action :before_action_2, {only: [:top, :board, :logout, :analects, :description, :notice]}
  def top
  end

  def board_form
  end

  def notice
  end

  def analects
  end

  def description
  end

  def board
    @boards = Home.all.paginate(page: params[:page], per_page: 3)
  end

  def create
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @board = Home.new(content: params[:content],name: "#{@user.name}")
    elsif session[:company_id]
      @company = Company.find_by(id: session[:company_id])
      @board = Home.new(content: params[:content],name: "#{@company.company_name}")
    end

    if @board.save
      flash[:notice] = "掲示板に記載しました"
      redirect_to("/home/board")
    else
      flash.now[:notice] = "掲示板に記載出来ませんでした"
      render("home/board_form")
    end
  end

  def logout
    if session[:user_id]
      session[:user_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("")
    end

    if session[:company_id]
      session[:company_id] = nil
      flash[:notice] = "ログアウトしました"
      redirect_to("")
    end
  end

  def before_action_1
    if session[:user_id] == nil && session[:company_id] == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/home/board")
    end
  end

  def before_action_2
    if Dir::exist?("public/uploads/tmp")
      FileUtils.rm_rf('public/uploads/tmp')
    end
  end
end
