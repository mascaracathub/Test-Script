--[[
     _      ___         ____  ______
    | | /| / (_)__  ___/ / / / /  _/
    | |/ |/ / / _ \/ _  / /_/ // /  
    |__/|__/_/_//_/\_,_/\____/___/
    
    v1.6.63 - Banana Edition | 2025-12-25 | Roblox UI Library for scripts
    
    Author: Footagesus (Footages, .ftgs, oftgs)
    Github: https://github.com/Footagesus/WindUI
    Discord: https://discord.gg/ftgs-development-hub-1300692552005189632
    License: MIT
]]

local a a={cache={}, load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a.a()return{


Primary=Color3.fromHex"#FFB800", -- Banana Yellow
White=Color3.new(1,1,1),
Black=Color3.new(0,0,0),

Dialog="Accent",

Background="Accent",
BackgroundTransparency=0,
Hover="Text",

WindowBackground="Background",

WindowShadow="Black",


WindowTopbarTitle="Text",
WindowTopbarAuthor="Text",
WindowTopbarIcon="Icon",
WindowTopbarButtonIcon="Icon",

WindowSearchBarBackground="Background",

TabBackground="Hover",
TabTitle="Text",
TabIcon="Icon",

ElementBackground="Text",
ElementTitle="Text",
ElementDesc="Text",
ElementIcon="Icon",

PopupBackground="Background",
PopupBackgroundTransparency="BackgroundTransparency",
PopupTitle="Text",
PopupContent="Text",
PopupIcon="Icon",

DialogBackground="Background",
DialogBackgroundTransparency="BackgroundTransparency",
DialogTitle="Text",
DialogContent="Text",
DialogIcon="Icon",

Toggle="Button",
ToggleBar="White",

Checkbox="Primary",
CheckboxIcon="White",
CheckboxBorder="White",
CheckboxBorderTransparency=.75,

Slider="Primary",
SliderThumb="White",
SliderIconFrom=Color3.fromHex"#908F95",
SliderIconTo=Color3.fromHex"#908F95",

Tooltip=Color3.fromHex"2D2D2D",
TooltipText="White",
TooltipSecondary="Primary",
TooltipSecondaryText="White",

SectionBox="White",
SectionBoxTransparency=.95,
SectionBoxBorder="White",
SectionBoxBorderTransparency=.75,
SectionBoxBackground="White",
SectionBoxBackgroundTransparency=.95,

SearchBarBorder="White",
SearchBarBorderTransparency=.75,

NotificationDuration="White",
NotificationDurationTransparency=.95,

DropdownTabBorder="White",

-- Banana Specific
BananaToggleBackground="Background",
BananaToggleHandle="Primary",
BananaToggleBorder="Outline"
}end function a.b()

local b=(cloneref or clonereference or function(b)return b end)

local d=b(game:GetService"RunService")
local e=b(game:GetService"UserInputService")
local f=b(game:GetService"TweenService")
local g=b(game:GetService"LocalizationService")
local h=b(game:GetService"HttpService")local i=

d.Heartbeat

local j="https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua"

local l=loadstring(
game.HttpGetAsync and game:HttpGetAsync(j)
or h:GetAsync(j)
)()
l.SetIconsType"lucide"

local m

local p={
Font="rbxassetid://12187365364",
Localization=nil,
CanDraggable=true,
Theme=nil,
Themes=nil,
Icons=l,
Signals={},
Objects={},
LocalizationObjects={},
FontObjects={},
Language=string.match(g.SystemLocaleId,"^[a-z]+"),
Request=http_request or(syn and syn.request)or request,
DefaultProperties={
ScreenGui={
ResetOnSpawn=false,
ZIndexBehavior="Sibling",
},
CanvasGroup={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
Frame={
BorderSizePixel=0,
BackgroundColor3=Color3.new(1,1,1),
},
TextLabel={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
RichText=true,
TextColor3=Color3.new(1,1,1),
TextSize=14,
},TextButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
Text="",
AutoButtonColor=false,
TextColor3=Color3.new(1,1,1),
TextSize=14,
},
TextBox={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
ClearTextOnFocus=false,
Text="",
TextColor3=Color3.new(0,0,0),
TextSize=14,
},
ImageLabel={
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
},
ImageButton={
BackgroundColor3=Color3.new(1,1,1),
BorderSizePixel=0,
AutoButtonColor=false,
},
UIListLayout={
SortOrder="LayoutOrder",
},
ScrollingFrame={
ScrollBarImageTransparency=1,
BorderSizePixel=0,
},
VideoFrame={
BorderSizePixel=0,
}
},
Colors={
Red="#e53935",
Orange="#f57c00",
Green="#43a047",
Blue="#039be5",
White="#ffffff",
Grey="#484848",
Yellow="#FFB800", -- Banana Yellow
Purple="#9C27B0", -- Banana Purple
},
ThemeFallbacks=a.load'a',
Shapes={Square=
"rbxassetid://82909646051652",
["Square-Outline"]="rbxassetid://72946211851948",Squircle=

"rbxassetid://80999662900595",SquircleOutline=
"rbxassetid://117788349049947",
["Squircle-Outline"]="rbxassetid://117817408534198",SquircleOutline2=

"rbxassetid://117817408534198",

["Shadow-sm"]="rbxassetid://84825982946844",
["Shadow-md"]="rbxassetid://85825982946845", -- Banana Shadow
["Shadow-lg"]="rbxassetid://86825982946846",

["Squircle-TL-TR"]="rbxassetid://73569156276236",
["Squircle-BL-BR"]="rbxassetid://93853842912264",
["Squircle-TL-TR-Outline"]="rbxassetid://136702870075563",
["Squircle-BL-BR-Outline"]="rbxassetid://75035847706564",

["Glass-0.7"]="rbxassetid://79047752995006",
["Glass-1"]="rbxassetid://97324581055162",
["Glass-1.4"]="rbxassetid://95071123641270",
["Glass-2"]="rbxassetid://98071123641271", -- Banana Glass
}
}

function p.Init(r)
m=r
end

function p.AddSignal(r,u)
local v=r:Connect(u)
table.insert(p.Signals,v)
return v
end

function p.DisconnectAll()
for r,u in next,p.Signals do
local v=table.remove(p.Signals,r)
v:Disconnect()
end
end

function p.SafeCallback(r,...)
if not r then
return
end

local u,v=pcall(r,...)
if not u then
if m and m.Window and m.Window.Debug then local
x, z=v:find":%d+: "

warn("[ WindUI: DEBUG Mode ] "..v)

return m:Notify{
Title="DEBUG Mode: Error",
Content=not z and v or v:sub(z+1),
Duration=8,
}
end
end
end

function p.Gradient(r,u)
if m and m.Gradient then
return m:Gradient(r,u)
end

local v={}
local x={}

for z,A in next,r do
local B=tonumber(z)
if B then
B=math.clamp(B/100,0,1)
table.insert(v,ColorSequenceKeypoint.new(B,A.Color))
table.insert(x,NumberSequenceKeypoint.new(B,A.Transparency or 0))
end
end

table.sort(v,function(B,C)return B.Time<C.Time end)
table.sort(x,function(B,C)return B.Time<C.Time end)

if#v<2 then
error"ColorSequence requires at least 2 keypoints"
end

local B={
Color=ColorSequence.new(v),
Transparency=NumberSequence.new(x),
}

if u then
for C,F in pairs(u)do
B[C]=F
end
end

return B
end

function p.SetTheme(r)
p.Theme=r
p.UpdateTheme(nil,false)
end

function p.AddFontObject(r)
table.insert(p.FontObjects,r)
p.UpdateFont(p.Font)
end

function p.UpdateFont(r)
p.Font=r
for u,v in next,p.FontObjects do
v.FontFace=Font.new(r,v.FontFace.Weight,v.FontFace.Style)
end
end

function p.GetThemeProperty(r,u)
local function getValue(v,x)
local z=x[v]

if z==nil then return nil end

if typeof(z)=="string"and string.sub(z,1,1)=="#"then
return Color3.fromHex(z)
end

if typeof(z)=="Color3"then
return z
end

if typeof(z)=="number"then
return z
end

if typeof(z)=="table"and z.Color and z.Transparency then
return z
end

if typeof(z)=="function"then
return z()
end

return z
end

local v=getValue(r,u)
if v~=nil then
if typeof(v)=="string"and string.sub(v,1,1)~="#"then
local x=p.GetThemeProperty(v,u)
if x~=nil then
return x
end
else
return v
end
end

local x=p.ThemeFallbacks[r]
if x~=nil then
if typeof(x)=="string"and string.sub(x,1,1)~="#"then
return p.GetThemeProperty(x,u)
else
return getValue(r,{[r]=x})
end
end

v=getValue(r,p.Themes.Dark)
if v~=nil then
if typeof(v)=="string"and string.sub(v,1,1)~="#"then
local z=p.GetThemeProperty(v,p.Themes.Dark)
if z~=nil then
return z
end
else
return v
end
end

if x~=nil then
if typeof(x)=="string"and string.sub(x,1,1)~="#"then
return p.GetThemeProperty(x,p.Themes.Dark)
else
return getValue(r,{[r]=x})
end
end

return nil
end

function p.AddThemeObject(r,u)
p.Objects[r]={Object=r,Properties=u}
p.UpdateTheme(r,false)
return r
end

function p.AddLangObject(r)
local u=p.LocalizationObjects[r]
local v=u.Object
local x=currentObjTranslationId
p.UpdateLang(v,x)
return v
end

function p.UpdateTheme(r,u)
local function ApplyTheme(v)
for x,z in pairs(v.Properties or{})do
local A=p.GetThemeProperty(z,p.Theme)
if A~=nil then
if typeof(A)=="Color3"then
local B=v.Object:FindFirstChild"WindUIGradient"
if B then
B:Destroy()
end

if not u then
v.Object[x]=A
else
p.Tween(v.Object,0.08,{[x]=A}):Play()
end
elseif typeof(A)=="table"and A.Color and A.Transparency then
v.Object[x]=Color3.new(1,1,1)

local B=v.Object:FindFirstChild"WindUIGradient"
if not B then
B=Instance.new"UIGradient"
B.Name="WindUIGradient"
B.Parent=v.Object
end

B.Color=A.Color
B.Transparency=A.Transparency

for C,F in pairs(A)do
if C~="Color"and C~="Transparency"and B[C]~=nil then
B[C]=F
end
end
elseif typeof(A)=="number"then
if not u then
v.Object[x]=A
else
p.Tween(v.Object,0.08,{[x]=A}):Play()
end
end
else

local B=v.Object:FindFirstChild"WindUIGradient"
if B then
B:Destroy()
end
end
end
end

if r then
local v=p.Objects[r]
if v then
ApplyTheme(v)
end
else
for v,x in pairs(p.Objects)do
ApplyTheme(x)
end
end
end

function p.SetLangForObject(r)
if p.Localization and p.Localization.Enabled then
local u=p.LocalizationObjects[r]
if not u then return end

local v=u.Object
local x=u.TranslationId

local z=p.Localization.Translations[p.Language]
if z and z[x]then
v.Text=z[x]
else
local A=p.Localization and p.Localization.Translations and p.Localization.Translations.en or nil
if A and A[x]then
v.Text=A[x]
else
v.Text="["..x.."]"
end
end
end
end

function p.ChangeTranslationKey(r,u,v)
if p.Localization and p.Localization.Enabled then
local x=string.match(v,"^"..p.Localization.Prefix.."(.+)")
if x then
for z,A in ipairs(p.LocalizationObjects)do
if A.Object==u then
A.TranslationId=x
p.SetLangForObject(z)
return
end
end

table.insert(p.LocalizationObjects,{
TranslationId=x,
Object=u
})
p.SetLangForObject(#p.LocalizationObjects)
end
end
end

function p.UpdateLang(r)
if r then
p.Language=r
end

for u=1,#p.LocalizationObjects do
local v=p.LocalizationObjects[u]
if v.Object and v.Object.Parent~=nil then
p.SetLangForObject(u)
else
p.LocalizationObjects[u]=nil
end
end
end

function p.SetLanguage(r)
p.Language=r
p.UpdateLang()
end

function p.Icon(r,u)
return l.Icon2(r,nil,u~=false)
end

function p.AddIcons(r,u)
return l.AddIcons(r,u)
end

function p.New(r,u,v)
local x=Instance.new(r)

for z,A in next,p.DefaultProperties[r]or{}do
x[z]=A
end

for B,C in next,u or{}do
if B~="ThemeTag"then
x[B]=C
end
if p.Localization and p.Localization.Enabled and B=="Text"then
local F=string.match(C,"^"..p.Localization.Prefix.."(.+)")
if F then
local G=#p.LocalizationObjects+1
p.LocalizationObjects[G]={TranslationId=F,Object=x}

p.SetLangForObject(G)
end
end
end

for F,G in next,v or{}do
G.Parent=x
end

if u and u.ThemeTag then
p.AddThemeObject(x,u.ThemeTag)
end
if u and u.FontFace then
p.AddFontObject(x)
end
return x
end

function p.Tween(r,u,v,...)
return f:Create(r,TweenInfo.new(u,...),v)
end

function p.NewRoundFrame(r,u,v,x,B,C)
local function getImageForType(F)
return p.Shapes[F]
end

local function getSliceCenterForType(F)
return not table.find({"Shadow-sm","Shadow-md","Shadow-lg","Glass-0.7","Glass-1","Glass-1.4","Glass-2"},F)and Rect.new(256
,256
,256
,256

)or Rect.new(512,512,512,512)
end

local F=p.New(B and"ImageButton"or"ImageLabel",{
Image=getImageForType(u),
ScaleType="Slice",
SliceCenter=getSliceCenterForType(u),
SliceScale=1,
BackgroundTransparency=1,
ThemeTag=v.ThemeTag and v.ThemeTag
},x)

for G,H in pairs(v or{})do
if G~="ThemeTag"then
F[G]=H
end
end

local function UpdateSliceScale(J)
local L=not table.find({"Shadow-sm","Shadow-md","Shadow-lg","Glass-0.7","Glass-1","Glass-1.4","Glass-2"},u)and(J/(256))or(J/512)
F.SliceScale=math.max(L,0.0001)
end

local J={}

function J.SetRadius(L,M)
UpdateSliceScale(M)
end

function J.SetType(L,M)
u=M
F.Image=getImageForType(M)
F.SliceCenter=getSliceCenterForType(M)
UpdateSliceScale(r)
end

function J.UpdateShape(L,M,N)
if N then
u=N
F.Image=getImageForType(N)
F.SliceCenter=getSliceCenterForType(N)
end
if M then
r=M
end
UpdateSliceScale(r)
end

function J.GetRadius(L)
return r
end

function J.GetType(L)
return u
end

UpdateSliceScale(r)

return F,C and J or nil
end

local r=p.New local u=
p.Tween

function p.SetDraggable(v)
p.CanDraggable=v
end

function p.Drag(v,x,B)
local C
local F,G,H
local J={
CanDraggable=true
}

if not x or typeof(x)~="table"then
x={v}
end

local function update(L)
if not F or not J.CanDraggable then return end

local M=L.Position-G
p.Tween(v,0.02,{Position=UDim2.new(
H.X.Scale,H.X.Offset+M.X,
H.Y.Scale,H.Y.Offset+M.Y
)}):Play()
end

for L,M in pairs(x)do
M.InputBegan:Connect(function(N)
if(N.UserInputType==Enum.UserInputType.MouseButton1 or N.UserInputType==Enum.UserInputType.Touch)and J.CanDraggable then
if C==nil then
C=M
F=true
G=N.Position
H=v.Position

if B and typeof(B)=="function"then
B(true,C)
end

N.Changed:Connect(function()
if N.UserInputState==Enum.UserInputState.End then
F=false
C=nil

if B and typeof(B)=="function"then
B(false,nil)
end
end
end)
end
end
end)

M.InputChanged:Connect(function(N)
if F and C==M then
if N.UserInputType==Enum.UserInputType.MouseMovement or N.UserInputType==Enum.UserInputType.Touch then
update(N)
end
end
end)
end

e.InputChanged:Connect(function(N)
if F and C~=nil then
if N.UserInputType==Enum.UserInputType.MouseMovement or N.UserInputType==Enum.UserInputType.Touch then
update(N)
end
end
end)

function J.Set(N,O)
J.CanDraggable=O
end

return J
end


l.Init(r,"Icon")

function p.SanitizeFilename(v)
local x=v:match"([^/]+)$"or v

x=x:gsub("%.[^%.]+$","")

x=x:gsub("[^%w%-_]","_")

if#x>50 then
x=x:sub(1,50)
end

return x
end

function p.Image(v,x,B,C,F,G,H,J)
C=C or"Temp"
x=p.SanitizeFilename(x)

local L=r("Frame",{
Size=UDim2.new(0,0,0,0),
BackgroundTransparency=1,
},{
r("ImageLabel",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ScaleType="Crop",
ThemeTag=(p.Icon(v)or H)and{
ImageColor3=G and(J or"Icon")or nil
}or nil,
},{
r("UICorner",{
CornerRadius=UDim.new(0,B)
})
})
})
if p.Icon(v)then
L.ImageLabel:Destroy()

local M=l.Image{
Icon=v,
Size=UDim2.new(1,0,1,0),
Colors={
(G and(J or"Icon")or false),
"Button"
}
}.IconFrame
M.Parent=L
elseif string.find(v,"http")then
local M="WindUI/"..C.."/assets/."..F.."-"..x..".png"
local N,O=pcall(function()
task.spawn(function()
local N=p.Request{
Url=v,
Method="GET",
}.Body

writefile(M,N)

local O,P=pcall(getcustomasset,M)
if O then
L.ImageLabel.Image=P
else
warn(string.format("[ WindUI.Creator ] Failed to load custom asset '%s': %s",M,tostring(P)))
L:Destroy()

return
end
end)
end)
if not N then
warn("[ WindUI.Creator ]  '"..identifyexecutor().."' doesnt support the URL Images. Error: "..O)

L:Destroy()
end
elseif v==""then
L.Visible=false
else
L.ImageLabel.Image=v
end

return L
end

function p.Color3ToHSB(v)
local x,B,C=v.R,v.G,v.B
local F=math.max(x,B,C)
local G=math.min(x,B,C)
local H=F-G

local J=0
if H~=0 then
if F==x then
J=(B-C)/H%6
elseif F==B then
J=(C-x)/H+2
else
J=(x-B)/H+4
end
J=J*60
else
J=0
end

local L=(F==0)and 0 or(H/F)
local M=F

return{
h=math.floor(J+0.5),
s=L,
b=M
}
end

function p.GetPerceivedBrightness(v)
local x=v.R
local B=v.G
local C=v.B
return 0.299*x+0.587*B+0.114*C
end

function p.GetTextColorForHSB(v,x)
local B=p.Color3ToHSB(v)local
C, F, G=B.h, B.s, B.b
if p.GetPerceivedBrightness(v)>(x or 0.5)then
return Color3.fromHSV(C/360,0,0.05)
else
return Color3.fromHSV(C/360,0,0.98)
end
end

function p.GetAverageColor(v)
local x,B,C=0,0,0
local F=v.Color.Keypoints
for G,H in ipairs(F)do
x=x+H.Value.R
B=B+H.Value.G
C=C+H.Value.B
end
local J=#F
return Color3.new(x/J,B/J,C/J)
end

function p.GenerateUniqueID(v)
return h:GenerateGUID(false)
end

return p end

function a.c()
local b={}

function b.New(d,e,f)
local g={
Enabled=e.Enabled or false,
Translations=e.Translations or{},
Prefix=e.Prefix or"loc:",
DefaultLanguage=e.DefaultLanguage or"en"
}

f.Localization=g

return g
end

return b
end

function a.d()
local b=a.load'b'
local d=b.New
local e=b.Tween

local f={
Size=UDim2.new(0,300,1,-156),
SizeLower=UDim2.new(0,300,1,-56),
UICorner=14, -- Banana style corner
UIPadding=12, -- Banana style padding

Holder=nil,
NotificationIndex=0,
Notifications={}
}

function f.Init(g)
local h={
Lower=false
}

function h.SetLower(j)
h.Lower=j
h.Frame.Size=j and f.SizeLower or f.Size
end

h.Frame=d("Frame",{
Position=UDim2.new(1,-24,0,56), -- Banana position
AnchorPoint=Vector2.new(1,0),
Size=f.Size,
Parent=g,
BackgroundTransparency=1,
},{
d("UIListLayout",{
HorizontalAlignment="Center",
SortOrder="LayoutOrder",
VerticalAlignment="Bottom",
Padding=UDim.new(0,8),
}),
d("UIPadding",{
PaddingBottom=UDim.new(0,24) -- Banana padding
})
})
return h
end

function f.New(g)
local h={
Title=g.Title or"Notification",
Content=g.Content or nil,
Icon=g.Icon or nil,
IconThemed=g.IconThemed,
Background=g.Background,
BackgroundImageTransparency=g.BackgroundImageTransparency,
Duration=g.Duration or 4, -- Banana duration
Buttons=g.Buttons or{},
CanClose=g.CanClose~=false,
UIElements={},
Closed=false,
}

f.NotificationIndex=f.NotificationIndex+1
f.Notifications[f.NotificationIndex]=h

local j

if h.Icon then
j=b.Image(
h.Icon,
h.Title..":"..h.Icon,
0,
g.Window,
"Notification",
h.IconThemed
)
j.Size=UDim2.new(0,24,0,24) -- Banana size
j.Position=UDim2.new(0,f.UIPadding,0,f.UIPadding)
end

local l
if h.CanClose then
l=d("ImageButton",{
Image=b.Icon"x"[1],
ImageRectSize=b.Icon"x"[2].ImageRectSize,
ImageRectOffset=b.Icon"x"[2].ImageRectPosition,
BackgroundTransparency=1,
Size=UDim2.new(0,14,0,14), -- Banana size
Position=UDim2.new(1,-f.UIPadding,0,f.UIPadding),
AnchorPoint=Vector2.new(1,0),
ThemeTag={
ImageColor3="Text"
},
ImageTransparency=.4,
},{
d("TextButton",{
Size=UDim2.new(1,8,1,8),
BackgroundTransparency=1,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.new(0.5,0,0.5,0),
Text="",
})
})
end

local m=b.NewRoundFrame(f.UICorner,"Squircle",{
Size=UDim2.new(0,0,1,0),
ThemeTag={
ImageTransparency="NotificationDurationTransparency",
ImageColor3="NotificationDuration",
},
})

local p=d("Frame",{
Size=UDim2.new(1,
h.Icon and-24-f.UIPadding or 0,
1,0),
Position=UDim2.new(1,0,0,0),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
AutomaticSize="Y",
},{
d("UIPadding",{
PaddingTop=UDim.new(0,f.UIPadding),
PaddingLeft=UDim.new(0,f.UIPadding),
PaddingRight=UDim.new(0,f.UIPadding),
PaddingBottom=UDim.new(0,f.UIPadding),
}),
d("TextLabel",{
AutomaticSize="Y",
Size=UDim2.new(1,-24-f.UIPadding,0,0),
TextWrapped=true,
TextXAlignment="Left",
RichText=true,
BackgroundTransparency=1,
TextSize=16, -- Banana size
ThemeTag={
TextColor3="Text"
},
Text=h.Title,
FontFace=Font.new(b.Font,Enum.FontWeight.SemiBold)
}),
d("UIListLayout",{
Padding=UDim.new(0,f.UIPadding/3)
})
})

if h.Content then
d("TextLabel",{
AutomaticSize="Y",
Size=UDim2.new(1,0,0,0),
TextWrapped=true,
TextXAlignment="Left",
RichText=true,
BackgroundTransparency=1,
TextTransparency=.4,
TextSize=14, -- Banana size
ThemeTag={
TextColor3="Text"
},
Text=h.Content,
FontFace=Font.new(b.Font,Enum.FontWeight.Medium),
Parent=p
})
end

local r=b.NewRoundFrame(f.UICorner,"Squircle",{
Size=UDim2.new(1,0,0,0),
Position=UDim2.new(2,0,1,0),
AnchorPoint=Vector2.new(0,1),
AutomaticSize="Y",
ImageTransparency=.05,
ThemeTag={
ImageColor3="Background"
},
},{
d("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
Name="DurationFrame",
},{
d("Frame",{
Size=UDim2.new(1,0,1,0),
BackgroundTransparency=1,
ClipsDescendants=true,
},{
m,
}),
}),
d("ImageLabel",{
Name="Background",
Image=h.Background,
BackgroundTransparency=1,
Size=UDim2.new(1,0,1,0),
ScaleType="Crop",
ImageTransparency=h.BackgroundImageTransparency
},{
d("UICorner",{
CornerRadius=UDim.new(0,f.UICorner),
})
}),
p,
j,l,
})

