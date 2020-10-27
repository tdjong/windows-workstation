# bulk install packages specified in packages.txt
# depends on working chocolatey installation
$packages=Get-Content -Path ".\packages.txt"
ForEach ($package in $packages) {
    choco install $package
}