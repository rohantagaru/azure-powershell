// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Cdn.Runtime.Extensions;

    /// <summary>Defines how to identify a parameter for a specific purpose e.g. expires</summary>
    public partial class UrlSigningParamIdentifier :
        Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.IUrlSigningParamIdentifier,
        Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20230501.IUrlSigningParamIdentifierInternal
    {

        /// <summary>Backing field for <see cref="ParamIndicator" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.ParamIndicator _paramIndicator;

        /// <summary>Indicates the purpose of the parameter</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Origin(Microsoft.Azure.PowerShell.Cmdlets.Cdn.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.ParamIndicator ParamIndicator { get => this._paramIndicator; set => this._paramIndicator = value; }

        /// <summary>Backing field for <see cref="ParamName" /> property.</summary>
        private string _paramName;

        /// <summary>Parameter name</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Origin(Microsoft.Azure.PowerShell.Cmdlets.Cdn.PropertyOrigin.Owned)]
        public string ParamName { get => this._paramName; set => this._paramName = value; }

        /// <summary>Creates an new <see cref="UrlSigningParamIdentifier" /> instance.</summary>
        public UrlSigningParamIdentifier()
        {

        }
    }
    /// Defines how to identify a parameter for a specific purpose e.g. expires
    public partial interface IUrlSigningParamIdentifier :
        Microsoft.Azure.PowerShell.Cmdlets.Cdn.Runtime.IJsonSerializable
    {
        /// <summary>Indicates the purpose of the parameter</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Runtime.Info(
        Required = true,
        ReadOnly = false,
        Description = @"Indicates the purpose of the parameter",
        SerializedName = @"paramIndicator",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.ParamIndicator) })]
        Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.ParamIndicator ParamIndicator { get; set; }
        /// <summary>Parameter name</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Runtime.Info(
        Required = true,
        ReadOnly = false,
        Description = @"Parameter name",
        SerializedName = @"paramName",
        PossibleTypes = new [] { typeof(string) })]
        string ParamName { get; set; }

    }
    /// Defines how to identify a parameter for a specific purpose e.g. expires
    internal partial interface IUrlSigningParamIdentifierInternal

    {
        /// <summary>Indicates the purpose of the parameter</summary>
        Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.ParamIndicator ParamIndicator { get; set; }
        /// <summary>Parameter name</summary>
        string ParamName { get; set; }

    }
}