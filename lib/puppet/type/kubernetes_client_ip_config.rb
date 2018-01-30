
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_client_ip_config) do
  
  @doc = "ClientIPConfig represents the configurations of Client IP based session affinity."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the client_ip_config.'
  end
  
    
      
      newproperty(:timeout_seconds) do
      
        
        desc "timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == 'ClientIP'. Default value is 10800(for 3 hours)."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
