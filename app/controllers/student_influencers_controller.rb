class StudentInfluencersController < ApplicationController

  before_action :set_variables, only: [:new]

  def index         # GET
  end

  def show          # GET
  end

  def new           # GET
    @student_influencer = StudentInfluencer.new
  end

  def create        # POST
    @student_influencer = StudentInfluencer.new(student_influencer_params)
    if @student_influencer.save
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

  def student_influencer_params
    params.require(:student_influencer).permit(:first_name, :last_name, :phone_number, :email, :language_spoken, :degree_subject, :university, :industrial_placement, :reason_to_be_ambassador, :social_media, :current_university_year, :home_postcode, :can_work_in_uk, :gender, :ethnicity, :school_or_college_type, :free_school_meals, :sexuality, :parents_university_attendance, :disabled_or_handicap, :mailing_list )
  end

  def set_variables
    require 'json'
    require 'open-uri'

    url = 'http://universities.hipolabs.com/search?country=United%20Kingdom'
    uni_serialised = open(url).read
    universities = JSON.parse(uni_serialised)
    @universities = universities.map { |university| university["name"] }
    @university_year = [ 'Pre-university:year 12', 'Pre-university:year 13', '1st year', '2nd year', '3rd year', '4th year', '5th year', '6th year', 'Already graduated']
    @ethnicity = [ 'Arab', 'Asian/Asian British', 'Black/African/Caribbean/Black British', 'Mixed/Multiple ethnic background', 'White/White British', 'Other', 'Prefer not to say']
    @languages = [ 'French', 'German', 'English', 'Italian', 'Chinese', 'Spanish'].sort
    @genders = [ 'Male', 'Female', 'Non-Binary', 'Other' ]
    @sexuality = [ 'Straight/Heterosexual', 'Gay', 'Lesbian', 'Bisexual', 'Other', 'Prefer not to say']
    @social_media = [ 'Facebook', 'Twitter', 'Instagram', 'LinkedIn', 'Snapchat', 'Other']
    @school_type = [ 'State', 'Grammar', 'Private', 'International', "I didn't attend a UK school"]

  end
end

