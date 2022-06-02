s:: (b -> c) -> (a -> b) -> a -> c

s = \f g x -> f .  g . x 