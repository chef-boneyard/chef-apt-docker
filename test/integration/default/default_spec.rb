if os[:name] == 'debian'
  describe apt('https://download.docker.com/linux/debian') do
    it { should exist }
    it { should be_enabled }
  end
elsif os[:name] == 'ubuntu'
  describe apt('https://download.docker.com/linux/ubuntu') do
    it { should exist }
    it { should be_enabled }
  end
end

describe package('docker-ce') do
  it { should be_installed }
end
