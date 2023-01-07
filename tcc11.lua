angle=0
function rotatey(p,angle)
 xt=p.x*math.cos(angle)-p.z*math.sin(angle)
 yt=p.y
 zt=p.x*math.sin(angle)+p.z*math.cos(angle)
 return{x=xt,y=yt,z=zt}
end

function rotatex(p,angle)
 xt=p.x
 yt=p.y*math.sin(angle+11)-p.z*math.sin(angle)
 zt=p.y*math.sin(angle)+p.z*math.sin(angle+11)
 return{x=xt,y=yt,z=zt}
end

function rotatez(p,angle)
 xt=p.x*math.sin(angle+11)-p.y*math.sin(angle)
 yt=p.x*math.sin(angle)+p.y*math.sin(angle+11)
 zt=p.z
 return{x=xt,y=yt,z=zt}
end

function TIC() 
 cls()
 points={}
 angle=angle+44
 for x=-25,25,6 do
 for y=-25,25,6 do
 for z=-25,25,6 do
 p=rotatez({x=x,y=y,z=z},angle)
 q=rotatex(p,angle)
 r=rotatey(q,angle)  
 table.insert(points,
  {x=r.x,y=r.y,z=r.z+400})
 end
 end
 end

 table.sort(points,
  function (a,b) return a.z>b.z end
  )

 for i=1,#points do
 for j=0,2 do
  circ(120+600*points[i].x/points[i].z-j/2,
   68+600*points[i].y/points[i].z-j/2,
   3-j,
   14-j);
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

