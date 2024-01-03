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

let tier_match user =
  match user with
  | {username; membership = FREE} -> "freeuser"
  | {username; membership = PREMIUM} -> "paiduser"