class PreExistingConditionsController < ApplicationController
  def create
    @pre_existing_condition = PreExistingCondition.new(pre_existing_condition_params)
    if @pre_existing_condition.save
      redirect_to @pre_existing_condition
    else
      render :new
    end
  end

  def destroy
    @pre_existing_condition = PreExistingCondition.find(params[:id])
    @pre_existing_condition.destroy
    redirect_to pre_existing_conditions_path
  end

  def update
    @pre_existing_condition = PreExistingCondition.find(params[:id])
    if @pre_existing_condition.update(pre_existing_condition_params)
      redirect_to @pre_existing_condition
    else
      render :edit
    end
  end

  private

  def pre_existing_condition_params
    params.require(:pre_existing_condition).permit(:diabetes, :hypertension, :asthma)
  end
end
