Configuration MyConfig
{
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'

    WindowsFeature IIS
    {
        Name   = "Web-Server"
        Ensure = "present"
    }

    File DefaultDocument
    {
        DestinationPath = 'c:\inetpub\wwwroot\index.html'
        Contents        = 'Hello World'
        Ensure          = 'present'
        DependsOn = '[WindowsFeature]IIS'
    }
}