$ModuleManifestName = 'vagrantDemo.psd1'
$ModuleManifestPath = "$PSScriptRoot\..\$ModuleManifestName"

Describe 'Module Manifest Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $ModuleManifestPath
        $? | Should Be $true
    }
}

Describe 'Add-Numbers' {
    It 'Correctly adds two integers' {
        Add-Number -FirstNumber 3 -SecondNumber 5 |
            Should Be 8
    }
    It 'Does not add letters' {
        { Add-Number -FirstNumber "a" -SecondNumber "b" } |
            Should Throw
    }
}

