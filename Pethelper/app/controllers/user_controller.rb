class UsersController < ApplicationController
    protect_from_forgery

    def new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.user_id
            redirect_to login_url, notice: 'Cadastrado com sucesso!'
        
        else
            flash[:error] = 'Ocorreu um erro no cadastro, Tente denovo'
            redirect_to login_url
        end
    end

    def destroy
        User.find(session[:user_id]).destroy
        session[user_id] = nil
        redirect_to index_url
    end

    def edit
        @user = User.find(session[user_id])
    end