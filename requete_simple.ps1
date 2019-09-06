get-aduser compte1 -properties lastlogontimestamp,pwdLastSet | select samaccountname, `

    @{Name="LastLogonTimeStamp";Expression={([datetime]::FromFileTime($_.LastLogonTimeStamp))}},`

    @{Name="pwdLastSet";Expression={([datetime]::FromFileTime($_.pwdLastSet))}}
