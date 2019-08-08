class UsersController < ActionController::Base
  

  def index
    @users = User.all  
  end
 
  # 新規作成画面に対応するアクション
  def new 
    @user = User.new
  end
  
  def create
    User.create(user_params)
  end

  
  def edit
    @user = User.find(params[:id])
  end

   
  def  destroy
    # user = User.find_by(params[:id])
    user = User.find(params[:id])
    user.delete 
   end

  #  UsersControllerの中でしか使わないのでprivatの下に記述
   private
  #  ストロングパラメータ
   def user_params
    params.require(:user).permit(:name, :age)
   end


   

  

end
