class DashController < ApplicationController
  def index
    @dashs = Dash.all
  end

  def new
    @dash = Dash.new
  end

  def create
    @dash = Dash.create!(dash_params)
  end
