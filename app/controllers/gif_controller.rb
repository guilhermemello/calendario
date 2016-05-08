class GifController < ApplicationController
  before_filter :authorize
  def cool
    redirect_to '/welcome#index'
  end

  def free
  end
end
