{
  description = "A very basic flake";

  inputs.hierarchy.url = "github:nwg/flake-hierarchy-test-target-1";
  inputs.abc.follows = "hierarchy/blah";
  
  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.hello;

  };
}
