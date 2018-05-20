require "rails_helper"

RSpec.describe Api::TweetsController do
  describe "Search" do

    context "when it called w/o params" do
      describe "response status" do
        subject { get(:index, format: :json) && response.status }
        it { is_expected.to eq 200 }
      end

      describe "response body" do
        subject { get(:index, format: :json) && response.body }

        it do
          puts "YAAAA"
          puts subject
          is_expected.to eq "TTT"
        end
      end
    end

    context "when it called with search query" do
      describe "response body" do
        subject { get(:index, params: { query: 'test' }, format: :json) && response.body }

        it do
          puts "ZZZZ"
          puts subject

          is_expected.to eq "TTT"
        end
      end
    end
  end
end
