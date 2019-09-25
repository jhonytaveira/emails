class EmailsController < ApplicationController
  def index
    email = Mail.read('public/emails/635508b6-a8e9-4fca-9d1e-2663da861a66.eml')

    @emails = ParseEmail.new(email).call
  end
end
