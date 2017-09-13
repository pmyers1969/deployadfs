### Define variables
{
$location = 'Australia Southeast'
$resourceGroupName = 'rg-pm997'
$resourceDeploymentName = 'pmadfs-deployment'
$templatePath = $env:SystemDrive + '\pauls\json\adfs'
$templateFile = 'adfs.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}