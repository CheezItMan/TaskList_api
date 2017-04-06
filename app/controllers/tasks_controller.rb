class TasksController < ApplicationController

  before_action :find_student, only: [:show, :destroy, :update]

  def index
    tasks = Task.all
    logger.log "Tasks: #{tasks}"
    render :json => tasks, status: :ok
  end

  def show
    if @task
      render json: @task, status: :ok
    else
      render :json => {}, status: :no_content
    end
  end

  def destroy
    if @task.destroy
      render json: {}, status: :ok
    else
      render json: @task, status: :not_found
    end
  end

  def create
    logger.log "Params: #{params}"
  end

  def update
    if @task
      if params[:name]
        @task.name = params[:name]
      end
      if params[:completed]
        @task.completed = str_to_bool(params[:completed])
      end
      if params[:description]
        @task.description = params[:description]
      end
      if @task.save
        render json: {ok: true}, status: :ok
      else
        render json: {ok: false}, status: :internal_server_error
      end
    else
      render json: {ok: false}, status: :not_found
    end
  end

  private

  def find_student
    @task = Task.find_by(id: params[:id].to_i)
  end

end
