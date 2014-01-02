module ApplicationHelper
  def getSHA
    `git log -1 --format="%H"`
  end

  def getShortSHA
    getSHA.truncate(7, :omission => '')
  end
end
