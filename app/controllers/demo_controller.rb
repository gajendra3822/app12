class DemoController < ApplicationController
  def index
    render('index')
  end
  def hello
    render('hello')
  end

  def youtube
    redirect_to('http://youtube.com')
  end
end
