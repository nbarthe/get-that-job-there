class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home who_are_we]
  def home
  end

  def who_are_we
  end
end
