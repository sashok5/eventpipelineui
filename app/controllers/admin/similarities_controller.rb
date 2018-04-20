module Admin
  class SimilaritiesController < ApplicationController
    def index
      @range_to = params[:range_to]
      @range_from = params[:range_from]
      @limit = params[:limit]

      if @range_from
        sql = "select * from event_similarities
where similarity > #{@range_from} and similarity < #{@range_to}
order by similarity desc
limit #{@limit} "
        @records_array = ActiveRecord::Base.connection.execute(sql)

      end
    end
  end
end
