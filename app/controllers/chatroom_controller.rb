class ChatroomController < ApplicationController
    def index
        # @articles = Article.paginate(page: params[:page], per_page: 5)
        @messages = Message.all
    end
    
    
    
end