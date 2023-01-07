angle=0

function rotate(p,angle,a2,a3)
 o2=p[a2]*math.cos(angle)-p[a3]*math.sin(angle)
 o3=p[a3]*math.cos(angle)+p[a2]*math.sin(angle)
 p[a2]=o2
 p[a3]=o3
end

function TIC() 
 cls()
 points={}
 angle=angle+44
 for x=-4,4 do
 for y=-4,4 do
 for z=-4,4 do
 p={x=x,y=y,z=z}
 rotate(p,angle,'y','z')
 rotate(p,angle,'z','x')
 rotate(p,angle,'x','y')
 p.z=p.z+400
 table.insert(points,p)
 end
 end
 end

 table.sort(points,
  function (a,b) return a.z>b.z end
  )

 for i=1,#points do
 for j=0,2 do
  circ(120+4000*points[i].x/points[i].z-j/2,
   68+4000*points[i].y/points[i].z-j/2,
   3-j,
   9*math.sin(angle)+points[i].x+points[i].y-j)
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

