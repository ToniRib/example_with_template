class User < ActiveRecord::Base
  validates :name, presence: true

  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
