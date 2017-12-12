
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_resource_quota_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        hard: instance.hard.respond_to?(:to_hash) ? instance.hard.to_hash : instance.hard,
      
    
      
        scopes: instance.scopes.respond_to?(:to_hash) ? instance.scopes.to_hash : instance.scopes,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_resource_quota_spec #{name}")
    create_instance_of('resource_quota_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('resource_quota_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_resource_quota_spec #{name}")
    destroy_instance_of('resource_quota_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('resource_quota_spec')
  end

  def build_params
    params = {
    
      
        hard: resource[:hard],
      
    
      
        scopes: resource[:scopes],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
