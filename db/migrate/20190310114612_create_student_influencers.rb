class CreateStudentInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :student_influencers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email,              null: false, default: ""
      t.integer :phone_number
      t.string :language_spoken
      t.string :degree_subject
      t.string :university
      t.boolean :industrial_placement
      t.string :reason_to_be_ambassador
      t.string :social_media
      t.string :current_university_year
      t.string :home_postcode
      t.boolean :can_work_in_uk
      t.string :gender
      t.string :ethnicity
      t.string :school_or_college_type
      t.string :free_school_meals
      t.string :sexuality
      t.string :parents_university_attendance
      t.string :disabled_or_handicap
      t.boolean :mailing_list
      t.timestamps
    end
  end
end
