Rails.application.routes.draw do
  if Rails.env.test?
    TestOnlyRoutes = ActionDispatch::Routing::RouteSet.new unless defined?(::TestOnlyRoutes)
    mount TestOnlyRoutes, at: "/"
  end

  post "/chatops/slash-doubleup", to: "chatops/slack_slash_command#create"
end
