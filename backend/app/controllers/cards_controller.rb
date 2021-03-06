# frozen_string_literal: true

class CardsController < ApplicationController
  def create
    card = Card.new(card_params)
    if card.save!
      render json: card
    else
      render json: { message: 'better luck next time idiot' }
    end
  end

  def update
    card = Card.find(params[:id])
    card.update(card_params)
    render json: card
  end

  def destroy
    Card.destroy(params[:id])
  end

  private

  def card_params
    params.require(:cards).permit(:id, :question, :answer, :is_multi, :options, :image_url, :pack_id)
  end
end
