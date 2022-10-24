class ApplicationController < ActionController::Base
  before_action :set_session_on_redis
  def set_session_on_redis
    session[:foo] = 555
    session.instance_variable_get(:@by).instance_variable_get(:@conn).instance_variable_get(:@options)[:expire_after] = "600 seconds"
    # binding.break
    # @by @default_options にも入ってるのでそちらも書き換えた方が良さそう
    # ただ、@by　@conn @options だけでも意図通り動いている
    # TODO: セットする口がないかコード調べてみる
    # ActionPack ActionDispatch Request session.rbのコードで良いと思うが、ぱっと見ではすぐには見つからなかった
    # Rails704Ruby312RedisSessionStore::Application.config.session_store から追ってもいいかも
  end
end
