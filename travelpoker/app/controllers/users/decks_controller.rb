class Users::DecksController < ApplicationController
  def show
     @deck = Deck.find(params[:id])
     @deck = @deck.cards.includes(:user).includes(:comments).paginate(page: params[:page], per_page: 10)
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end