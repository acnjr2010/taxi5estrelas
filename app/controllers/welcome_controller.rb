class WelcomeController < ApplicationController
  def index
    @contact = Message.new
    @promocao = Promocao.last
    @app = Aplicativo.last
  end

  def create
  end

  def app
  end

  def promocao
  end

  def contato
  end
end
