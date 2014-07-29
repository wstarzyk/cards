class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find_by(id: params[:id])
  end

  def new
  end

  def create
    @card = Card.new
    @card.front = params[:front]
    @card.back = params[:back]
    @card.deck_id = params[:deck_id]

    if @card.save
      redirect_to "/cards/#{ @card.id }"
    else
      render 'new'
    end
  end

  def edit
    @card = Card.find_by(id: params[:id])
  end

  def update
    @card = Card.find_by(id: params[:id])
    @card.front = params[:front]
    @card.back = params[:back]
    @card.deck_id = params[:deck_id]

    if @card.save
      redirect_to "/cards/#{ @card.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @card = Card.find_by(id: params[:id])
    @card.destroy


    redirect_to "/cards"
  end
end
