# controller for serving static files
class StaticController < ApplicationController
  layout "static"

  def index
    respond_to do |format|
      format.html { render :layout=>"application" }
    end
  end

  def show
    path = params[:path]

    path.each do |element|
      element.gsub! "-", "_"
    end

    if !path || path.empty?
      @file = "/static/index.html.erb"
    else
      @file = "/static/#{path.join("/")}.html.erb"
    end

    view_path = @template.view_paths[0].path + @file
    if !FileTest.exists?(view_path)
      respond_to do |format|
        format.html { render :file => "#{RAILS_ROOT}/public/404.html", :status => "404 Not Found" }
      end
      return
    end

    respond_to do |format|
      format.html { render :template => @file  }
    end
  end
end
