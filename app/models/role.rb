class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        actor = self.auditions.where("hired = ?", true).first
        if !actor
            return 'no actor has been hired for this role'
        end
        actor
    end

    def understudy
        actor = self.auditions.where("hired = ?", true).second
        if !actor 
            return 'no actor has been hired for understudy for this role'
        end
        actor
    end
end