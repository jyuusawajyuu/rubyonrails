class ViewersController < ApplicationController
  def result
    @viewer = Viewer.new
  end
  def create
    @viewer = Viewer.new(viewer_params)
    @path = @viewer.keywd
    if File.exists?("#{@path}")
      f = File.new("#{@path}","r")
      s = f.size
      @content = f.sysread(s)
      render 'show'
    else
      render "result"
    end
  end
  
  private
    def viewer_params
      params.require(:viewer).permit(:keywd)
    end
end
