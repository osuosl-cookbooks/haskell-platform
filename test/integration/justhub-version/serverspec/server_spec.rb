require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('haskell') do
    it { should be_installed.with_version('1-4.0.el6') }
end
