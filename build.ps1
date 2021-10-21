function build{
    $folder = "$($PSScriptRoot)\docs"
    $sidebarPath = "$folder\_sidebar.md"
    $folders = dir $folder -Directory
    $txt =foreach ($folder in $folders){
        "- $($folder.Name)"
        $files = dir $folder.FullName
        foreach ($file in $files){
            $name = [IO.Path]::GetFileNameWithoutExtension($file.Name)
            "  - [$name]($($folder.Name)/$($file.Name))"
        }
    }   
    $txt | Set-Content -Path $sidebarPath
}