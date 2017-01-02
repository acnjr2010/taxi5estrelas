class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @mensagens = Message.all.count
    @homes = Home.all.count
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
end
