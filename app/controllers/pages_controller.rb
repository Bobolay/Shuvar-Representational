class PagesController < ApplicationController
  before_action :set_page_instance, except: [:index]

  self.layout "home"

  def index

  end

  def news_all

  end

  def news_one

  end

  def about_us

  end

  def services

  end

  def scheme_all

  end

  def projects

  end

  def projects_one

  end

  def contacts_us

  end

  def price_plan

  end

  def webcams

  end

  def workhours

  end

  def registration

  end

  def account

  end

  private

  def set_page_instance
  #   set_page_metadata(action_name)
  end
end