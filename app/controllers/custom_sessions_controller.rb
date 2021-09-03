# frozen_string_literal: true

class CustomSessionsController < Devise::SessionsController # rubocop:disable Style/Documentation
  before_action :before_login, only: :create
  after_action :after_login, only: :create

  def before_login; end

  def after_login
    @test = Cart.where(session_id: browser_session.to_s).update(session_id: current_user.id)
  end
end
