class DecksController < ApplicationController

  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find_by(id: params[:id])
  end

  def new
  end

  def create
    @deck = Deck.new
    @deck.name = params[:name]
    @deck.subject = params[:subject]
    @deck.course = params[:course]
    @deck.teacher = params[:teacher]
    @deck.student = params[:student]

    if @deck.save
      redirect_to "/decks/#{ @deck.id }"
    else
      render 'new'
    end
  end

  def edit
    @deck = Deck.find_by(id: params[:id])
  end

  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.name = params[:name]
    @deck.subject = params[:subject]
    @deck.course = params[:course]
    @deck.teacher = params[:teacher]
    @deck.student = params[:student]

    if @deck.save
      redirect_to "/decks/#{ @deck.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @deck = Deck.find_by(id: params[:id])
    @deck.destroy


    redirect_to "/decks"
  end
end
