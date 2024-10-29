# vcpkg-registry

### Update portfiles

Delete folders in versions/.

Set baseline.json to:
```json
{
  "default": {}
}
```

Open a termeral in the vcpkg-registry folder and run:<br>
git add ./<br>
git commit -m "Updated port files"<br>
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" format-manifest "D:\availability\designpatterns\vcpkg-registry\ports\sdl3\vcpkg.json"<br>
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" format-manifest "D:\availability\designpatterns\vcpkg-registry\ports\random\vcpkg.json"<br>
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" --x-builtin-ports-root=./ports --x-builtin-registry-versions-dir=./versions x-add-version --all --verbose<br>
git add ./<br>
git commit -m "Updated setup"<br>
git push<br>
git log -n 1<br>

Using the commit hash from git log as the baseline for any vcpkg-configuration.jsons in projects that want to use this vcpkg-registry:
```json
{
  "kind": "git",
  "repository": "https://github.com/RichardLions/vcpkg-registry",
  "baseline": "[Commit hash here]",
  "packages": [
    [Package names here]
  ]
}
```

### TODO
- [ ] Learn a cleaner way of updating portfiles
