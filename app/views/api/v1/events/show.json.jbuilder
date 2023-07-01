    json.extract! @event, :id, :title, :description, :address, :user_id
    json.start_time @event.start_time.strftime('%b %e, %l:%M %p')
    json.end_time @event.end_time.strftime('%b %e, %l:%M %p')
    json.bookings_count @event.bookings.count
    json.can_edit policy(@event).edit?
