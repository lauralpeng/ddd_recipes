require 'rails_helper'

RSpec.describe Dish, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:combinations) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:category_id) }

    it { should validate_presence_of(:dish_name) }

    it { should validate_presence_of(:user_id) }

    end
end
