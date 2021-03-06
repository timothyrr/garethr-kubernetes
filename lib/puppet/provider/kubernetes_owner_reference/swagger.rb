
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_owner_reference).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
    
      
    
      
        
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
        
      
    
      
        
        uid: instance.uid.respond_to?(:to_hash) ? instance.uid.to_hash : instance.uid,
        
      
    
      
        
        controller: instance.controller.respond_to?(:to_hash) ? instance.controller.to_hash : instance.controller,
        
      
    
      
        
        block_owner_deletion: instance.blockOwnerDeletion.respond_to?(:to_hash) ? instance.blockOwnerDeletion.to_hash : instance.blockOwnerDeletion,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_owner_reference #{name}")
    create_instance_of('owner_reference', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('owner_reference', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_owner_reference #{name}")
    destroy_instance_of('owner_reference', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('owner_reference')
  end

  def build_params
    params = {
    
      
    
      
    
      
        name: resource[:name],
      
    
      
        uid: resource[:uid],
      
    
      
        controller: resource[:controller],
      
    
      
        blockOwnerDeletion: resource[:block_owner_deletion],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
