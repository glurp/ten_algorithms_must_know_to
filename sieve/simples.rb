############################################################
# the shortest solution

def prime1(max)
  (5..max).each_with_object( [2,3] ) do |n,primes| 
    primes << n unless primes.any? {|p| (n % p)==0}
  end
end

def test_prime1(tr) 
  if tr
    a=prime1(100000)  
    p a.size,a[-100..-1]
  else 
     prime1(100000) 
  end
end

############################################################
# a little bit optimisation
#  1. look up on 5..sqrt(n)
#  2. avoid trivial multiples : lookup only for number like (2*n +/- 1)

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
  result=(1..(max+1)/6).each_with_object( [] ) do |n,primes|     
    subprime(6*n-1,primes)
    subprime(6*n+1,primes)
  end
  [2,3]+result
end


def test_prime2(tr) 
  if tr
    a=prime2(100000)  
    p a.size,a[-100..-1]
  else 
     prime2(100000) 
  end
end

