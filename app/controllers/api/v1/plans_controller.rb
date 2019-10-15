class Api::V1::PlansController < ApplicationController
	before_action :find_plan, only: [:show, :update]

  def index
    plans = Plan.all
    render json: plans
  end

  def new 
    plan = Plan.new
  end

  def show  
    render json: plan
  end

  def create
    plan = Plan.new(plan_params)
    
    if plan.valid?
      plan.save
      render json: plan, status: :accepted
    else 
      render json: { errors: plan.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    plan.update(plan_params)
    if plan.save
      render json: plan, status: :accepted
    else
      render json: { errors: plan.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def plan_params
    params.permit(:place, :adventure)
  end

  def find_plan
    plan = Plan.find_by_id(params[:id])
  end
end
