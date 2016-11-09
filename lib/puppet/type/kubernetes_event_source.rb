# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_event_source) do
  
  @doc = "EventSource contains information for an event."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the event_source.'
  end
  
    
      newproperty(:component) do
        
        desc "Component from which the event is generated."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:host) do
        
        desc "Node name on which the event is generated."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
