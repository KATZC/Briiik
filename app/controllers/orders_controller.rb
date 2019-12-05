class OrdersController < ApplicationController

  def create
    material = Material.find(params[:material_id])
    order = Order.create!(material: material, material_sku: material.description, amount: material.highest_bid, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: material.description,
        images: [material.photo.key],
        amount: (material.highest_bid * 100),
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    authorize order
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
    order.update(state:'Validé')
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end
end
