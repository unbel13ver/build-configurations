{ protobuf, lib, stdenv, ... }:

  protobuf.overrideAttrs (prevAttrs: {
    patches = prevAttrs.patches ++ lib.optionals stdenv.hostPlatform.isStatic [
      ./static-executables-have-no-rpath.patch
    ] ++ [
      ./0001-Remove-lite-tests.patch
    ];
})
