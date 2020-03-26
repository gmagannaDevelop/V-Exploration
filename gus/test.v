
import math

struct Particle {
mut:
	x f64 = 10.0 
	vel f64
	acc f64
}

fn (p mut Particle) move(t f64) {
	p.x += t * p.vel + 0.5 * p.acc * math.pow(t, 2)
	p.vel += t * p.acc
}

pub fn (p Particle) str() string {
	return "I am a particle wohoo"
}	

fn main() {

	mut par := Particle{
		vel: 10
		acc: 2
	} 

	println(par)
	for i := 0; i < 10; i++ { 
		par.move(i)
		println(par.x)
	}
	//println("par contains $par.x")
}
