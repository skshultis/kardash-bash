class KardashiansController < ApplicationController

  def index
    @kardashians = Kardashian.all
  end

  def show
    @kardashian = Kardashian.find(params[:id])
  end

  def new
    @kardashian = Kardashian.new
  end

  def create
    @kardashian = Kardashian.new(kardashian_params)
    if @kardashian.save
      redirect_to @kardashian, notice: "you created Kardashian: #{@kardashian.name}"
    else
      render :new
    end
  end

  def edit
    @kardashian = Kardashian.find(params[:id])
  end

  def destroy
    @kardashian.destroy
    redirect_to kardashians_path
  end
end
