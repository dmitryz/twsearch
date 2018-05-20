# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::TweetsController, vcr: true do
  describe 'Search' do
    context 'when it called w/o params' do
      describe 'response status' do
        subject { get(:index, format: :json) && response.status }
        it { is_expected.to eq 200 }
      end

      describe 'response body' do
        subject { get(:index, format: :json) && response.body }

        it do
          is_expected.to eq "[]"
        end
      end
    end

    context 'when it called with search query' do
      describe 'response body' do
        subject { get(:index, params: { query: 'wrapper' }, format: :json) && JSON.parse(response.body) }

        it do
          messages = subject.map { |data| data['text'] }
          expect(messages).to include(/wrapper/)
        end
      end
    end
  end
end
