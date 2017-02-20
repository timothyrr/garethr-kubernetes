
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_volume).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      
    
      
        host_path: instance.hostPath.respond_to?(:to_hash) ? instance.hostPath.to_hash : instance.hostPath,
      
    
      
        empty_dir: instance.emptyDir.respond_to?(:to_hash) ? instance.emptyDir.to_hash : instance.emptyDir,
      
    
      
        gce_persistent_disk: instance.gcePersistentDisk.respond_to?(:to_hash) ? instance.gcePersistentDisk.to_hash : instance.gcePersistentDisk,
      
    
      
        aws_elastic_block_store: instance.awsElasticBlockStore.respond_to?(:to_hash) ? instance.awsElasticBlockStore.to_hash : instance.awsElasticBlockStore,
      
    
      
        git_repo: instance.gitRepo.respond_to?(:to_hash) ? instance.gitRepo.to_hash : instance.gitRepo,
      
    
      
        secret: instance.secret.respond_to?(:to_hash) ? instance.secret.to_hash : instance.secret,
      
    
      
        nfs: instance.nfs.respond_to?(:to_hash) ? instance.nfs.to_hash : instance.nfs,
      
    
      
        iscsi: instance.iscsi.respond_to?(:to_hash) ? instance.iscsi.to_hash : instance.iscsi,
      
    
      
        glusterfs: instance.glusterfs.respond_to?(:to_hash) ? instance.glusterfs.to_hash : instance.glusterfs,
      
    
      
        persistent_volume_claim: instance.persistentVolumeClaim.respond_to?(:to_hash) ? instance.persistentVolumeClaim.to_hash : instance.persistentVolumeClaim,
      
    
      
        rbd: instance.rbd.respond_to?(:to_hash) ? instance.rbd.to_hash : instance.rbd,
      
    
      
        flex_volume: instance.flexVolume.respond_to?(:to_hash) ? instance.flexVolume.to_hash : instance.flexVolume,
      
    
      
        cinder: instance.cinder.respond_to?(:to_hash) ? instance.cinder.to_hash : instance.cinder,
      
    
      
        cephfs: instance.cephfs.respond_to?(:to_hash) ? instance.cephfs.to_hash : instance.cephfs,
      
    
      
        flocker: instance.flocker.respond_to?(:to_hash) ? instance.flocker.to_hash : instance.flocker,
      
    
      
        downward_api: instance.downwardAPI.respond_to?(:to_hash) ? instance.downwardAPI.to_hash : instance.downwardAPI,
      
    
      
        fc: instance.fc.respond_to?(:to_hash) ? instance.fc.to_hash : instance.fc,
      
    
      
        azure_file: instance.azureFile.respond_to?(:to_hash) ? instance.azureFile.to_hash : instance.azureFile,
      
    
      
        config_map: instance.configMap.respond_to?(:to_hash) ? instance.configMap.to_hash : instance.configMap,
      
    
      
        vsphere_volume: instance.vsphereVolume.respond_to?(:to_hash) ? instance.vsphereVolume.to_hash : instance.vsphereVolume,
      
    
      
        quobyte: instance.quobyte.respond_to?(:to_hash) ? instance.quobyte.to_hash : instance.quobyte,
      
    
      
        azure_disk: instance.azureDisk.respond_to?(:to_hash) ? instance.azureDisk.to_hash : instance.azureDisk,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_volume #{name}")
    create_instance_of('volume', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('volume', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_volume #{name}")
    destroy_instance_of('volume', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('volume')
  end

  def build_params
    params = {
    
      
        name: resource[:name],
      
    
      
        hostPath: resource[:host_path],
      
    
      
        emptyDir: resource[:empty_dir],
      
    
      
        gcePersistentDisk: resource[:gce_persistent_disk],
      
    
      
        awsElasticBlockStore: resource[:aws_elastic_block_store],
      
    
      
        gitRepo: resource[:git_repo],
      
    
      
        secret: resource[:secret],
      
    
      
        nfs: resource[:nfs],
      
    
      
        iscsi: resource[:iscsi],
      
    
      
        glusterfs: resource[:glusterfs],
      
    
      
        persistentVolumeClaim: resource[:persistent_volume_claim],
      
    
      
        rbd: resource[:rbd],
      
    
      
        flexVolume: resource[:flex_volume],
      
    
      
        cinder: resource[:cinder],
      
    
      
        cephfs: resource[:cephfs],
      
    
      
        flocker: resource[:flocker],
      
    
      
        downwardAPI: resource[:downward_api],
      
    
      
        fc: resource[:fc],
      
    
      
        azureFile: resource[:azure_file],
      
    
      
        configMap: resource[:config_map],
      
    
      
        vsphereVolume: resource[:vsphere_volume],
      
    
      
        quobyte: resource[:quobyte],
      
    
      
        azureDisk: resource[:azure_disk],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
