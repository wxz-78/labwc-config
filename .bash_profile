# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Iniciar labwc automáticamente al loguearse en la TTY1
if [ -z "$WAYLAND_DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec dbus-run-session labwc
fi
