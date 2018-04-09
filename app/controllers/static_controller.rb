class StaticController < ApplicationController
  def home
    if current_user
      redirect_to memories_url
    end
  end

  def about
  end
end
