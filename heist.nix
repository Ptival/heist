{ mkDerivation, aeson, attoparsec, base, blaze-builder, blaze-html
, bytestring, containers, directory, directory-tree, dlist
, filepath, hashable, lifted-base, map-syntax, monad-control, mtl
, process, random, stdenv, text, time, transformers
, transformers-base, unordered-containers, vector, xmlhtml
}:
mkDerivation {
  pname = "heist";
  version = "1.0.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson attoparsec base blaze-builder blaze-html bytestring
    containers directory directory-tree dlist filepath hashable
    lifted-base map-syntax monad-control mtl process random text time
    transformers transformers-base unordered-containers vector xmlhtml
  ];
  homepage = "http://snapframework.com/";
  description = "An Haskell template system supporting both HTML5 and XML";
  license = stdenv.lib.licenses.bsd3;
}
