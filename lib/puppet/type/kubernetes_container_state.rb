
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_container_state) do
  
  @doc = "ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the container_state.'
  end
  
    
      
      newproperty(:waiting) do
      
        
        desc "Details about a waiting container"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:running) do
      
        
        desc "Details about a running container"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:terminated) do
      
        
        desc "Details about a terminated container"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
