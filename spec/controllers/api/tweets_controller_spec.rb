require "rails_helper"

RSpec.describe API::TweetsController do
  describe "Search" do
    let(:url) { "/api/tweets" }

    context "when it called w/o params" do

      describe "response status" do
        subject { get(url) && response.status }
        it { is_expected.to eq 200 }
      end

      describe "response body" do
        subject { get(url) && response.body }

        it { is_expected.to eq "TTT" }
      end
    end
  end
end
