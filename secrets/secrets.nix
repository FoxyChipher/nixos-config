let
  cicada = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO3P9h0SXWlmzjxF9K9pDEzf6PefszhZ6IQmWXX4Jfwl cicada@terminal";
in
{
  "user-password.age".publicKeys = [ cicada ];
  "wifi-home.age".publicKeys     = [ cicada ];
  "gpg-private-key.age".publicKeys = [ cicada ];
}
