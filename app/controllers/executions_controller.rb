class ExecutionsController < ApplicationController

  def index
    @executions = Execution.for_cron(params[:cron_id])
  end

  def create_execution
    @execution = Execution.new(cron_id: params[:cron_id])
    @execution.status = 'Started'
    if @execution.save
      render json: { status: :created }
    else
      render json: { errors: @execution.errors, status: :unprocessable_entity }
    end
  end

  def complete_execution
    @execution = Cron.find_by(id: params[:cron_id]).executions.last
    @execution.status = 'Completed'
    if @execution.save
      render json: { status: :ok }
    else
      render json: { errors: @execution.errors, status: :unprocessable_entity }
    end
  end
end