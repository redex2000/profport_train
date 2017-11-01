# frozen_string_literal: true

module ApplicationHelper
  def alert_class(key)
    css_class = case key
                when "notice" then
                  "success"
                when "alert" then
                  "warning"
                  else
                  "danger"
    end
    "alert-#{css_class}"
  end
end
