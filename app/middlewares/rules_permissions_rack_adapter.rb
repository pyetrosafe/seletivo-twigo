class RulesPermissionsRackAdapter < Authlogic::ControllerAdapters::RackAdapter
  def cookie_domain
    # 'your_cookie_domain_here.com'
    '/'
  end
end
