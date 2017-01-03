class PromocaosController < ApplicationController
  before_action :authenticate_user!

  def promocao_admin
    @promocao = Promocao.last
  end

  def new
    @promocao = Promocao.new
  end

  def create
    @promocao= Promocao.new(promocao_params)

    respond_to do |format|
      if @promocao.save
        format.html { redirect_to promocao_admin_path, notice: "Promoção atualizada com sucesso" }
        format.json { render :show, status: :created, location: @promocao}
      else
        format.html { render :new }
        format.json { render json: @promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @promocao = Promocao.find(params[:id])
  end

  def update
    @promocao = Promocao.find(params[:id])
    respond_to do |format|
      if @promocao.update(promocao_params)
        format.html { redirect_to promocao_admin_path, notice: "Promoção atual atualizada com sucesso" }
        format.json { render :show, status: :ok, location: @promocao }
      else
        format.html { render :edit }
        format.json { render json: @promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def promocao_params
    params.require(:promocao).permit(:texto, :avatar, :image)
  end
end
