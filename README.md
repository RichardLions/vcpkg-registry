# vcpkg-registry

### Update portfiles

Delete folders in versions/.

Set baseline.json to:
{
  "default": {}
}

Open a termeral in the vcpkg-registry folder and run:
git add ./
git commit -m "Updated port files"
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" format-manifest "D:\availability\designpatterns\vcpkg-registry\ports\sdl3\vcpkg.json"
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" format-manifest "D:\availability\designpatterns\vcpkg-registry\ports\random\vcpkg.json"
"C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\vcpkg\vcpkg.exe" --x-builtin-ports-root=./ports --x-builtin-registry-versions-dir=./versions x-add-version --all --verbose
git add ./
git commit -m "Updated setup"
git push
git log -n 1

Using the commit hash from the git log as the baseline for the vcpkg-configuration.json in projects that want to use this vcpkg-registry:
{
  "kind": "git",
  "repository": "https://github.com/RichardLions/vcpkg-registry",
  "baseline": "[Commit hash here]",
  "packages": [
    [Package names here]
  ]
}

### TODO
- [ ] Learn a cleaner way of updating portfiles
