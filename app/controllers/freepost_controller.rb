class FreepostController < ApplicationController
    before_action :authenticate_user!
    before_action :log_impression, :only=> [:show]

    def log_impression
        @hit_post = Freepost.find(params[:postid])
        # this assumes you have a current_user method in your authentication system
        @hit_post.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
    end
    
    def index
      @posts = Freepost.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    end
    
    def create
        @post = Freepost.new(user_id: current_user.id, content: params[:content]) # DB테이블의 새로운 한 행을 생성한다.
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        
        redirect_to '/free/index'
    end
    
    def new
    end
    
    def show
        @show = Freepost.find(params[:postid])
    end
    
    def destroy
        @destroypost = Freepost.find(params[:postid])
        @destroypost.destroy
        
        redirect_to '/free/index'
    end
    
    def edit
        @editpost = Freepost.find(params[:postid])
    end
    
    def update
        @updatepost = Freepost.find(params[:postid])
        @updatepost.title = params[:post_title]
        @updatepost.content = params[:post_content]
        @updatepost.save
        
        redirect_to "/free/index"
    end
end
