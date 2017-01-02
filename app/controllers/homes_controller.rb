class HomesController < ApplicationController
  before_action :authenticate_user!

  def home_admin
    @home = Home.last
  end

  def new
    @home = Home.new
  end

  def create
    @home= Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to home_admin_path, notice: "Home atualizada com sucesso" }
        format.json { render :show, status: :created, location: @home}
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to home_admin_path, notice: "Home atual atualizada com sucesso" }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def home_params
    params.require(:home).permit(:title, :texto, :avatar)
  end
end
