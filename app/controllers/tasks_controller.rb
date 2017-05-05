# frozen_string_literal: true

# git clean -n, -f if this doesn't work. It is set exactly as you had it before
# the "current_user" issue

class TasksController < ApplicationController
  before_action :set_task, only: %i[show update destroy]
  before_action :validate_user, only: %i[index create update destroy set_task]

  # GET /tasks
  def index
    # view by user_id
    # @tasks = Task.all
    # test_value = User.find(params[:id])
    # current_user = User.find(params[:id])
    @tasks = current_user.tasks

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
    # render json: @task = current_user.tasks.find(params[:id])
  end

  # POST /tasks
  def create
    # get current user_id from ApplicationController
    @task = current_user.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    # @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    # may need for destroy
    # @task = current_user.tasks.find(params[:id])
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      # @task = Task.find(params[:id])
      validate_user
      @task = current_user.tasks.find(params[:id])
    end

    def validate_user
      set_current_user
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :is_complete, :user_id)
    end
end
