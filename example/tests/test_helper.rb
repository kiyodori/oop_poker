require "minitest/autorun"
require "debug"

Dir.glob("./**/*_test.rb").each { |file| require file }
