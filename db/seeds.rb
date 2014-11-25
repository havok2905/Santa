a = Participant.create name:'a', email:'a@a.a'
b = Participant.create name:'b', email:'b@b.b'
c = Participant.create name:'c', email:'c@c.c'
d = Participant.create name:'d', email:'d@d.d'
e = Participant.create name:'e', email:'e@e.e'
f = Participant.create name:'f', email:'f@f.f'
g = Participant.create name:'g', email:'g@g.g'
h = Participant.create name:'h', email:'h@h.h'
i = Participant.create name:'i', email:'i@i.i'
j = Participant.create name:'j', email:'j@j.j'
k = Participant.create name:'k', email:'k@k.k'
l = Participant.create name:'l', email:'l@l.l'
m = Participant.create name:'m', email:'m@m.m'
n = Participant.create name:'n', email:'n@n.n'

party = Party.create name: 'foo', description: 'bar', start: Date.today
party.participant = [ a, b, c, d, e, f, g, h, i, j, k, l, m, n ]
