class Post < ActiveRecord::Base
    
    belongs_to :user
    has_many :comments
    has_many :likes
    
    validates_presence_of :photo_url, :user
    
    def humanized_time_ago
        time_ago_in_seconds = Time.now - self.created_at
        time_ago_in_minutes = time_ago_in_seconds / 60
        
        
        if time_ago_in_minutes >= 1440
            "#{(time_ago_in_minutes / 1440).to_i} Days Ago"
        elsif time_ago_in_minutes >= 60
            "#{(time_ago_in_minutes / 60).to_i} Hours Ago"
        elsif time_ago_in_minutes < 60
            "#{time_ago_in_minutes.to_i} Minutes Ago"
        else
            "#{time_ago_in_seconds.to_i} Seconds Ago"
        end
    end
    
    def like_count
        self.likes.size
    end
    
    def comment_count
        self.comments.size
    end
    
end