def add(power_2,coeff_2,power_1,coeff_1)
#concate two polynomials 
str1=""
e=0
while e <= power_1.length-1

  str1+=coeff_1[e].to_s+"x^"+power_1[e].to_s
  e+=1

end
str2=""
e=0
while e <= power_2.length-1

  str2+=coeff_2[e].to_s+"x^"+power_2[e].to_s
  e+=1

end
str=str1+str2
#search for duplicated power and save their value in array r
a = power_1+power_2
c= a.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
r=[]
index_2=[]
index_1=[]
sum=[]
c.each do |k,v|
    if v==2
       r<<k
    end
end
#save terms of whose  powers are not equivalent in string

i=0
while i<=r.length-1
 substring="x^"+r[i].to_s
str=str.gsub(substring,"*")
i+=1
end
string=""
str2=str.split("*")
u=0
while u<=str2.length-1

 if str2[u].include?"x"
  string+= str2[u]
end

  u+=1
end

#save indexes of equivalent power
i=0
while i<=r.length-1
index_1 << power_1.index(r[i])
index_2 << power_2.index(r[i])
i+=1
end
#sum of coeff  of same power

g=0
while g<=index_1.length-1
  c1=(coeff_2[index_2[g].to_i]).to_i
  c2= (coeff_1[index_1[g].to_i]).to_i
     sum << c1+c2
g+=1
end
#check if sum is +ve or -ve and add the sign
p=0
string2=""
while p <= sum.length-1
  if sum[p]>0
        sum[p]="+"+sum[p].to_s

  elsif sum[p]<0
        sum[p]="-"+sum[p].to_s

  end

string2+=sum[p].to_s+"x^"+r[p].to_s
p+=1
end



puts "solution"
puts string2+string

end