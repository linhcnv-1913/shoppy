require "rails_helper"
require "helpers/valid_json_helper.rb"

RSpec.describe Api::Admin::ForgotPasswordsController, type: :controller do
  include ValidJsonHelper
  context "when send email success" do
    let(:password){ "Abcd1234" }
    let(:domain){"localhost:8080"}
    let(:admin){create :admin, password: password, password_confirmation: password}
    subject{post :create, params: {email: admin.email, domain: domain}}

    it "sends an email" do
      expect{subject}.to change{ActionMailer::Base.deliveries.size}.by(1)
    end

    it "has responds admin data as json" do
      expect(valid_json? subject.body).to be true
    end
  end

  context "when send email fail" do
    it "response an exception" do
      mail = double("ActionMailer")
      allow(mail).to receive(:reset_password).and_raise(Modules::SendEmailError)
      expect{mail.reset_password}.to raise_error(Modules::SendEmailError)
    end
  end
end
