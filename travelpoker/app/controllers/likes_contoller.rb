class FavoritesController < ApplicationController
  def create
    @card = Card.find(params[:card_id])

    if current_user.favorites.create(card: @card)
      flash[:notice] = "Favorited card"
      redirect_to [@card]
    else
      flash[:error] = "Unable to like. Please try again."
      redirect_to [@card]
    end

    @deck = Deck.find(params[:deck_id])

    if current_user.favorites.create(deck: @deck)
      flash[:notice] = "Favorited deck"
      redirect_to [@deck]
    else
      flash[:error] = "Unable to like. Please try again."
      redirect_to [@deck]
    end
  end

  def destroy
  @card = Card.find(params[:card_id])
  @favorite = current_user.favorites.find(params[:id])

    if @favorite.destroy
      flash[:notice] = "Unliked."
      redirect_to [@card]
    else
      flash[:error] = "Unable to unike. Please try again."
      redirect_to [@card]
    end

  @deck = Deck.find(params[:card_id])
  @favorite = current_user.favorites.find(params[:id])

     if @favorite.destroy
      flash[:notice] = "Unliked."
      redirect_to [@deck]
    else
      flash[:error] = "Unable to unike. Please try again."
      redirect_to [@deck]
    end
  end
end
