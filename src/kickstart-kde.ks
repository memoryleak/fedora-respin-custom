%include /usr/share/spin-kickstarts/fedora-live-kde.ks

%include repo/fedora.ks
%include repo/rpmfusion.ks
%include repo/remi.ks
%include repo/custom.ks
%include packages/kde/custom.ks
%include packages/kde/excludes.ks

%include pre/config-dnf.ks
%include pre/config-limits.ks

%include post/config-system.ks
%include post/config-fonts.ks
%include post/config-docker.ks
%include post/install-tools.ks
