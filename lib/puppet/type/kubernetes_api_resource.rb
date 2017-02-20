
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_api_resource) do
  
  @doc = "APIResource specifies the name of a resource and whether it is namespaced."
  

  ensurable

  
  validate do
    required_properties = [
    
      name,
    
      namespaced,
    
      kind,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the api_resource.'
  end
  
    
      newproperty(:name) do
        
        desc "name is the name of the resource."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:namespaced) do
        
        desc "namespaced indicates if a resource is namespaced or not."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
  
end
