class ChartsController < ApplicationController

before_action :set_chart, only: [:show, :edit, :update, :destroy]


  def index
    @charts = Chart.all
  end

  def show
  end

  def new
    @chart = Chart.new
    render partial: "form"
  end

  def create
    @chart = Chart.new(chart_params)
    if @chart.save
      redirect_to root_path
    else
      render partial: "form"
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @chart.update(chart_params)
      redirect_to chart_path
    else
      render partial: "form"
    end
  end

  def destroy
    @chart.destroy
    redirect_to root_path
  end

  private

  def chart_params
    params.require(:chart).permit(:name)
  end

  def set_chart
    @chart = Chart.find(params[:id])
  end
end
