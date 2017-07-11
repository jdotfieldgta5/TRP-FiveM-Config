
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,4,"Body training"},
  {2233.79663085938,5576.4189453125,54.064266204834,140,25,"Weed Field"},
  {2488.86328125,4961.87353515625,44.7862815856934,140,59,"Weed Drying"},
  {-1171.96350097656,-1572.1669921875,4.66376829147339,140,59,"Weed Selling"},
  {128.410339355469,-1941.55847167969,20.5246410369873,140,59,"Weed Selling"},
  {460.190338134766,-993.888488769531,24.914867401123,60,54,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,54,"Police Station"},
  {391.541442871094,-1615.154296875,29.291934967041,60,54,"Police Station"}, 
  {112.576049804688,-1073.62414550781,29.1923503875732,419,7,"President Station"},
  {358.404418945313,-588.177612304688,28.8007564544678,61,49,"Hospital"}
  
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
}

return cfg
