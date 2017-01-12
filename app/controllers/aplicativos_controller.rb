class AplicativosController < ApplicationController
  before_action :authenticate_user!

  def aplicativo_admin
    @app = Aplicativo.last
  end

  def new
    @app = Aplicativo.new
  end

  def create
    @app= Aplicativo.new(app_params)

    respond_to do |format|
      if @app.save
        format.html { redirect_to aplicativo_admin_path, notice: "Aplicativo atualizado com sucesso" }
        format.json { render :show, status: :created, location: @app}
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @app = Aplicativo.find(params[:id])
  end

  def update
    @app = Aplicativo.find(params[:id])
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to aplicativo_admin_path, notice: "Aplicativo atual atualizado com sucesso" }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def app_params
    params.require(:aplicativo).permit(:first_paragraph, :second_paragraph, :third_paragraph, :forth_paragraph)
  end
end
