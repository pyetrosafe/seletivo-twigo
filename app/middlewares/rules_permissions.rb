module OnlineCourses
  class RulesPermissions

    def initialize(app)
      @app = app
    end

    def call(env)
      # Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(ApplicationController.new)
      # @req = ActionDispatch::Request.new(env)
      RulesPermissionsRackAdapter.new(env)

      # puts 'Passou aqui 2';
      # puts '### current_user_session: ' + current_user_session.to_s;
      # puts '### current_user: ' + current_user.to_s;
      @app.call(env)
    end

    def current_user_session
      begin

        puts 'UserSession.find: '+ UserSession.find
        # puts 'UserSession.find.user: ' + UserSession.find.user
        # logged_in = UserSession.find && UserSession.find.user
        return 'logged_in'
      rescue Exception => e
        return e
      end

      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
      return @current_user_session || 'Not found current_user_session'
    end

    def current_user
      return @current_user if defined?(@current_user)
      # @current_user = current_user_session && current_user_session.user
      return @current_user || 'Not found current_user'
    end

  end
end
