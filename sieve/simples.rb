############################################################
# the shortest solution

def prime1(max)
  raise "max is too little" if max <2
  (2..max).each_with_object( [] ) do |n,primes| 
    primes << n unless primes.any? {|p| (n % p)==0}
  end
end


############################################################
# a little bit optimisation
#  1. look up known prime only on values in 5..sqrt(n)
#  2. avoid trivial multiples : lookup only for number like (6*n +/- 1)

class Array
 def any_before_sqrt?(n)
    max=Math.sqrt(n).floor
	  self.any? { |a| r=yield(a) ; break(false) if !r && a>=max; r}
 end
end
def subprime(n,primes)
    primes << n unless primes.any_before_sqrt?(n) {|p| n % p == 0}
end
def prime2(max)
  raise "max is too little" if max <6
  result=(1..(max+1)/6).each_with_object( [] ) do |n,primes|     
    subprime(6*n-1,primes)
    subprime(6*n+1,primes)
  end
  [2,3]+result
end


