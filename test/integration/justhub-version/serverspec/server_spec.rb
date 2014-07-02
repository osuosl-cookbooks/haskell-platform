require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('haskell') do
    it { should be_installed.with_version('1-4.0.el6') }
end
describe package('haskell-min') do
    it { should be_installed.with_version('1-4.0.el6') }
end
describe command('/usr/bin/ghc --version | awk \'{print $NF}\'') do
    it { should return_stdout '7.4.1' }
end
describe file('/usr/bin/ghc') do
    it { should be_executable }
end
