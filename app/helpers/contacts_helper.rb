module ContactsHelper
  def options_for_current_orders
    options_for_select([''] + current_user.orders.unfinished.map { |o|
      o.number
    })
  end
end