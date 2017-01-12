class CreateUserTaxi5Estrelas < ActiveRecord::Migration[5.0]
  def change
    User.create!(:email => 'taxicincoestrelas@gmail.com', :password => '1Q@w#E4R%', :password_confirmation => '1Q@w#E4R%')
  end
end
