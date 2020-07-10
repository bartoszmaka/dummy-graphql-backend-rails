class SignaturesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    api_secret = 'SHUYhZ4-PRJPCFfa5H8TxO0An6I'
    binding.pry
  end
end
