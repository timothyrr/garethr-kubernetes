# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_namespace_status) do
  
  @doc = "NamespaceStatus is information about the current status of a Namespace."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the namespace_status.'
  end
  
    
      newproperty(:phase) do
        
        desc "Phase is the current lifecycle phase of the namespace. More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
