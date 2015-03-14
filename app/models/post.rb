class Post < ActiveRecord::Base
  belongs_to :enterprise
  belongs_to :organazation

  def poster
    return enterprise.name if enterprise
    return organazation.name if organazation
    'Unknown'
  end
end
