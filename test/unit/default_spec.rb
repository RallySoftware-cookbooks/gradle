require_relative 'spec_helper'

describe '::default' do

  let (:package_name) { 'gradle' }
  let (:owner) { 'root' }
  let (:group) { 'root' }
  let (:path) { '/usr/local' }
  let (:chef_run) { ChefSpec::ChefRunner.new(:step_into => [:ark]) }

  before do
    chef_run.converge 'gradle::default'
  end

  it 'creates gradle file in correct location' do
    expect(chef_run).to install_ark(package_name, path)
  end

  it 'creates gradle file with correct ownership' do
    expect(chef_run).to owner_group_ark(package_name, owner, group)
  end

  it 'creates gradle file with correct permissions' do
    expect(chef_run).to mode_ark(package_name, 755)
  end

end
