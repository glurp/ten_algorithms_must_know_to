require_relative '../ten_test.rb'
require_relative 'simples.rb'

##### define tests function

def test_prime1(tr)  prime_test_for(:prime1,tr) end
def test_prime2(tr)  prime_test_for(:prime2,tr) end

def prime_test_for(method,trace)
  if trace
    a=send(method,100000)  
    p a.size,a[-100..-1]
  else 
     send(method,100000) 
  end
end

############ run tests with ../ten_test tool

ten_test