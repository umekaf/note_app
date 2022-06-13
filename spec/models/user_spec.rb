require 'rails_helper'

describe User do
  describe "#associations" do
    it { is_expected.to have_many(:notes).dependent(:destroy) }
  end

  describe "#validations" do
    it { is_expected.not_to allow_value('testemail').for(:email) }
    it { is_expected.to allow_value('test@example.com').for(:email) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.not_to allow_value('').for(:email) }
  end
end