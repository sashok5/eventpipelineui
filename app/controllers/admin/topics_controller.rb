module Admin
  class TopicsController < ApplicationController
    def index

        sql = "select * from event_topics"
        @topics = ActiveRecord::Base.connection.execute(sql)

        if params[:topic_id]
          sql = "select * from event_topics
et JOIN event_topic_mappings tm on tm.topic_id = et.topic_id
join events e on e.event_id = tm.event_id
where et.topic_id = #{params[:topic_id]} ORDER BY score DESC"
          @events = ActiveRecord::Base.connection.execute(sql)

        end
      end
  end
end
