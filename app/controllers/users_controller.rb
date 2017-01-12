class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @mensagens = Message.all.count
    @apps = Aplicativo.all.count
    @promocoes = Promocao.all.count
  end

  def home_admin
  end

  def aplicativo_admin
  end

  def promocao_admin
  end

  def mensagens_admin
    @messages = Message.all.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_path, notice: "Informações atualizadas com sucesso" }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

def user_params
  params.require(:user).permit(:email, :password)
end
end
