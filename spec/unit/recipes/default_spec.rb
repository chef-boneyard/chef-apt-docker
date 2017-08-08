require 'spec_helper'

describe 'chef-apt-docker::default' do
  context 'Ubuntu 16.04' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe)
    end

    it 'creates the apt repo docker-stable' do
      expect(chef_run).to add_apt_repository('docker-stable')
    end

    it 'removes the apt repo docker-edge' do
      expect(chef_run).to remove_apt_repository('docker-edge')
    end

    it 'removes the apt repo docker-test' do
      expect(chef_run).to remove_apt_repository('docker-test')
    end

    it 'removes the apt repo docker-test' do
      expect(chef_run).to remove_apt_repository('docker-test')
    end

    it 'does not install repo dependency packages' do
      expect(chef_run).not_to install_package(%w(dirmngr apt-transport-https))
    end
  end

  context 'Debian 8' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'debian', version: '8.8').converge(described_recipe)
    end

    it 'does not install repo dependency packages' do
      expect(chef_run).not_to install_package(%w(dirmngr apt-transport-https))
    end
  end

  context 'Debian 9' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'debian', version: '9.0').converge(described_recipe)
    end

    it 'installs dependency repo packages' do
      expect(chef_run).to install_package(%w(dirmngr apt-transport-https))
    end
  end
end
