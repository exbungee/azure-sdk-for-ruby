# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_policy/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Policy
  autoload :PolicyAssignments,                                  'generated/azure_mgmt_policy/policy_assignments.rb'
  autoload :PolicyDefinitions,                                  'generated/azure_mgmt_policy/policy_definitions.rb'
  autoload :PolicyClient,                                       'generated/azure_mgmt_policy/policy_client.rb'

  module Models
    autoload :PolicyAssignment,                                   'generated/azure_mgmt_policy/models/policy_assignment.rb'
    autoload :PolicyDefinition,                                   'generated/azure_mgmt_policy/models/policy_definition.rb'
    autoload :PolicyAssignmentListResult,                         'generated/azure_mgmt_policy/models/policy_assignment_list_result.rb'
    autoload :PolicyDefinitionListResult,                         'generated/azure_mgmt_policy/models/policy_definition_list_result.rb'
    autoload :PolicyType,                                         'generated/azure_mgmt_policy/models/policy_type.rb'
  end
end
