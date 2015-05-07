class PayPeriodsController < ApplicationController
  before_filter :authenticate_user! # redirect if user isn't signed in
  before_filter :check_users_authorization, :except => :destroy# redirect if user is not an admin
  before_action :set_pay_period, only: [:show, :edit, :update, :destroy]


  # GET /pay_periods
  # GET /pay_periods.json
  def index
    @pay_periods = PayPeriod.all
  end

  # GET /pay_periods/1
  # GET /pay_periods/1.json
  def show 
  end

  # GET /pay_periods/new
  def new
    @pay_period = PayPeriod.new
  end

  # GET /pay_periods/1/edit
  def edit
  end

  def create_next
    @pay_period = PayPeriod.create_next(pay_period_params)
    logger.debug("Hey guys I'm about to call the helper ")
    create_helper(@pay_period)
    logger.debug("Hey guys I just called the helper")
    # TODO: notifiy doctors if pay_period is open
    if pay_period_params[:is_open]
    end
  end

  def create
    @pay_period = PayPeriod.new(pay_period_params)
    create_helper(@pay_period)
  end
  # POST /pay_periods
  # POST /pay_periods.json
  def create_helper(pay_period)
    @pay_period = pay_period
    logger.debug(@pay_period)
    # TODO: uncomment the next line after Steven and I figure out why the calendar model is failing
   # Shift.create_shifts_for_pay_period(@pay_period.start_date, @pay_period.end_date, @pay_period.id)
    respond_to do |format|
      if @pay_period.save
        logger.debug("Pay period successfully saved")
        #change_pay_period_id_for_users()
        # format.html { redirect_to @pay_period, notice: 'Pay period was successfully created.' }
        format.html { redirect_to @pay_period, notice: 'Pay period was successfully created.' }
        format.json { render :show, status: :created, location: @pay_period }        
      else
        logger.debug("Pay period not successfully saved")
        format.html { render :new }
        format.json { render json: @pay_period.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_pay_period_id_for_users
    Admin.update_pay_period(params[:new_pay_period])
    Doctor.update_pay_period(params[:new_pay_period])
    params[:new_pay_period] = @pay_period.id
  end

  # PATCH/PUT /pay_periods/1
  # PATCH/PUT /pay_periods/1.json
  def update
    update_helper(@pay_period, 'Pay period', pay_period_params)
  end

  # DELETE /pay_periods/1
  # DELETE /pay_periods/1.json
  def destroy
    destroy_helper(@pay_period, pay_periods_url, "Pay period")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_period
      @pay_period = PayPeriod.find_by_id params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_period_params
      params.require(:pay_period).permit(:start_date, :end_date, :is_open, :phase)
    end

    def check_users_authorization
      if !current_user.is_a? AdminAssistant
        check_users_authorization_helper(Admin.NAME)
      end
    end
end
