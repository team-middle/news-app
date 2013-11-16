Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '52d1b71064f1aab62113', '651249039c97a9a8633173b94d75858cee232dd0'
end