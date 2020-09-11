class CompanyController < ApplicationController
  before_action :before_action_1, {only: [:company_page, :company_form_jp]}
  before_action :before_action_2, {only: [:company_form_change, :destroy, :company_entry]}

  def top
  end

  def company_entrance
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if session[:user_id]
      session[:user_id] = nil
    end

    if @company.save
      session[:company_id] = @company.id
      flash[:notice] = "企業登録が完了しました"
      redirect_to("/company/#{@company.id}/company_page")
    else
      flash.now[:notice] = "企業登録に失敗しました"
      render("company/company_entrance")
    end
  end

  def login
    @company = Company.find_by(email: params[:email])
    if session[:user_id]
      session[:user_id] = nil
    end

    if @company && @company.authenticate(params[:password])
      session[:company_id] = @company.id
      flash[:notice] = "ログインに成功しました"
      redirect_to("/company/#{@company.id}/company_page")
    else
      flash.now[:notice] = "ログインに失敗しました"
      @error_message = "メールアドレスまたはパスワードが間違っています"
      render("company/company_entrance")
    end
  end

  def company_page
    @company = Company.find_by(id: session[:company_id])
    @company_forms = CompanyForm.where(company_id: @company.id).paginate(page: params[:page], per_page: 3)
  end

  def company_entry
    @company_form = CompanyForm.find_by(id: params[:id])
    @company_entrys = Like.where(post_id: @company_form.id)
  end

# 削除アクション
  def destroy
    @company_form = CompanyForm.find_by(id: params[:id])
    if @company_form.destroy
      flash[:notice] = "求人内容を削除しました"
      redirect_to("/company/#{session[:company_id]}/company_page")
    else
      flash.now[:notice] = "求人内容の削除に失敗しました"
      render("posts/#{@company_form.id}")
    end
  end

# 新規登録アクション
  def company_form_jp
    @company_form = CompanyForm.new
  end

  def confirm
    @company_form = CompanyForm.new(company_form_params)
    if @company_form.invalid?(:confirm)
      if params[:image] == nil
        render("company/company_form_jp")
      else
        render("company/company_form_jp_va")
      end
    else
      render :confirmation
    end
  end

  def confirm_va
    @company_form = CompanyForm.new(company_form_params)
    if params[:image] == nil
      @company_form.image.retrieve_from_cache! params[:cache][:image]
    end
    if @company_form.invalid?(:confirm)
      render("company/company_form_jp_va")
    else
      render :confirmation
    end
  end

  def form_create
    @company_form = CompanyForm.new( work_type: params[:work_type].split(" "),
                                     work_list:params[:work_list].split(" "),
                                     level_list: params[:level_list].split(" "),
                                     catchcopy: params[:catchcopy],
                                     title: params[:title],
                                     money: params[:money],
                                     otherwise_money: params[:otherwise_money],
                                     period: params[:period],
                                     work_content: params[:work_content],
                                     otherwise: params[:otherwise],
                                     company_id: session[:company_id],
                                     japan: params[:japan])
    @company_form.image.retrieve_from_cache! params[:cache][:image]

    if @company_form.save
      # FileUtils.rm_rf('public/uploads/tmp')
      flash[:notice] = "求人登録が完了しました"
      redirect_to("/company/#{@company_form.company_id}/company_page")
    else
      flash.now[:notice] = "求人登録に失敗しました"
      render("company/company_form")
    end
  end

# 新規登録アクション(戻りボタン)
  def return
    @company_form = CompanyForm.new( work_type: params[:work_type].split(" "),
                                     work_list:params[:work_list].split(" "),
                                     level_list: params[:level_list].split(" "),
                                     catchcopy: params[:catchcopy],
                                     title: params[:title],
                                     money: params[:money],
                                     otherwise_money: params[:otherwise_money],
                                     period: params[:period],
                                     work_content: params[:work_content],
                                     otherwise: params[:otherwise],
                                     company_id: session[:company_id],
                                     japan: params[:japan])
    @company_form.image.retrieve_from_cache! params[:cache][:image]
    render("company/return_company_form")
  end

  def return_confirm
    @company_form = CompanyForm.new(company_form_params)
    if params[:image] == nil
      @company_form.image.retrieve_from_cache! params[:cache][:image]
    end
    if @company_form.invalid?(:confirm)
      render("company/company_form_jp_va")
    else
      render :confirmation
    end
  end

