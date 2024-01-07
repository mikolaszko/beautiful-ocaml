type ptype = TNormal | Fire | Water

type peff = ENormal | NotVery | Super

type battle_set = ptype * ptype

let mult_of_eff = function 
  | ENormal -> 1.
  | NotVery -> 0.5
  | Super -> 2.0

let eff = function 
  | (Fire, Fire) | (Water, Water) | (Fire, Water) -> NotVery
  | (Water, Fire) -> Super
  | _ -> ENormal

type mon = {
  name : string;
  hp: int;
  ptype : ptype
}
