class WelcomeController < ApplicationController
  def index
    @contact = Message.new
    @promocao = Promocao.last
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
