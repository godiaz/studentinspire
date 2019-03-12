class ChangePhoneNumberOnStudentInfluencerToString < ActiveRecord::Migration[5.2]
  def change
    change_column :student_influencers, :phone_number, :string
  end
end
