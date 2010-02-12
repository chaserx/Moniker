raw_config = File.read(RAILS_ROOT + "/config/password_config.yml")
PASSWORD_CONFIG = YAML.load(raw_config)[RAILS_ENV].symbolize_keys
