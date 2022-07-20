{ buildGoModule, fetchFromGitHub, lib
, version ? "0.1.3"
, sourceSha256 ? "sha256-SQQZ0QIGYBDnu3cQTwrcO+3lMv96LwF6NwIrdZjARqY="
, vendorSha256 ? "sha256-kSZgECDDYrb4XVrRmklfsJlDoxtGmkdGyvyQqXebf7M=" }:

buildGoModule {
  pname = "pro";
  inherit version vendorSha256;

  src = fetchFromGitHub {
    owner = "Wowu";
    repo = "pro";
    rev = "v${version}";
    sha256 = sourceSha256;
  };

  meta = with lib; {
    description = "A single command to quickly open current PR in browser.";
    homepage = "https://github.com/Wowu/pro";
    platforms = platforms.unix;
    license = licenses.mit;
  };
}
