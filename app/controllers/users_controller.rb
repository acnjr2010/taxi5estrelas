class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @mensagens = Message.all.count
    @homes = Home.all.count
    @apps = Aplicativo.all.count
    @promocoes = Promocao.all.count
  end
end
