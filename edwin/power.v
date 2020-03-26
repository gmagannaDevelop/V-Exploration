module power

// power computes the power `b` of base `x`
fn power(x, b f64) f64 {
	mut tmp := 1.0
	for itr := 0; itr < int(b); itr++ {
		tmp = tmp*x
	}
	return tmp
}
