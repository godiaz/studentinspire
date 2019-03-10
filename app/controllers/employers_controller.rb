class EmployersController < ApplicationController
  def index         # GET
  end

  def show          # GET
  end

  def new           # GET
    # @employer = Employer.find(params[:employer_id])
    @employer = Employer.new
  end

  def create        # POST
    @employer = Employer.new(employer_params)
    if @employer.save
      flash[:notice] = "Form succesfully submitted"
      redirect_to root_path
    else
      flash[:error] = "Please resend the form"
      render :new
    end
  end

  def edit          # GET
  end

  def update        # PATCH
  end

  def destroy       # DELETE
  end

  def employer_params
    params.require(:employer).permit(:company_name, :contact_name, :message, :email)
  end
end
