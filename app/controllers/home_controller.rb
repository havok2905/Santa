class HomeController < ApplicationController
  def index
    @party = Party.last
    @participants = @party.participant.order('id DESC').all
  end

  def participate
    party  = Party.last
    person = Participant.create name: params[:name], email: params[:email]
    party.participant << person
    party.save

    respond_to do |format|
      format.json { render json: { success: true } }
    end
  end
end
