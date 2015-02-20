require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'is installed' do
    expect(package('httpd')).to be_installed
  end

  if 'is running' do
    expect(service('httpd')).to be_enabled
    expect(service('httpd')).to be_running
  end
end
