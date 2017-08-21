class PostController < ApplicationController
    before_action :authenticate_user!
    before_action :log_impression, :only=> [:show]

    def log_impression
        @hit_post = Post.find(params[:postid])
        # this assumes you have a current_user method in your authentication system
        @hit_post.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
    end
    
    def mypage
       @mypage = User.find(params[:user_id])
    end
    
    def user
       @users = User.all
       @posts_count = current_user.posts.length # 사용자가 작성한 모든 글 가져오기
    end
    
    def index
        @posts = Post.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    end
    
    def new
    end
    
    def create
        @post = Post.new(user_id: current_user.id, content: params[:content]) # DB테이블의 새로운 한 행을 생성한다.
        @post.title = params[:post_title]
        @post.sports = params[:post_sports]
        @post.region = params[:post_region]
        @post.date = params[:post_date]
        @post.stime = params[:post_stime]
        @post.etime = params[:post_etime]
        @post.content = params[:post_content]
        @post.save
        
        redirect_to '/questions'
    end
    
    def destroy
        @destroypost = Post.find(params[:postid])
        @destroypost.destroy
        
        redirect_to '/questions'
    end
    
    def edit
        @editpost = Post.find(params[:postid])
    end
    
    def update
        @updatepost = Post.find(params[:postid])
        @updatepost.title = params[:post_title]
        @updatepost.sports = params[:post_sports]
        @updatepost.region = params[:post_region]
        @updatepost.date = params[:post_date]
        @updatepost.stime = params[:post_stime]
        @updatepost.etime = params[:post_etime]
        @updatepost.content = params[:post_content]
        @updatepost.save
        
        redirect_to "/questions"
    end
    
    def show
        @show = Post.find(params[:postid])
        @comments = Comment.where(:post_id => params[:postid]) #앞에 있는 post_id는 데이터베이스 열 이름.
    end
    
    def questions
        @posts = Post.order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    end
end
