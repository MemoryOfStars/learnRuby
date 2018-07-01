=begin
print "Please enter a temperature:"
str = gets
exit if str.nil? or str.empty?   #if 修饰符，跟在操作的后面，不能有else分支
str.chomp!
temp,scale = str.split(" ")

abort "#{temp} is not a valid number." if temp !~ /-?\d+/

temp = temp.to_f
case scale
	when "C","c"
		f = 1.8*temp + 32
	when "F","f"
		c = (5.0/9.0)*(temp - 32)
else
	abort "Must specify C or F"
end

if f.nil?
	print "#{c} degrees C\n"
else
	print "#{f} degrees F\n"
end
=end
=begin
str = gets()
str.chomp!
str_shortened = str.chomp("llo")
print("shortened = #{str_shortened} \n")
print("common hello = #{str}\n")
str.chomp!("llo")
print("Changed? = #{str}")
print("#{"hello".chomp("llo")}")
=end
=begin
n = 9

n.times do
  print("#{(n.times.__id__)}\n")
end
=end

#######################Fibo#############################################
=begin
def fibon(x)
  if x == 0 or x == 1 then
    return x
  else
    return (fibon(x - 1) + fibon(x - 2))
  end
end
i=0
while i < 20 do
  print("#{fibon(i)}\n")
  i += 1
end
=end
#################8 Queen###############################
$queen = Array.new(8) {Array.new(8,'#')}  #用{}中的结果填充queen的每一个元素
$a = Array[1]*8
$b = Array[1]*15
$c = Array[1]*15
$i = 0
def setQueen(num)
  j = 0
  while j < 8 do
    if $a[j] == 1 and $b[num+j] == 1 and $c[num-j+7]==1
      $a[j] = 0
      $b[num+j] = 0
      $c[num-j+7] = 0
      $queen[num][j] = '@'
      if num != 7
        setQueen(num + 1)
      else
        $i += 1
        print("#{$i}\n")
        k = 0
        while k < 8
          print("#{$queen[k]}\n")
          k += 1
        end
      end
      $a[j] = 1
      $queen[num][j] = '#'
      $b[num+j] = 1
      $c[num-j+7] = 1
    end
    j += 1
  end
end

setQueen(0)