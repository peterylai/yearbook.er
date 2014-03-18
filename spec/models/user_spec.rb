require 'spec_helper'

describe User do
it { should validate_presence_of (:email)}
it { should validate_presence_of(:first_name)}
it { should validate_presence_of(:last_name)}

  describe Admin do
    
    let!(:admin) { FactoryGirl.create(:admin) }
    let!(:student) { FactoryGirl.create(:student) }

    describe "#is_admin?" do
      it "returns whether a user is an admin" do
        expect(admin.is_admin?).to be_true
        expect(student.is_admin?).to be_false
      end
    end
  end
end