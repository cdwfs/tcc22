t=0
function TIC()
 cls()
 t=t+44
 points={}
 for r=0,10 do
  -- rings
  for p=.2*r,22,1 do
   x=120 + 5*r*math.sin(p+t)
   y=18 + 10*r + 2*math.sin(r+4*t) - r/2*math.sin(p+t+11)
   z=math.sin(p+t+11)
   c=12+7*math.sin(p+t+11)^3
			table.insert(points,
			 {x=x,y=y,z=z,c=c})
  end
  -- trunk
  table.insert(points,
   {x=118,y=50+8*r,z=0,c=2})
 end
 table.sort(points,
  function (a,b) return a.z>b.z end
  )
 for i=1,#points do
  for j=1,3 do
   circ(points[i].x-j/2,
    points[i].y-j/2,
    4/j,
    points[i].c-j
   ) 
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

