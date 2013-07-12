require_relative 'spec_helper'

describe file('/usr/local/gradle') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe command('/usr/local/gradle/bin/gradle') do
  it { should return_exit_status 0 }
end

describe command('/usr/local/gradle/bin/gradle --version') do
  it { should return_stdout /Gradle/ }
end
