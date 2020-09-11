class PostsController < ApplicationController
  before_action :before_action_2, {only: [:jp]}

  def prefecture
    if params[:jp] == "hokkaido"
      @company_forms = CompanyForm.where(japan: "北海道").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "aomori"
      @company_forms = CompanyForm.where(japan: "青森県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "akita"
      @company_forms = CompanyForm.where(japan: "秋田県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "iwate"
      @company_forms = CompanyForm.where(japan: "岩手県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "yamagata"
      @company_forms = CompanyForm.where(japan: "山形県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "miyagi"
      @company_forms = CompanyForm.where(japan: "宮城県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "hukusima"
      @company_forms = CompanyForm.where(japan: "福島県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "totigi"
      @company_forms = CompanyForm.where(japan: "栃木県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "gunma"
      @company_forms = CompanyForm.where(japan: "群馬県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "ibaraki"
      @company_forms = CompanyForm.where(japan: "茨城県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "saitama"
      @company_forms = CompanyForm.where(japan: "埼玉県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "tokyo"
      @company_forms = CompanyForm.where(japan: "東京都").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "tiba"
      @company_forms = CompanyForm.where(japan: "千葉県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kanagawa"
      @company_forms = CompanyForm.where(japan: "神奈川県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "nigata"
      @company_forms = CompanyForm.where(japan: "新潟県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "nagano"
      @company_forms = CompanyForm.where(japan: "長野県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "toyama"
      @company_forms = CompanyForm.where(japan: "富山県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "yamanasi"
      @company_forms = CompanyForm.where(japan: "山梨県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "isikawa"
      @company_forms = CompanyForm.where(japan: "石川県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "gihu"
      @company_forms = CompanyForm.where(japan: "岐阜県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "aiti"
      @company_forms = CompanyForm.where(japan: "愛知県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "sizuoka"
      @company_forms = CompanyForm.where(japan: "静岡県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "hukui"
      @company_forms = CompanyForm.where(japan: "福井県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "siga"
      @company_forms = CompanyForm.where(japan: "滋賀県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kyoto"
      @company_forms = CompanyForm.where(japan: "京都府").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "mie"
      @company_forms = CompanyForm.where(japan: "三重県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "hyogo"
      @company_forms = CompanyForm.where(japan: "兵庫県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "osaka"
      @company_forms = CompanyForm.where(japan: "大阪府").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "nara"
      @company_forms = CompanyForm.where(japan: "奈良県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "wakayama"
      @company_forms = CompanyForm.where(japan: "和歌山県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "tottori"
      @company_forms = CompanyForm.where(japan: "鳥取県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "okayama"
      @company_forms = CompanyForm.where(japan: "岡山県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "simane"
      @company_forms = CompanyForm.where(japan: "島根県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "hirosima"
      @company_forms = CompanyForm.where(japan: "広島県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "yamaguti"
      @company_forms = CompanyForm.where(japan: "山口県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kagawa"
      @company_forms = CompanyForm.where(japan: "香川県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "tokusima"
      @company_forms = CompanyForm.where(japan: "徳島県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "ehime"
      @company_forms = CompanyForm.where(japan: "愛媛県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kouti"
      @company_forms = CompanyForm.where(japan: "高知県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "fukuoka"
      @company_forms = CompanyForm.where(japan: "福岡県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "saga"
      @company_forms = CompanyForm.where(japan: "佐賀県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "nagasaki"
      @company_forms = CompanyForm.where(japan: "長崎県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "ooita"
      @company_forms = CompanyForm.where(japan: "大分県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "miyazaki"
      @company_forms = CompanyForm.where(japan: "宮崎県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kumamoto"
      @company_forms = CompanyForm.where(japan: "熊本県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "kagosima"
      @company_forms = CompanyForm.where(japan: "鹿児島県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end

    if params[:jp] == "okinawa"
      @company_forms = CompanyForm.where(japan: "沖縄県").paginate(page: params[:page], per_page: 3)

      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end

      if session[:company_id]
        @company = Company.find_by(id: session[:company_id])
      end
    end
  end

  def show
    @company_form = CompanyForm.find_by(id: params[:id])
  end

  def jp
  end

  def before_action_2
    if Dir::exist?("public/uploads/tmp")
      FileUtils.rm_rf('public/uploads/tmp')
    end
  end

end
