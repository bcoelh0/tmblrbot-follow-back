Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  provider :tumblr, 'EzlPn3jgYev8s3rbO5MdYFwMwE0GNSWBBUonhwyHXh4ApnoJn0', 'CSN6pFFJAJ8hE5OWiPMMvZqYKcWouxDlzcFahWufTRQq2TP88o'
end