require "rails_helper"

RSpec.describe Combination, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:ingredient) }

    it { should belong_to(:dish) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
