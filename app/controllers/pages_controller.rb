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

  def scheme_all

  end

  def terminal_1

  end

  def terminal_2

  end

  def terminal_3

  end

  def terminal_4

  end

  def terminal_5

  end

  def terminal_6

  end

  def not_found
    @render_header = false
    @render_footer = false
  end

  private

  def set_page_instance
  #   set_page_metadata(action_name)
  end
end