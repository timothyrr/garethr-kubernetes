# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_aws_elastic_block_store_volume_source) do
  
  @doc = "Represents a persistent disk resource in AWS.

An Amazon Elastic Block Store (EBS) must already be created, formatted, and reside in the same AWS zone as the kubelet before it can be mounted. Note: Amazon EBS volumes can be mounted to only one instance at a time."
  

  ensurable

  
  validate do
    required_properties = [
    
      volumeID,
    
      fsType,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the aws_elastic_block_store_volume_source.'
  end
  
    
      newproperty(:volumeID) do
        desc "Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:fsType) do
        desc "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: 'ext4', 'xfs', 'ntfs'. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:partition) do
        desc "The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as '1'. Similarly, the volume partition for /dev/sda is '0' (or you can leave the property empty)."
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:readOnly) do
        desc "Specify 'true' to force and set the ReadOnly property in VolumeMounts to 'true'. If omitted, the default is 'false'. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#awselasticblockstore"
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
