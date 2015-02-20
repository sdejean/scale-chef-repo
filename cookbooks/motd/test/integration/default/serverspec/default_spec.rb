require 'spec_helper'

describe 'motd::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'check contents' do
    expect(file('/etc/motd')).to contain 'Propert of Sharktopus'
  end

end
