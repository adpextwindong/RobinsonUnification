let
  pkgs = import <nixpkgs>{};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      (texlive.combine {
        inherit (texlive)
        scheme-full
        latexmk
        ;
      })
      glibcLocales
    ];
    buildPhase = "make";
  }
