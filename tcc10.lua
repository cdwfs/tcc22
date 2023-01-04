--{
t=0
x=119
k=137
x2=240
--}
function TIC()
 -- christmas tree
 --{
 t=t+1
 cls(k)
 w=9
 o=1
 --}
 for y=9,x,5 do
  -- leaves
  tri(x,y-9,x+w,y,x-w,y,6)
  -- ornaments
  w=w+2
  if y>9 then
   --{
   circ(x+o,y-7,2,1+y%6)
   o=(k+o)%w-w/2
   --}
  end
 end
 -- trunk
 rect(x-5,x,9,99,1)
 -- snow
 for y=1,k do
  --{
  pix(99*y%x2-math.sin(y+t*.2),(y+t)%k,12)
  rect(4*y,k-math.sin(y)-t/x,9,99,12)
  --}
 end
	-- scroller
 for x=1,9 do
  for y=1,24 do
   print(("Tiny Code Christmas"):sub(y,y),
    24*y+x+x2-.9*t%999,12*-math.sin(y+.1*t)+x+68,
    x+3,0,3)
  end
 end
end

-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

