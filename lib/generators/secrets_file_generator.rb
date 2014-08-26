class SecretsFileGenerator < Rails::Generators::Base
  desc "Generates a new secrets.yml"
  class_option :envs, type: :array, default: %w( test development ),
               desc: "Array of environments to include in secrets.yml"

  def generate_env_secrets
    @secrets = options["envs"].reduce({}) do |a,e|
      a.update({ e => { "secret_key_base" => SecureRandom.hex(64) } })
    end
  end

  def create_secrets_file
    create_file "config/secrets.yml", YAML.dump(@secrets)
  end
end
