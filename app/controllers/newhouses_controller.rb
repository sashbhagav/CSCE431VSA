# frozen_string_literal: true
class NewhousesController < ApplicationController
  def index
    @newhouses = Newhouse.all
  end

  def new
    @newhouse = Newhouse.new
  end

  def show
    @newhouse = Newhouse.find(params[:id])
  end
  def edit
    @newhouse = Newhouse.find(params[:id])
  end
  def create
    @newhouse = Newhouse.new(household_params)

    respond_to do |format|
      if @newhouse.save
        format.html { redirect_to @newhouse, notice: "Household was successfully created." }
        format.json { render :show, status: :created, location: @newhouse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /households/1 or /households/1.json
  def update
    @newhouse = Newhouse.find(params[:id])
    respond_to do |format|
      if @newhouse.update(household_params)
        format.html { redirect_to @newhouse, notice: "Household was successfully updated." }
        format.json { render :show, status: :ok, location: @newhouse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /households/1 or /households/1.json
  def delete
    @newhouse = Newhouse.find(params[:id])
  end

  def destroy
    @newhouse = Newhouse.find(params[:id])
    @newhouse.destroy
    redirect_to households_path, notice: "households deleted sucessfully"
  end
  private
    # Only allow a list of trusted parameters through.
    def household_params
      params.require(:newhouse).permit(:first, :last, :UIN, :family, :email, :phonenumber, :classification, :major, :points)
    end
end
