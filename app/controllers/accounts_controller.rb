class AccountsController < ApplicationController
  def index
    @accounts = GetAllAccounts.new.()
  end
end
