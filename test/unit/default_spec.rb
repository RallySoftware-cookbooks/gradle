require_relative 'spec_helper'

describe 'gradle::default' do
  subject(:chef_run) { ChefSpec::Runner.new.converge described_recipe }

  it { should put_ark('gradle').with(path: '/usr/local', owner: 'root', group: 'root', mode: 0755) }

end
