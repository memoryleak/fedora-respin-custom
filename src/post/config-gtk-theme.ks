%post
cat > /root/.gtkrc-2.0 << EOF
include "/usr/share/themes/Adwaita/gtk-2.0/gtkrc"
include "/etc/gtk-2.0/gtkrc"
gtk-theme-name="Adwaita"
EOF

mkdir -p /root/.config/gtk-3.0
cat > /root/.config/gtk-3.0/settings.ini << EOF
[Settings]
gtk-theme-name = Adwaita
EOF
%end