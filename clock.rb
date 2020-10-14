
require "slack-notify"
require 'clockwork'

include Clockwork
require 'active_support/time'
module Clockwork
    handler do |job|
        puts "Running #{job}"
        sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
        sample.notify("hello, this message is sending each 3 minute")
    end

    every(1.minutes, 'less.frequent.job')
end
