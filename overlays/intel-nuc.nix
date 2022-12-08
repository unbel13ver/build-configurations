
final: prev: {
    spectrum-rootfs = prev.spectrum-rootfs.overrideAttrs (old: {
        patches = [ ./patches/0001-Open-USB-serial-terminal-at-boot.patch ];
    });
    spectrum-live = prev.spectrum-live.overrideAttrs (old: {
        ROOT_FS = final.spectrum-rootfs;
    });
}
