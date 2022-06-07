# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Devise::SetDefaultMailerSender, :config do
  let(:config) { RuboCop::Config.new }

  it 'registers an offense when using default devise mailer sender' do
    expect_offense(<<~RUBY)
      Devise.setup do |config|
        config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Set default mailer sender in config/initializers/devise.rb
      end
    RUBY
  end

  it 'does not register an offense when not using default devise mailer sender' do
    expect_no_offenses(<<~RUBY)
      Devise.setup do |config|
        config.mailer_sender = 'other@example.com'
      end
    RUBY
  end
end
