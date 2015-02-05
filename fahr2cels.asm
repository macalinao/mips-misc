	.data
fahr: .float 43.5
fp1: .float 5.0
fp2: .float 9.0
fp3: .float 32.0

	.text
l.s $f16, fp1
l.s $f18, fp2
div.s $f17, $f16, $f18 # Coefficient
l.s $f15, fahr
l.s $f16, fp3
sub.s $f18, $f15, $f16
mul.s $f12, $f17, $f18

li $v0, 2 # print float
syscall
# 6.389
