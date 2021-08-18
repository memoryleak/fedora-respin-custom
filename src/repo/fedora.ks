url --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch"
repo --name="updates" --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch"
repo --name="fedora-cisco-openh264" --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-cisco-openh264-$releasever&arch=$basearch"
