require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('haskell-platform') do
    it { should be_installed }
end
describe file('/usr/bin/ghc') do
    it { should be_executable }
end
