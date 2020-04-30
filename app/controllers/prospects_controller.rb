class ProspectsController < ApplicationController

  def create
    @prospect = Prospect.create(prospect_params)
    @prospect.phone = @prospect.phone.insert(0,'1')
    if @prospect.valid?
      redirect_to request.referrer, notice: 'Thank you for contacting Generation Fitness!'
    else
    	redirect_to request.referrer, alert: "Invalid entry! Please try again."
    end
  end

  private 

  def prospect_params
    params.require(:prospect).permit(:name, :email, :phone, :message)
  end

end
