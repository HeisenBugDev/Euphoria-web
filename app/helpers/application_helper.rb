module ApplicationHelper
  def get_SHA
    `git log -1 --format="%H"`.delete("\n")
  end

  def get_short_SHA
    get_SHA.truncate(7, :omission => '')
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
