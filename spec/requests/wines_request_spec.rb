require 'rails_helper'

RSpec.describe "Wines", type: :request do
	describe "GET index" do
		it "Show index page" do
			get "/wines/index"
			expect(response).to_not be_successful
		end

		it "renders the index template" do
			# get "/wines/index"
			# expect(response).to render_template("/wines/index")
		end

		it "renders the show template" do
			# get "/wines/show"
			# expect(response).to render_template("/wines/show")
		end
		
	end
end
