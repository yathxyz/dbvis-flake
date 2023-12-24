{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  pname = "dbvis";
  version = "23.2.5";
  src = fetchTarball {
    url = "https://www.dbvis.com/product_download/${pname}-23.2.5/media/${pname}_linux_23_2_5.tar.gz";
    sha256 = "1gz6ka3gkpcraf5fx9yjqxl5kdb8y6h95sil8v4cks2sz79dm504";
  };

  runtimeDependencies = with pkgs; [ openjdk17 ];

  installPhase = ''
    mkdir -p $out/bin
    cp -r * $out/bin
  '';
}
