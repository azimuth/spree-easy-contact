class SpreeEasyContactHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_tabs do
    %(<%= tab(:conversations) %>)
  end
  
  insert_after :admin_configurations_menu do
    %(<%= configurations_menu_item(I18n.t('topics'), admin_topics_path, I18n.t('topics_description')) %>)
  end

  insert_after :admin_general_settings_edit do
    <<-EOT
      <div style="border: black 1px solid; padding: 10px; width: 75%;">
      <h3>Contact Form - Email Settings</h3>
      <p>
        <label for="preferences[auto_response_email_subject]"><%= t("auto_response_email_subject") %></label><br />
        <%= text_field_tag('preferences[auto_response_email_subject]', Spree::Config[:auto_response_email_subject], :size => "100") %>
      </p>
      <p>
        <label for="preferences[auto_response_email_reply_to]"><%= t("auto_response_email_reply_to") %></label><br />
        <%= text_field_tag('preferences[auto_response_email_reply_to]', Spree::Config[:auto_response_email_reply_to], :size => "100") %>
      </p>
      <p>
        <label for="preferences[auto_response_email_body_text]"><%= t("auto_response_email_body_text") %></label><br />
        <%= text_area_tag('preferences[auto_response_email_body_text]', Spree::Config[:auto_response_email_body_text], :cols => "72", :rows => "18") %>
      </p>
      </div>
    EOT
  end

  insert_before :admin_general_settings_show do
    <<-EOT
      <div style="border: black 1px solid; padding: 10px; width: 75%;">
        <h3>Contact Form - Email Settings</h3>
        <ul>
          <li><span style="font-weight: bold;"><%= t("auto_response_email_subject") %></span>: <%= Spree::Config[:auto_response_email_subject] %></li>
          <li><span style="font-weight: bold;"><%= t("auto_response_email_reply_to") %></span>: <%= Spree::Config[:auto_response_email_reply_to] %></li>
          <li><span style="font-weight: bold;"><%= t("auto_response_email_body_text") %></span>: <%= Spree::Config[:auto_response_email_body_text] %></li>
        </ul>
      </div>
    EOT
  end
end