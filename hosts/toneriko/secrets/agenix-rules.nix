let
  deployer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMLEoLUfuDXBpC8q1FzHxF+vMEE3fZKge7Cl9A6N8N3d toneriko deployment";
  nhatanh = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL0yCNeQudXP6Wj9vtSTWequjS7f5rE0xjW1ZFaPbduW anh.ngo@h2corporation.jp";
  users = [
    deployer
    nhatanh
  ];

  atticToneriko = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGm0IEONYktEjK/5+eE/PhGySvZYTTK35/4TIlHMSY1A";
  systems = [ atticToneriko ];
in
{
  "attic-env.age".publicKeys = users ++ systems;
}
