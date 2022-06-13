require 'rails_helper'

describe Note do
  describe "#associations" do
    it { is_expected.to belong_to(:user) }
  end

  describe "#validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.not_to allow_value('').for(:title) }
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.not_to allow_value('').for(:content) }
  end
end