FROM linuxserver/babybuddy:v2.11.0-ls255

# ponytail: single custom-init script fixes LSIO nginx resolver on Railway's
# IPv6-only DNS; everything else is stock linuxserver.io behavior.
COPY root/ /
RUN chmod +x /custom-cont-init.d/10-fix-resolver
