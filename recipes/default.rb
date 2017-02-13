#
# Cookbook:: admpwd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd' do
  values [{
    name: 'PasswordComplexity',
    type: :dword,
    data: 4
  }]
  action :create
  recursive true
end
