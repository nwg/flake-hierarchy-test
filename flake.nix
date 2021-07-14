{
  description = "A very basic flake";

  inputs.mytarget.url = "github:nwg/flake-hierarchy-test-target-1";

  outputs = { self, ... }: {};
}