local u=d("Frame",{
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,0),
Parent=g.Holder
},{
r
})

function h.Close(v)
if not h.Closed then
h.Closed=true
e(u,0.4,{Size=UDim2.new(1,0,0,-8)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
e(r,0.5,{Position=UDim2.new(2,0,1,0)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
task.wait(.4)
u:Destroy()
end
end

task.spawn(function()
task.wait()
e(u,0.4,{Size=UDim2.new(
1,
0,
0,
r.AbsoluteSize.Y
)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
e(r,0.4,{Position=UDim2.new(0,0,1,0)},Enum.EasingStyle.Quint,Enum.EasingDirection.Out):Play()
if h.Duration then
m.Size=UDim2.new(0,r.DurationFrame.AbsoluteSize.X,1,0)
e(r.DurationFrame.Frame,h.Duration,{Size=UDim2.new(0,0,1,0)},Enum.EasingStyle.Linear,Enum.EasingDirection.InOut):Play()
task.wait(h.Duration)
h:Close()
end
end)

if l then
b.AddSignal(l.TextButton.MouseButton1Click,function()
h:Close()
end)
end

return h
end

return f
end

-- ... (các phần khác giữ nguyên hoặc chỉnh sửa tương tự) ...

-- Thêm module cho Banana Toggle Button ở góc phải dưới
function a.Z()
    local aa = {}
    
    local ab = a.load'b'
    local ac = ab.New
    local ad = ab.Tween
    
    function aa.Create(ae, af, ag)
        -- af: parent (thường là WindUI.ScreenGui)
        -- ag: window object
        -- ae: callback function khi toggle
        
        local ah = {
            Enabled = true,
            Position = UDim2.new(1, -20, 1, -20), -- Góc phải dưới
            Size = UDim2.new(0, 45, 0, 45),
            IconEnabled = "banana", -- Icon khi bật
            IconDisabled = "power-off", -- Icon khi tắt
            UIElements = {}
        }
        
        -- Tạo background
        ah.UIElements.Background = ab.NewRoundFrame(12, "Squircle", {
            Size = ah.Size,
            Position = ah.Position,
            AnchorPoint = Vector2.new(1, 1),
            Parent = af,
            ZIndex = 99999,
            ThemeTag = {
                ImageColor3 = "Primary",
                ImageTransparency = 0.1
            },
        }, {
            ab.NewRoundFrame(12, "Shadow-md", {
                Size = UDim2.new(1, 4, 1, 4),
                Position = UDim2.new(0.5, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                ImageTransparency = 0.7,
                ZIndex = 99998
            })
        }, true)
        
        -- Tạo icon
        ah.UIElements.Icon = ac("ImageLabel", {
            Size = UDim2.new(0, 24, 0, 24),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundTransparency = 1,
            Image = ab.Icon(ah.IconEnabled)[1],
            ImageRectSize = ab.Icon(ah.IconEnabled)[2].ImageRectSize,
            ImageRectOffset = ab.Icon(ah.IconEnabled)[2].ImageRectPosition,
            ThemeTag = {
                ImageColor3 = "White"
            },
            Parent = ah.UIElements.Background
        })
        
        -- Tạo button
        ah.UIElements.Button = ac("TextButton", {
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            Text = "",
            Parent = ah.UIElements.Background
        })
        
        -- Animation hover
        ab.AddSignal(ah.UIElements.Button.MouseEnter, function()
            ad(ah.UIElements.Background, 0.15, {ImageTransparency = 0}):Play()
            ad(ah.UIElements.Icon, 0.15, {Size = UDim2.new(0, 26, 0, 26)}):Play()
        end)
        
        ab.AddSignal(ah.UIElements.Button.MouseLeave, function()
            ad(ah.UIElements.Background, 0.15, {ImageTransparency = 0.1}):Play()
            ad(ah.UIElements.Icon, 0.15, {Size = UDim2.new(0, 24, 0, 24)}):Play()
        end)
        
        -- Click handler
        ab.AddSignal(ah.UIElements.Button.MouseButton1Click, function()
            ah.Enabled = not ah.Enabled
            
            if ah.Enabled then
                ad(ah.UIElements.Background, 0.2, {
                    ImageColor3 = Color3.fromHex("#FFB800")
                }):Play()
                ah.UIElements.Icon.Image = ab.Icon(ah.IconEnabled)[1]
                ah.UIElements.Icon.ImageRectSize = ab.Icon(ah.IconEnabled)[2].ImageRectSize
                ah.UIElements.Icon.ImageRectOffset = ab.Icon(ah.IconEnabled)[2].ImageRectPosition
            else
                ad(ah.UIElements.Background, 0.2, {
                    ImageColor3 = Color3.fromHex("#FF5555")
                }):Play()
                ah.UIElements.Icon.Image = ab.Icon(ah.IconDisabled)[1]
                ah.UIElements.Icon.ImageRectSize = ab.Icon(ah.IconDisabled)[2].ImageRectSize
                ah.UIElements.Icon.ImageRectOffset = ab.Icon(ah.IconDisabled)[2].ImageRectPosition
            end
            
            -- Animation click
            ad(ah.UIElements.Icon, 0.1, {Rotation = 360}):Play()
            ad(ah.UIElements.Icon, 0.1, {Size = UDim2.new(0, 20, 0, 20)}):Play()
            
            task.wait(0.1)
            
            ad(ah.UIElements.Icon, 0.1, {Rotation = 0}):Play()
            ad(ah.UIElements.Icon, 0.1, {Size = UDim2.new(0, 24, 0, 24)}):Play()
            
            -- Gọi callback
            if ae then
                ab.SafeCallback(ae, ah.Enabled)
            end
        end)
        
        -- Make draggable
        ab.Drag(ah.UIElements.Background, {ah.UIElements.Button})
        
        -- Functions
        function ah.SetEnabled(ai, aj)
            ah.Enabled = aj
            if aj then
                ah.UIElements.Background.ImageColor3 = Color3.fromHex("#FFB800")
                ah.UIElements.Icon.Image = ab.Icon(ah.IconEnabled)[1]
            else
                ah.UIElements.Background.ImageColor3 = Color3.fromHex("#FF5555")
                ah.UIElements.Icon.Image = ab.Icon(ah.IconDisabled)[1]
            end
        end
        
        function ah.SetVisible(ai, aj)
            ah.UIElements.Background.Visible = aj
        end
        
        function ah.Destroy(ai)
            ah.UIElements.Background:Destroy()
        end
        
        return ah
    end
    
    return aa
end

-- ... (các phần khác của WindUI) ...

-- Main Window với Banana Theme
function CreateBananaWindow()
    local WindUI = {}
    
    -- Tạo theme Banana
    WindUI.Theme = {
        Name = "Banana",
        
        Accent = Color3.fromHex("#FFB800"),
        Dialog = Color3.fromHex("#1A1A1A"),
        Outline = Color3.fromHex("#2D2D2D"),
        Text = Color3.fromHex("#FFFFFF"),
        Placeholder = Color3.fromHex("#7A7A7A"),
        Background = Color3.fromHex("#0F0F0F"),
        Button = Color3.fromHex("#2D2D2D"),
        Icon = Color3.fromHex("#A6A6A6"),
        Toggle = Color3.fromHex("#FFB800"),
        Slider = Color3.fromHex("#FFB800"),
        Checkbox = Color3.fromHex("#FFB800"),
        
        -- Banana specific
        BananaToggleBackground = Color3.fromHex("#1A1A1A"),
        BananaToggleHandle = Color3.fromHex("#FFB800"),
        BananaToggleBorder = Color3.fromHex("#2D2D2D"),
    }
    
    -- Tạo window với Banana style
    WindUI.Window = {
        Title = "Banana Hub",
        SubTitle = "v2.0",
        Size = UDim2.new(0, 550, 0, 450),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Resizable = true,
        MinSize = Vector2.new(400, 300),
        MaxSize = Vector2.new(800, 600),
        Theme = "Banana",
        UICorner = 14,
        UIPadding = 12,
        NewElements = true, -- Sử dụng style mới
        HidePanelBackground = false,
        
        -- Banana specific
        UseBananaColors = true,
        BananaAccentColor = Color3.fromHex("#FFB800"),
        BananaShadowIntensity = 0.7,
    }
    
    -- Khởi tạo các service
    local b = a.load'b'
    b.Init(WindUI)
    b.SetTheme(WindUI.Theme)
    
    -- Tạo GUI
    WindUI.ScreenGui = b.New("ScreenGui", {
        ResetOnSpawn = false,
        ZIndexBehavior = "Sibling",
        Name = "BananaHub"
    })
    
    -- Tạo toggle button ở góc phải dưới
    local BananaToggle = a.Z().Create(WindUI.ScreenGui, WindUI.Window, function(state)
        print("Banana Toggle:", state)
        -- Thêm logic của bạn ở đây
        if state then
            -- UI bật
            WindUI.ScreenGui.Enabled = true
        else
            -- UI tắt
            WindUI.ScreenGui.Enabled = false
        end
    end)
    
    WindUI.BananaToggle = BananaToggle
    
    -- Thêm vào game
    WindUI.ScreenGui.Parent = game:GetService("CoreGui") or game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Thêm các tính năng khác...
    
    return WindUI
end

-- Export
return {
    CreateWindow = CreateBananaWindow,
    Version = "1.6.63-Banana",
    Author = "Modified for Banana Hub"
}