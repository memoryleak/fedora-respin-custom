repo --name="rpmfusion-free" --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch"
repo --name="rpmfusion-free-updates" --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch"
repo --name="rpmfusion-nonfree" --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch"
repo --name="rpmfusion-nonfree-updates" --mirrorlist="https://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch"

%packages
rpmfusion-free-release
rpmfusion-nonfree-release
%end

%post
dnf groupupdate -y multimedia --setop=install_weak_deps=False --exclude=PackageKit-gstreamer-plugin
dnf groupupdate -y sound-and-video
%end