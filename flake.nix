{
  description = "Inject secrets from passage/pass into environment variables at runtime";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = self.packages.${system}.pass-run;
          pass-run = pkgs.stdenvNoCC.mkDerivation {
            pname = "pass-run";
            version = "0.1.0";

            src = ./.;

            nativeBuildInputs = [ pkgs.makeWrapper ];

            installPhase = ''
              runHook preInstall
              install -Dm755 pass-run $out/bin/pass-run
              wrapProgram $out/bin/pass-run \
                --prefix PATH : ${
                  pkgs.lib.makeBinPath [
                    pkgs.passage
                    pkgs.pass
                  ]
                }
              runHook postInstall
            '';

            meta = {
              description = "Inject secrets from passage/pass into environment variables at runtime";
              homepage = "https://github.com/vdemeester/pass-run";
              license = pkgs.lib.licenses.mit;
              mainProgram = "pass-run";
            };
          };
        }
      );
    };
}
