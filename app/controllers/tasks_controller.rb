class TasksController < ApplicationController
  before_action :set_user
  before_action :set_task, only: %i(edit update show)

  def index
    @tasks = @user.tasks
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = @user.tasks.build(task_params)
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url @user
    else
     render :new
    end
  end
  
  def edit
  end
  
  def update
    @task.update_attributes(task_params)
    flash[:success] = "タスクを更新しました。"
    redirect_to user_tasks_url @user
  end
  
  def show
  end
  
  private
  
    def set_user
      @user = User.find(params[:user_id])
    end
    
    def task_params
      params.require(:task).permit(:name, :description)
    end
    
    def set_task
      @task = @user.tasks.find_by(id: params[:id])
    end
end
