class TasksController < OpenReadController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    # @tasks = Task.all
    @task = current_user.tasks.all

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task = current_user.tasks.find(params[:id])
  end

  # POST /tasks
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :is_complete, :user_id)
    end
end
