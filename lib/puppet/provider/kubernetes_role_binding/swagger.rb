
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_role_binding).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
    
      
    
      
        metadata: instance.metadata.respond_to?(:to_hash) ? instance.metadata.to_hash : instance.metadata,
      
    
      
        subjects: instance.subjects.respond_to?(:to_hash) ? instance.subjects.to_hash : instance.subjects,
      
    
      
        role_ref: instance.roleRef.respond_to?(:to_hash) ? instance.roleRef.to_hash : instance.roleRef,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_role_binding #{name}")
    create_instance_of('role_binding', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('role_binding', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_role_binding #{name}")
    destroy_instance_of('role_binding', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('role_binding')
  end

  def build_params
    params = {
    
      
    
      
    
      
        metadata: resource[:metadata],
      
    
      
        subjects: resource[:subjects],
      
    
      
        roleRef: resource[:role_ref],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
