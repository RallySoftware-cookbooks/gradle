require_relative 'spec_helper'

describe file('/usr/local/gradle-1.6') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
