class StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
  respond_to :xml, :json, :html

  def index
    @staffs = Staff.all
    respond_with(@staffs)
  end

  def show
    respond_with(@staff)
  end

  def new
    @staff = Staff.new
    respond_with(@staff)
  end

  def edit
  end

  def create
    @staff = Staff.new(staff_params)
    @staff.user = current_user
    @staff.save
    respond_with(@staff, location: root_path)
  end

  def update
    @staff.update(staff_params)
    respond_with(@staff)
  end

  def destroy
    @staff.destroy
    respond_with(@staff)
  end

  private
    def set_staff
      @staff = Staff.find(params[:id])
    end

    def staff_params
      params.require(:staff).permit(:first_name, :last_name, :email, :user_id, :rank)
    end
end
