class Appointment 
    def initialize(location, purpose, hour, min) 
        @location = location 
        @purpose = purpose 
        @hour = hour 
        @min = min 
    end 
    def location 
        @location 
    end 
    def purpose 
        @purpose 
    end 
    def hour 
        @hour 
    end 
    def min 
        @min 
    end 
end 


class MonthlyAppointment < Appointment

    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min) 
        @day = day
    end

end



class MonthlyAppointment < Appointment 
    def initialize(location, purpose, hour, min, day) 
        super(location, purpose, hour, min) 
        @day = day 
    end 
    def day 
        @day 
    end 
    def occurs_on?(day) 
        day.to_i == self.day
    end 
    def to_s 
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}." 
    end 
end 

class DailyAppointment < Appointment
    def occurs_on?(hour,min)
        @hour == hour && @min == min 
    end

    def to_s
    "Reunion diaria en #{@location} sobre #{@purpose} a las #{@hour}:#{@min}"
    end
end 


class OneTimeAppointment < Appointment
attr_accessor :day, :month, :year
    def initialize (location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min) 
        @day = day
        @month = month 
        @year = year 
        end 
        
        
        def occurs_on?(day, month, year)
        day.to_i == @day && month.to_i == @month && year.to_i == @year 
        end 
        
        def to_s 
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}."
        end 
end



puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)