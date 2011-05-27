class SpreeEasyContactHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  Deface::Override.new(:virtual_path => "layouts/admin",
                       :name => "converted_admin_tabs_351915426",
                       :insert_bottom  => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                       :text => "<%= tab(:contacts) %>",
                       :disabled => false)

  Deface::Override.new(:virtual_path => "admin/configurations/index",
                       :name => "converted_admin_configurations_menu_586883267",
                       :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                       :text => "<%= configurations_sidebar_menu_item t('topics'), admin_topics_path, t('topics_description') %>",
                       :disabled => false)
  
end