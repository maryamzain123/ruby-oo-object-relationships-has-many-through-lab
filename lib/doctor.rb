class Doctor
    attr_accessor :name, :patient
    @@all = []
    def initialize (name)
        @name = name
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        Appointment.all.map do |appt|
            if appt.doctor == self
                appt.patient
            end
        end
    end

end
