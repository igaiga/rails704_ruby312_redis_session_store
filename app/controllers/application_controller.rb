class ApplicationController < ActionController::Base
  before_action :set_session_on_redis
  def set_session_on_redis
    session[:foo] = 555
    p "===================="
    p session.options[:expire_after]
    session.options[:expire_after] = 30.seconds
    p session.options[:expire_after]
#    session.instance_variable_get(:@by).instance_variable_get(:@conn).instance_variable_get(:@options)[:expire_after] = "30 seconds"
  end
end
