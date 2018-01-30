
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_container_state_running).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        started_at: instance.startedAt.respond_to?(:to_hash) ? instance.startedAt.to_hash : instance.startedAt,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_container_state_running #{name}")
    create_instance_of('container_state_running', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('container_state_running', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_container_state_running #{name}")
    destroy_instance_of('container_state_running', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('container_state_running')
  end

  def build_params
    params = {
    
      
        startedAt: resource[:started_at],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
