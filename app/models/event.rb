class Event < ApplicationRecord


extend FriendlyId
friendly_id :title, use: :slugged



belongs_to :users, class_name: "User",  optional: true
validates :title, :place, :description, presence: true

  has_many :attendences
  has_many :users, :through => :attendances

  def event_owner(user_id)
    User.find_by id: user_id
  end

  def show_my_events(user_id)
    Event.where(user_id: user_id)
  end


 def created_by_user?(user)
    user_id == user.id
  end


  def pending_requests(event_id)
    Attendance.pending.where(event_id: event_id)
  end
  
  def show_accepted_attendees(event_id)
    Attendance.accepted.where(event_id: event_id)
  end
  


end
