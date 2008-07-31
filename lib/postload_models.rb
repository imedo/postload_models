module PostloadModels
  VERSION = '1.0.0'
end

require File.dirname(__FILE__) + '/postload_models/loader.rb'
require File.dirname(__FILE__) + '/postload_models/cacher.rb'

ActiveRecord::Base.extend PostloadModels::Loader
