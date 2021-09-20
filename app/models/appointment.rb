class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor


#   wanted to make the date and time not stupid and ugly but having a hard time figuring it out


#   def convert_time(datetime)
#     time = Time.parse(datetime).in_time_zone("Pacific Time (US & Canada)")
#     time.strftime("%-d/%-m/%y: %H:%M %Z")
#   end
  
#   <%= link_to convert_time(timeslot.opening), [@place, timeslot] %>

#   d = DateTime.new(2007,11,19,8,37,48,"-06:00")
#   #=> #<DateTime: 2007-11-19T08:37:48-0600 ...>
# d.strftime("Printed on %m/%d/%Y")   #=> "Printed on 11/19/2007"
# d.strftime("at %I:%M%p")            #=> "at 08:37AM"


  def self.plus
    appointments = Appointment.all
    appointments.map do |appointment|
      {id: appointment.id, datetime: appointment.datetime, patient: appointment.patient, doctor: appointment.doctor}
    end
  end


end
