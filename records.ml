type membership_tier =
  FREE | PREMIUM

type user = {
  username: string;
  membership: membership_tier;
}

let admin = {
  username = "admin";
  membership = FREE;
}