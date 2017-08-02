require 'spec_helper'

describe 'chef-apt-docker::default' do
  context 'default attributes' do
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
  end
end
