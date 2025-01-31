
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Creates or updates a registration definition.
.Description
Creates or updates a registration definition.
.Example
PS C:\> $permantAuth = New-AzManagedServicesAuthorizationObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -RoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Test user" -DelegatedRoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx","xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

PS C:\> New-AzManagedServicesDefinition -Name xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx -RegistrationDefinitionName "Test definition" -ManagedByTenantId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -Authorization $permantAuth -Description "Test definition desc" -Scope "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" 

Name                                 Type
----                                 ----
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx Microsoft.ManagedServices/registrationDefinitions
.Example
PS C:\> $approver = New-AzManagedServicesEligibleApproverObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Approver group"

PS C:\> $eligibleAuth = New-AzManagedServicesEligibleAuthorizationObject -PrincipalId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -PrincipalIdDisplayName "Test user" -RoleDefinitionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -JustInTimeAccessPolicyManagedByTenantApprover $approver -JustInTimeAccessPolicyMultiFactorAuthProvider Azure -JustInTimeAccessPolicyMaximumActivationDuration 0:30

PS C:\> New-AzManagedServicesDefinition -Name xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx-RegistrationDefinitionName "Test definition" -ManagedByTenantId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" -Authorization $permantAuth -EligibleAuthorization $eligibleAuth -Description "Test definition desc" -Scope "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

Name                                 Type
----                                 ----
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxMicrosoft.ManagedServices/registrationDefinitions

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IRegistrationDefinition
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AUTHORIZATION <IAuthorization[]>: The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  PrincipalId <String>: The identifier of the Azure Active Directory principal.
  RoleDefinitionId <String>: The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  [DelegatedRoleDefinitionId <String[]>]: The delegatedRoleDefinitionIds field is required when the roleDefinitionId refers to the User Access Administrator Role. It is the list of role definition ids which define all the permissions that the user in the authorization can assign to other principals.
  [PrincipalIdDisplayName <String>]: The display name of the Azure Active Directory principal.

ELIGIBLEAUTHORIZATION <IEligibleAuthorization[]>: The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  PrincipalId <String>: The identifier of the Azure Active Directory principal.
  RoleDefinitionId <String>: The identifier of the Azure built-in role that defines the permissions that the Azure Active Directory principal will have on the projected scope.
  [JustInTimeAccessPolicyManagedByTenantApprover <IEligibleApprover[]>]: The list of managedByTenant approvers for the eligible authorization.
    PrincipalId <String>: The identifier of the Azure Active Directory principal.
    [PrincipalIdDisplayName <String>]: The display name of the Azure Active Directory principal.
  [JustInTimeAccessPolicyMaximumActivationDuration <TimeSpan?>]: The maximum access duration in ISO 8601 format for just-in-time access requests.
  [JustInTimeAccessPolicyMultiFactorAuthProvider <MultiFactorAuthProvider?>]: The multi-factor authorization provider to be used for just-in-time access requests.
  [PrincipalIdDisplayName <String>]: The display name of the Azure Active Directory principal.
.Link
https://learn.microsoft.com/powershell/module/az.managedservices/new-azmanagedservicesdefinition
#>
function New-AzManagedServicesDefinition {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IRegistrationDefinition])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('RegistrationDefinitionId')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Path')]
    [System.String]
    # The GUID of the registration definition.
    ${Name},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Runtime.DefaultInfo(Script='"subscriptions/" + (Get-AzContext).Subscription.Id')]
    [System.String]
    # The scope of the resource.
    ${Scope},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IAuthorization[]]
    # The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
    # To construct, see NOTES section for AUTHORIZATION properties and create a hash table.
    ${Authorization},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # The description of the registration definition.
    ${Description},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Models.Api20200201Preview.IEligibleAuthorization[]]
    # The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
    # To construct, see NOTES section for ELIGIBLEAUTHORIZATION properties and create a hash table.
    ${EligibleAuthorization},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # The identifier of the managedBy tenant.
    ${ManagedByTenantId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # Azure Marketplace plan name.
    ${PlanName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # Azure Marketplace product code.
    ${PlanProduct},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # Azure Marketplace publisher ID.
    ${PlanPublisher},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # Azure Marketplace plan's version.
    ${PlanVersion},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Body')]
    [System.String]
    # The name of the registration definition.
    ${RegistrationDefinitionName},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            CreateExpanded = 'Az.ManagedServices.private\New-AzManagedServicesDefinition_CreateExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('Scope')) {
            $PSBoundParameters['Scope'] = "subscriptions/" + (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.ManagedServices.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
