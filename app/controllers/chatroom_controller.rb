class ChatroomController < ApplicationController
    before_action :require_user

    def index
        # @articles = Article.paginate(page: params[:page], per_page: 5)
        @message = Message.new
        @messages = Message.custom_display
    end
    
    def create
    
    end
    
end