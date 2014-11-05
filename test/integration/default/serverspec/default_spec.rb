require_relative 'spec_helper'

describe file('/usr/local/gradle') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe command('/usr/local/gradle/bin/gradle') do
  its(:exit_status) { should eq 0 }
end

describe command('/usr/local/gradle/bin/gradle --version') do
  its(:stdout) { should match /Gradle/ }
end
