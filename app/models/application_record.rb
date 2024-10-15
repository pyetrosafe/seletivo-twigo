class ApplicationRecord < ActiveRecord::Base
  include ActiveSupport::NumberHelper
  include Globals::Brl

  primary_abstract_class
end
