param (
    [string]$URL,
    [string]$PAT,
    [string]$POOL,
    [string]$AGENT,
    [string]$PathInstall
)

Start-Transcript
Write-Host "start"

#test if an old installation exists, if so, delete the folder

if (test-path "$PathInstall")
{
    Remove-Item -Path "$PathInstall" -Force -Confirm:$false -Recurse
}

#create a new folder
new-item -ItemType Directory -Force -Path "$PathInstall"
if (test-path "$PathInstall")
{
    set-location "$PathInstall"

    $env:VSTS_AGENT_HTTPTRACE = $true

    #github requires tls 1.2
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    #get the latest build agent version
    $wr = Invoke-WebRequest https://api.github.com/repos/Microsoft/azure-pipelines-agent/releases/latest -UseBasicParsing
    $tag = ($wr | ConvertFrom-Json)[0].tag_name
    $tag = $tag.Substring(1)

    write-host "$tag is the latest version"

    #build the url
    $download = "https://vstsagentpackage.azureedge.net/agent/$tag/vsts-agent-win-x64-$tag.zip"

    #download the agent
    Invoke-WebRequest $download -Out agent.zip

    #create multiple agents
    for ($int = 1; $int -le 3; $int++){
    
        new-item -ItemType Directory -Force -Path "$int"
        Set-Location $int

        #expand the zip
        Expand-Archive -Path ../agent.zip -DestinationPath $PWD

        $AGENT_NAME = "$AGENT" + "_" + $int
    
        #run the config script of the build agent
        .\config.cmd --unattended --url "$URL" --auth pat --token "$PAT" --pool "$POOL" --agent "$AGENT_NAME" --acceptTeeEula --runAsService

        cd..
    }

    #exit
    Stop-Transcript
    exit 0
}