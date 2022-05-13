module ApplicationHelper

    def readable_time(time)
        time.strftime("%d")
    end

    def author_of(record)
        user_signed_in? && current_user.id == record.user.id
    end
end
