class HouseholdsController < ApplicationController
  before_action :set_household, only: %i[ show edit update destroy ]

  # GET /households or /households.json
  def index
    @households = Household.all
    if($adminBOOLEAN == 1)
        render('index')
    else
        redirect_to(controller: 'member_view', action: 'index')
    end
  end

  # GET /households/1 or /households/1.json
  def show
    if($adminBOOLEAN == 1)
        render('show')
    else
        redirect_to(controller: 'member_view', action: 'index')
    end
  end

  # GET /households/new
  def new
    @household = Household.new
    if($adminBOOLEAN == 1)
        render('new')
    else
        redirect_to(controller: 'member_view', action: 'index')
    end
  end



  # GET /households/1/edit
  def edit
    if($adminBOOLEAN == 1)
        render('edit')
    else
        redirect_to(controller: 'member_view', action: 'index')
    end
  end

  # POST /households or /households.json
  def create
    @household = Household.new(household_params)

    respond_to do |format|
      if @household.save
        format.html { redirect_to @household, notice: "Household was successfully created." }
        format.json { render :show, status: :created, location: @household }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @household.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /households/1 or /households/1.json
  def update
    respond_to do |format|
      if @household.update(household_params)
        format.html { redirect_to @household, notice: "Household was successfully updated." }
        format.json { render :show, status: :ok, location: @household }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @household.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /households/1 or /households/1.json
  def delete
    @household = Household.find(params[:id])
    if($adminBOOLEAN == 1)
        render('delete')
    else
        redirect_to(controller: 'member_view', action: 'index')
    end
  end

  def destroy
    @household = Household.find(params[:id])
    @household.destroy
    redirect_to households_path, notice: "households deleted sucessfully"
  end

  def import
    Household.import(params[:file])
    redirect_to households_path, notice: "households added sucessfully"
  end

  def import2
    Household.import2(params[:file])
    redirect_to households_path, notice: "households added sucessfully"
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_household
      @household = Household.find(params[:id])
    end




    # Only allow a list of trusted parameters through.
    def household_params
      params.require(:household).permit(:first, :last, :UIN, :family, :email, :phonenumber, :classification, :major, :points)
    end
end
