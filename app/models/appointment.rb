class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def self.slow_loader
    appointments = Appointment.all
    appointments.map do |appointment|
      {id: appointment.id, datetime: appointment.datetime, patient: appointment.patient, doctor: appointment.doctor}
    end
  end


end
