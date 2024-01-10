Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$UserID = 'CCaban@cmhacc.org'

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'ENTERPRISEPACK'
Set-MgUserLicense -UserId $UserID -AddLicenses @() -RemoveLicenses @($EmsSku.SkuId)

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'ATP_ENTERPRISE'
Set-MgUserLicense -UserId $UserID -AddLicenses @() -RemoveLicenses @($EmsSku.SkuId)

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'AAD_PREMIUM'
Set-MgUserLicense -UserId $UserID -AddLicenses @() -RemoveLicenses @($EmsSku.SkuId)

Get-MgUserLicenseDetail -UserId $UserID