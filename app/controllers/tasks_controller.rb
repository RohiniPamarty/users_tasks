
class TasksController < ApplicationController
def index
@tasks = current_user.tasks
end
def new
@task=Task.new
end
def create
@task = Task.create(params[:task])
redirect_to tasks_path
end
 def destroy
    @task = Task.find(params[:id])
    @task.destroy
redirect_to tasks_path
end
def update
@task = Task.find(params[:id])
@task.update_attribute(:status,true)
redirect_to tasks_path
end
end
