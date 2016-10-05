class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
  end

  # GET /tweets/date/2016-06-24
  def date
    @tasks = Task.where("date"=> params[:date]).order(created_at: :desc)
    render json: @tasks
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      @action = @task.task_action.build({
        user: @task.user,
        action_type: 1,
        date: @task.date
      })
      @action.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      @action_save = false;
      @action = @task.task_action.build({
        user_id: @task.user_id,
        date: @task.date,
      })

      if task_params.has_key?(:priority)
        @action.action_type = TaskAction::ACTION_TYPE[:change_priority]
        @action_save = true;
      end

      if task_params.has_key?(:status)
        if @task.status === Task::STATUS[:doing]
          @action.action_type = TaskAction::ACTION_TYPE[:begin]
        elsif @task.status === Task::STATUS[:done]
          @action.action_type = TaskAction::ACTION_TYPE[:end]
        else
          @action.action_type = nil
        end
        @action_save = true;
      end

      if @action_save
        @action.save
      end

      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:user_id, :date, :text, :status, :priority)
    end
end
