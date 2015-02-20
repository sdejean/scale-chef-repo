require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'installed' do
    expect(package('httpd')).to be_installed
  end

end
