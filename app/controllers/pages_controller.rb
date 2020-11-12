class PagesController < ApplicationController
  def home
  end

  def index
  end

  def grappe_familliale
    @id_agent = params["id_agent"]
    #pry
  end

end
