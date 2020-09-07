class ChargesController < ApplicationController
  def new
  end

  def create
    @amount = 500
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    flash[:success] = "Merci pour votre don !"
    redirect_to projects_path
  end
end
