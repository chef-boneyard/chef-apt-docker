describe apt('https://apt.dockerproject.org/repo') do
  it { should exist }
  it { should be_enabled }
end

describe package('docker-engine') do
  it { should be_installed }
end
