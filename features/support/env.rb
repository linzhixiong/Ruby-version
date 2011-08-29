require File.dirname(__FILE__) + '/../../basic_item'
require File.dirname(__FILE__) + '/../../imported_item'
require File.dirname(__FILE__) + '/../../taxed_item'
require File.dirname(__FILE__) + '/../../taxed_rule'
begin
      require 'rspec/expectations';
  rescue LoadError;
      require 'spec/expectations';
end