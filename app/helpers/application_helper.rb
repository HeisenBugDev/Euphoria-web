module ApplicationHelper
  def get_SHA
    EuphoriaWeb::Application::GIT_SHA
  end

  def get_short_SHA
    EuphoriaWeb::Application::GIT_SHA_SHORT
  end

  def flash_class(level)
    case level
      when :notice then
        'info'
      when :error then
        'error'
      when :alert then
        'warning'
    end
  end
end
