class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: %i[profile]
  def index
    @title = 'Welcome to your contact list'
  end

  def about; end

  def contac; end

  def profile; end
end
