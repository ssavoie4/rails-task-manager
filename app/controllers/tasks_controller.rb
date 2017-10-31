class TasksController < ApplicationController
  before_action :set_task, only:[:show, :edit]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)

  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :done)
  end

end
