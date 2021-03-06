
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_allowed_host_path) do
  
  @doc = "defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the allowed_host_path.'
  end
  
    
      
      newproperty(:path_prefix) do
      
        
        desc "is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.

Examples: `/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
