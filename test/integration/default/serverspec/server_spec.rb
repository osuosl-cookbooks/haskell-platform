require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('haskell-platform') do
    it { should be_installed }
end
