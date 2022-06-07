# frozen_string_literal: true

module RuboCop
  module Cop
    module Devise
      # TODO:
      # @example EnforcedStyle: bar (default)
      #   # Description of the `bar` style.
      #
      #   # bad
      #   bad_bar_method
      #
      #   # bad
      #   bad_bar_method(args)
      #
      #   # good
      #   good_bar_method
      #
      #   # good
      #   good_bar_method(args)
      #
      # @example EnforcedStyle: foo
      #   # Description of the `foo` style.
      #
      #   # bad
      #   bad_foo_method
      #
      #   # bad
      #   bad_foo_method(args)
      #
      #   # good
      #   good_foo_method
      #
      #   # good
      #   good_foo_method(args)
      #
      class SetDefaultMailerSender < Base
        MSG = 'Set default mailer sender in config/initializers/devise.rb'

        def on_send(node)
          return unless match?(node)

          add_offense(node)
        end

        def match?(node)
          node.method_name == :mailer_sender= &&
            node.first_argument == s(:str, "please-change-me-at-config-initializers-devise@example.com")
        end
      end
    end
  end
end
