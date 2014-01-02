module ApplicationHelper
  def get_SHA
    `git log -1 --format="%H"`
  end

  def get_short_SHA
    get_SHA.truncate(7, :omission => '')
  end
end
