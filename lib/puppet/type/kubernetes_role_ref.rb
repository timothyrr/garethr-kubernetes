
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_role_ref) do
  
  @doc = "RoleRef contains information that points to the role being used"
  

  ensurable

  
  validate do
    required_properties = [
    
      :api_group,
    
      :kind,
    
      :name,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the role_ref.'
  end
  
    
      
      newproperty(:api_group) do
      
        
        desc "APIGroup is the group for the resource being referenced"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
  
    
      
      newproperty(:name) do
      
        
        desc "Name is the name of resource being referenced"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