# 内容変更アクション
  def company_form_change
    @company_form_ud = CompanyForm.new
    @company_form = CompanyForm.find_by(id: params[:id])
  end

  def confirm_ud
    @company_form = CompanyForm.find_by(id: params[:id])
    @company_form_ud = CompanyForm.new(company_form_params)
    if params[:image] == nil
      @company_form.image.cache! unless @company_form.image.blank?
    end
    if @company_form_ud.invalid?
        render("/company/company_form_change_va")
    else
      render :confirmation_ud
    end
  end

  def confirm_ud_va
    @company_form = CompanyForm.find_by(id: params[:id])
    @company_form_ud = CompanyForm.new(company_form_params)
    if params[:image] == nil
      @company_form_ud.image.retrieve_from_cache! params[:cache][:image]
    end
    if @company_form_ud.invalid?
        render("/company/company_form_change_va")
    else
      render :confirmation_ud
    end
  end

  def update
    @company_form = CompanyForm.find_by(id: params[:id])
    @company_form.title = params[:title]
    @company_form.work_type = params[:work_type].split(" ")
    @company_form.work_list = params[:work_list].split(" ")
    @company_form.level_list = params[:level_list].split(" ")
    @company_form.catchcopy = params[:catchcopy]
    @company_form.money = params[:money]
    @company_form.otherwise_money = params[:otherwise_money]
    @company_form.period = params[:period]
    @company_form.work_content = params[:work_content]
    @company_form.otherwise = params[:otherwise]
    @company_form.image.retrieve_from_cache! params[:cache][:image]

    if @company_form.save
      FileUtils.rm_rf('public/uploads/tmp')
      flash[:notice] = "求人内容を変更しました"
      redirect_to("/company/#{session[:company_id]}/company_page")
    else
      flash.now[:notice] = "求人内容の変更に失敗しました"
      render("company/company_form_change")
    end
  end

# 内容変更アクション(戻りボタン)
  def return_ud
    @company_form = CompanyForm.find_by(id: params[:id])

    @company_form_ud = CompanyForm.new( work_type: params[:work_type].split(" "),
                                        work_list:params[:work_list].split(" "),
                                        level_list: params[:level_list].split(" "),
                                        catchcopy: params[:catchcopy],
                                        title: params[:title],
                                        money: params[:money],
                                        otherwise_money: params[:otherwise_money],
                                        period: params[:period],
                                        work_content: params[:work_content],
                                        otherwise: params[:otherwise],
                                        company_id: session[:company_id],
                                        japan: params[:japan])
    @company_form_ud.image.retrieve_from_cache! params[:cache][:image]
    render("company/return_company_form_ud")
  end

  def return_confirm_ud
    @company_form = CompanyForm.find_by(id: params[:id])
    @company_form_ud = CompanyForm.new(company_form_params)
    if params[:image] == nil
      @company_form_ud.image.retrieve_from_cache! params[:cache][:image]
    end
    if @company_form_ud.invalid?
      render("company/company_form_change_va")
    else
      render :confirmation_ud
    end
  end

# 制限アクション
  def before_action_1
    if session[:company_id] == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/company/company_entrance")
    end
  end

  def before_action_2
    @company_form = CompanyForm.find_by(id: params[:id])
    if @company_form == nil || session[:company_id] != @company_form.company_id
      flash[:notice] = "権限がありません"
      redirect_to("/company/#{session[:company_id]}/company_page")
    end
  end

# ストロングパラメータ
  private
  def company_form_params
   params.permit(:catchcopy,
                 :title,
                 :money,
                 :otherwise_money,
                 :period,
                 :work_content,
                 :otherwise,
                 :company_id,
                 :japan,
                 :image,
                 work_type:[],
                 work_list:[],
                 level_list:[])
  end

  private
  def company_params
   params.permit(:company_name,
                 :email,
                 :name,
                 :phone,
                 :password)
  end
end
