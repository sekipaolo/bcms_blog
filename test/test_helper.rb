ENV["RAILS_ENV"] = "test"
<<<<<<< HEAD
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'mocha'
require 'factory_girl'
require 'bcms_support'
require 'bcms_support/factories'
require 'blog_test_helper'
require 'test_logging'

class ActiveSupport::TestCase
  include BcmsSupport::Test
  include BlogTestHelper
  include TestLogging
=======
ENV["BACKTRACE"] = 'YES PLEASE'

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


require 'bcms_support'
require 'bcms_support/factories'
require 'blog_test_helper'

class ActiveSupport::TestCase
  include BcmsSupport::Test
  include BlogTestHelper
>>>>>>> rails3

  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false
end
