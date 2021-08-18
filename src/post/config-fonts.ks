%post
dnf copr enable dawid/better_fonts -y
dnf install fontconfig-font-replacements -y
dnf install fontconfig-enhanced-defaults -y
%end