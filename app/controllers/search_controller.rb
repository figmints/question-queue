class SearchController < ApplicationController

def index
    if params[:query].present?
        results = Question.search(params[:query])
    else
        @results = Question.all
    end
end
end
