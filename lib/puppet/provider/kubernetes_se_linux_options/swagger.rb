
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_se_linux_options).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        user: instance.user.respond_to?(:to_hash) ? instance.user.to_hash : instance.user,
        
      
    
      
        
        role: instance.role.respond_to?(:to_hash) ? instance.role.to_hash : instance.role,
        
      
    
      
        
        type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
        
      
    
      
        
        level: instance.level.respond_to?(:to_hash) ? instance.level.to_hash : instance.level,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_se_linux_options #{name}")
    create_instance_of('se_linux_options', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('se_linux_options', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_se_linux_options #{name}")
    destroy_instance_of('se_linux_options', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('se_linux_options')
  end

  def build_params
    params = {
    
      
        user: resource[:user],
      
    
      
        role: resource[:role],
      
    
      
        type: resource[:type],
      
    
      
        level: resource[:level],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
