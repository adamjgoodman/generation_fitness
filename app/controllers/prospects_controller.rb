class ProspectsController < ApplicationController

  def create
    @prospect = Prospect.create(prospect_params)
    if @prospect.valid?
      redirect_to page_path('contact'), alert: 'Thank you for contacting Generation Fitness!'
    else
    	render :new, status: :unprocessable_entity
    end
  end

  private 

  def prospect_params
    params.require(:prospect).permit(:name, :email, :phone, :message)
  end
  
end
