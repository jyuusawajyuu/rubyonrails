class ViewersController < ApplicationController
  def result
    @viewer = Viewer.new
  end
  def create
    @viewer = Viewer.new(viewer_params)
    @path = @viewer.keywd
    File.open("#{@path}","r") do |f|
      s = f.size
      @content = f.sysread(s)
      render 'show'
    end
  end
  
  private
    def viewer_params
      params.require(:viewer).permit(:keywd)
    end
end
