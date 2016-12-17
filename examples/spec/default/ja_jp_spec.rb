require 'spec_helper'

describe file('/etc/apt/sources.list') do
  it { should be_file }
  its(:content) { should match(%r!http://\S+\.jp\b!) }
end

describe command('locale -a') do
  its(:stdout) { should match(/^ja_JP\.utf8$/) }
end

describe command('date +%Z') do
  its(:stdout) { should eq "JST\n" }
end

describe package('lv') do
  it { should be_installed }
end
