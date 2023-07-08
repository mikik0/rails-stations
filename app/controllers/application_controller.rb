class ApplicationController < ActionController::Base
  rescue_from StandardError, with: :handle_error

  def handle_error(exception)
    # エラーメッセージの処理やログ出力などのカスタム処理を行う
    flash.now[:error] = '予期しないエラーが発生しました'
    render 'errors/internal_server_error', status: :internal_server_error
  end
end
