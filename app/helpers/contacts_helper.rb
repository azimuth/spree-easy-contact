module ContactsHelper
  def options_for_current_orders
    options_for_select([''] + current_user.orders.sort_by{|o| o.updated_at }.reverse.map { |o| o.number })
  end
end