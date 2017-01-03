class MessagesController < ApplicationController

  def index
    @contact = Message.new
  end

  def create
    @contact = Message.new(messages_params)

    respond_to do |format|
      if @contact.save
        MessageMailer.contact_users(@contact).deliver
        format.html { redirect_to contato_path, notice: "Mensagem enviada com sucesso" }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :index }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def mensagens_admin
    @messages = Message.all.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end
  private

  def messages_params
    params.require(:message).permit(:name, :email, :phone)
  end
end
