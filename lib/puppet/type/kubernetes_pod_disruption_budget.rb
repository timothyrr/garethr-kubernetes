
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_pod_disruption_budget) do
  
  @doc = "Pod disruption budget."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the pod disruption budget.'
  end
  
    
  
    
  
    
      
      newproperty(:metadata) do
      
        
        desc "Pod disruption budet object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:spec) do
      
        
        desc "Spec defines the behavior of a pod disruption budget. https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:status) do
      
        
        desc "Most recently observed status of the pod disruption budget. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
