{
  custils,
  lib,
  linux,
  allowUnfreePredicate,
  extraOverlays,
  ...
}:
{
  imports = custils.getModulesFromDirsRec (
    lib.lists.toList (lib.path.append ./. "nix")
    ++ (lib.optional linux (lib.path.append ./. "linux"))
    ++ (lib.optional (!linux) (lib.path.append ./. "darwin"))
  );
  nixpkgs = {
    config.allowUnfreePredicate = allowUnfreePredicate;
    overlays = extraOverlays;
  };
}
