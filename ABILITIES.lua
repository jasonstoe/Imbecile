-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

--Decompiled by Medal, I take no credit I only Made The dumper and I I.. I iron man
return function()
	local v_u_1 = CFrame.new
	local v_u_2 = CFrame.Angles
	local v_u_3 = Vector3.new
	local v_u_4 = math.atan2
	local v_u_5 = v_u_1().pointToObjectSpace
	local v_u_6 = workspace:WaitForChild(".Ignore")
	local v_u_7 = v_u_6:WaitForChild(".LocalEffects")
	local v_u_8 = require(game.ReplicatedStorage.Tween)
	local v_u_9 = workspace:WaitForChild("Map")
	local v_u_10 = require(game.ReplicatedStorage:WaitForChild("Debris"))
	local v11 = require(game.ReplicatedStorage:WaitForChild("Util"))
	local v12 = game.ReplicatedStorage:WaitForChild("EffectsFolder")
	local v_u_13 = game.ReplicatedStorage:WaitForChild("CustomClasses")
	local v_u_14 = require(v_u_13:WaitForChild("Vector4"))
	local v_u_15 = require(v_u_13:WaitForChild("Matrix"))
	local v_u_16 = require(v_u_13:WaitForChild("Line"))
	local v_u_17 = workspace:FindFirstChild(".WavesMode")
	local v18 = Instance.new("Part")
	v18.Size = Vector3.new()
	local v_u_19 = v18.Size.x
	v18:Destroy()
	repeat
		wait(0)
	until _G.MAGICS
	local v_u_20 = _G.MAGICS
	_G.resizingSymbols = {}
	local v_u_21 = {}
	local v_u_22 = {}
	local v_u_23 = workspace.CurrentCamera
	local v24 = game.Players.LocalPlayer:GetMouse()
	local v_u_25 = game.ReplicatedStorage.Effects:WaitForChild("WhiteDust")
	local v_u_26 = game:GetService("Lighting")
	local v_u_27 = {}
	local v_u_28 = {}
	local v_u_29 = {}
	local v_u_30 = {}
	local v_u_31 = {}
	local v_u_32 = {}
	local v_u_33 = {}
	local v_u_34 = {}
	local function v_u_44(p35, p36, p37, p38, p39, p40)
		-- upvalues: (copy) v_u_1, (copy) v_u_22, (copy) v_u_7
		local v41 = game.ReplicatedStorage.Glow:Clone()
		v41.CFrame = p35 * v_u_1(0, 0, p36 * -0.5)
		v41.b.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, p36 * 0.66), NumberSequenceKeypoint.new(1, 0) })
		v41.a.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, p36), NumberSequenceKeypoint.new(1, 0) })
		v41.a.Color = ColorSequence.new(p40, p40)
		local v42 = v_u_22
		local v43 = {
			["obj"] = v41,
			["size"] = p36,
			["cframe"] = p35,
			["velocity"] = p37,
			["acceleration"] = p38,
			["time"] = tick(),
			["lifetime"] = p39,
			["prevcf"] = p35
		}
		table.insert(v42, v43)
		v41.Parent = v_u_7
	end
	local function v_u_55(p45, p46, p47, p48, p49, p50)
		-- upvalues: (copy) v_u_1, (copy) v_u_21, (copy) v_u_7
		local v51 = Instance.new("Part")
		v51.TopSurface = 0
		v51.BottomSurface = 0
		v51.Anchored = true
		v51.CanCollide = false
		v51.Size = Vector3.new(1, 1, 1)
		v51.BrickColor = p50.BrickColor
		v51.Material = p50.Material
		v51.CFrame = p45 * v_u_1(0, 0, p46.z * -0.5)
		local v52 = Instance.new("SpecialMesh", v51)
		v52.MeshType = "Brick"
		v52.Scale = p46
		local v53 = v_u_21
		local v54 = {
			["obj"] = v51,
			["size"] = p46,
			["cframe"] = p45,
			["velocity"] = p47,
			["acceleration"] = p48,
			["time"] = tick(),
			["lifetime"] = p49,
			["prevcf"] = p45
		}
		table.insert(v53, v54)
		v51.Parent = v_u_7
	end
	local v_u_56 = {}
	local v_u_57 = {}
	local v_u_58 = {}
	local v_u_59 = {}
	local v_u_60 = {}
	local v_u_61 = {}
	for _, v62 in next, {
		"FogEnd",
		"FogStart",
		"FogColor",
		"ClockTime",
		"Brightness",
		"OutdoorAmbient",
		"Ambient"
	} do
		v_u_27[v62] = v_u_26[v62]
	end
	local v_u_63 = {}
	v_u_63.__index = v_u_63
	function v_u_63.new()
		-- upvalues: (copy) v_u_63
		local v64 = {
			["position"] = {
				["origin"] = CFrame.new(),
				["target"] = CFrame.new(0, 0, 50)
			},
			["colors"] = {
				{ 0, Color3.fromRGB(25, 255, 105) },
				{ 0.01, Color3.fromRGB(83, 255, 100) },
				{ 0.98, Color3.fromRGB(163, 200, 105) },
				{ 1, Color3.fromRGB(24, 255, 100) }
			},
			["rotationIncrement"] = 0.008726646259971648
		}
		local v65 = v_u_63
		return setmetatable(v64, v65)
	end
	function v_u_63.fade(p66, p67, p68)
		if p66.effect then
			local v69 = game.ReplicatedStorage.Effects.Borealis
			local v70 = {}
			for _, v71 in next, v69.Transparency.Keypoints do
				local v72 = { v71.Time, v71.Value, v71.Envelope }
				table.insert(v70, v72)
			end
			local v73 = {}
			for _, v74 in next, v70 do
				local v75 = NumberSequenceKeypoint.new
				local v76 = v74[1]
				local v77 = v74[2] + (p67 - v74[2]) * p68
				local v78 = v74[3] * p68
				table.insert(v73, v75(v76, v77, v78))
			end
			p66.effect.Transparency = NumberSequence.new(v73)
		end
	end
	function v_u_63.display(p79, p80)
		-- upvalues: (copy) v_u_10, (copy) v_u_34
		local v81 = game.ReplicatedStorage.Effects.Borealis:Clone()
		local v82 = {}
		local v83 = p80 or 1
		for _, v84 in next, p79.colors do
			v82[#v82 + 1] = ColorSequenceKeypoint.new(v84[1], v84[2])
		end
		v81.Color = ColorSequence.new(v82)
		local v85 = {}
		for v86 = 1, 2 do
			local v87 = Instance.new("Attachment")
			v_u_10:AddItem(v87, v83 * 1.5 + 1)
			if v86 == 1 then
				v81.Parent = v87
			end
			v81[("Attachment%d"):format(v86 - 1)] = v87
			v87.CFrame = v86 == 1 and p79.position.origin or p79.position.target
			v87.Parent = workspace.Terrain
			v85[#v85 + 1] = v87
		end
		p79.effect = v81
		p79.parts = v85
		local v88 = v_u_34
		local v89 = {
			["obj"] = p79,
			["effect"] = p79.effect,
			["parts"] = p79.parts,
			["rotationIncrement"] = p79.rotationIncrement,
			["duration"] = v83,
			["start"] = tick()
		}
		table.insert(v88, v89)
	end
	local v_u_90 = {
		["from"] = {
			["Brightness"] = 0,
			["Contrast"] = 0,
			["Saturation"] = 0,
			["TintColor"] = Color3.new(1, 1, 1)
		},
		["to"] = {
			["Brightness"] = 0.2,
			["Contrast"] = 1,
			["Saturation"] = 1,
			["TintColor"] = Color3.fromRGB(64, 69, 138)
		}
	}
	local v_u_91 = {
		[Enum.SavedQualitySetting.QualityLevel10] = true,
		[Enum.SavedQualitySetting.QualityLevel9] = true,
		[Enum.SavedQualitySetting.QualityLevel8] = true,
		[Enum.SavedQualitySetting.QualityLevel7] = true,
		[Enum.SavedQualitySetting.QualityLevel6] = true,
		[Enum.SavedQualitySetting.QualityLevel5] = true,
		[Enum.SavedQualitySetting.QualityLevel4] = true
	}
	local v_u_92 = {
		[Enum.SavedQualitySetting.QualityLevel1] = true,
		[Enum.SavedQualitySetting.QualityLevel2] = true,
		[Enum.SavedQualitySetting.QualityLevel3] = true
	}
	function _G.createGlow(p93, p94, p95, p96, p97, p98, p99, p100)
		-- upvalues: (copy) v_u_91, (copy) v_u_23, (copy) v_u_1, (copy) v_u_5, (copy) v_u_4, (copy) v_u_44, (copy) v_u_2
		if v_u_91[UserSettings().GameSettings.SavedQualityLevel] and (v_u_23.CFrame.p - p94).magnitude < 300 then
			local v101 = v_u_1(p94, p94 + p95)
			local v102 = v_u_5(v101, p93)
			local v103 = v_u_4(v102.y, v102.x)
			for _ = 1, p100 do
				v_u_44(v101 * v_u_2(2 * math.random() - 1, 2 * math.random() - 1, v103 + 1.57), p97, p95 * (p96 + math.random() * p96), Vector3.new(0, -196.2, 0), p99, p98)
			end
		end
	end
	function _G.createDebris(p104, p105, p106, p107, p108, p109, p110, p111)
		-- upvalues: (copy) v_u_91, (copy) v_u_23, (copy) v_u_1, (copy) v_u_5, (copy) v_u_4, (copy) v_u_55, (copy) v_u_2
		if v_u_91[UserSettings().GameSettings.SavedQualityLevel] and (v_u_23.CFrame.p - p105).magnitude < 300 then
			local v112 = v_u_1(p105, p105 + p106)
			local v113 = v_u_5(v112, p104)
			local v114 = v_u_4(v113.y, v113.x)
			for _ = 1, p111 do
				local v115 = v_u_55
				local v116 = v112 * v_u_2(math.random() - 0.5, math.random() - 0.5, v114 + 1.57) * v_u_1((math.random() - 0.5) * 15, (math.random() - 0.5) * 15, 0)
				local v117 = p108 + math.random() * p108
				local v118 = p108 + math.random() * p108
				local v119 = p108 + math.random() * p108
				v115(v116, Vector3.new(v117, v118, v119), p106 * (p107 + math.random() * p107), Vector3.new(0, -196.2, 0), p110, p109)
			end
		end
	end
	local v_u_120 = {
		[Enum.BodyPart.Head] = "Head",
		[Enum.BodyPart.Torso] = "Torso",
		[Enum.BodyPart.LeftArm] = "Left Arm",
		[Enum.BodyPart.RightArm] = "Right Arm",
		[Enum.BodyPart.LeftLeg] = "Left Leg",
		[Enum.BodyPart.RightLeg] = "Right Leg"
	}
	local function v_u_129(p121)
		-- upvalues: (copy) v_u_120
		if p121:FindFirstChild("RightHand") then
			local v122 = next
			local v123, v124 = p121:GetChildren()
			for _, v125 in v122, v123, v124 do
				if v125:IsA("CharacterMesh") then
					local v126 = Instance.new("SpecialMesh")
					v126.MeshType = "FileMesh"
					local v127 = v125.MeshId
					v126.MeshId = v127 == 0 and "" or ("rbxassetid://%s"):format(v127)
					local v128 = v125.BaseTextureId
					v126.TextureId = v128 == 0 and "" or ("rbxassetid://%s"):format(v128)
					v126.Parent = v125.Parent:FindFirstChild(v_u_120[v125.BodyPart])
					v125:Destroy()
				end
			end
		end
	end
	local v_u_130 = workspace.CurrentCamera
	function makeProp(p131, p132, p133, p134)
		-- upvalues: (ref) v_u_129
		p131.Archivable = true
		local v_u_135 = p131:Clone()
		p131.Archivable = false
		local v136 = next
		local v137, v138 = v_u_135:GetDescendants()
		for _, v139 in v136, v137, v138 do
			if v139:IsA("BasePart") or (v139:IsA("SpecialMesh") or (v139:IsA("CharacterMesh") or (v139:IsA("Shirt") or v139:IsA("Pants")))) then
				if v139:IsA("BasePart") then
					v139.Color = p134
					if v139:FindFirstChild("Mesh") then
						v139.Mesh.TextureId = ""
					end
					if v139.Name:lower() == "head" then
						local v140 = next
						local v141, v142 = v139:GetChildren()
						for _, v143 in v140, v141, v142 do
							if v143:IsA("Decal") then
								v143:Destroy()
							end
						end
					end
					local v144 = next
					local v145, v146 = v139:GetChildren()
					for _, v147 in v144, v145, v146 do
						if v147:IsA("ParticleEmitter") then
							v147:Destroy()
						end
					end
				end
			else
				v139:Destroy()
			end
		end
		v_u_129(v_u_135)
		v_u_135:SetPrimaryPartCFrame(p132)
		local v148 = next
		local v149, v150 = v_u_135:GetDescendants()
		for _, v151 in v148, v149, v150 do
			if v151:IsA("BasePart") then
				v151.CanCollide = false
				v151.Anchored = true
			end
		end
		local v152 = next
		local v153, v154 = v_u_135:GetDescendants()
		local v_u_155 = {}
		for _, v156 in v152, v153, v154 do
			if v156:IsA("BasePart") then
				v156.Transparency = v156.Transparency + (p133 or 0)
				v_u_155[v156] = v156.Transparency
			end
		end
		return setmetatable({
			["GetModel"] = function()
				-- upvalues: (copy) v_u_135
				return v_u_135
			end,
			["Fade"] = function(p157, p158)
				-- upvalues: (copy) v_u_155
				local v159 = p157:GetModel()
				local v160 = next
				local v161, v162 = v159:GetDescendants()
				for _, v163 in v160, v161, v162 do
					if v163:IsA("BasePart") then
						v163.Transparency = v_u_155[v163] + (1 - v_u_155[v163]) * p158
					end
				end
			end,
			["Destroy"] = function(p164)
				p164:GetModel():Destroy()
			end
		}, {})
	end
	local v_u_165 = {}
	local v_u_166 = {}
	local v_u_167 = {}
	local v_u_1623 = {
		["SlimeKingAnchor"] = function(p_u_168)
			local v_u_169 = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if v_u_169 then
				local v_u_170 = nil
				v_u_170 = game:GetService("RunService").Heartbeat:Connect(function(_, _)
					-- upvalues: (copy) p_u_168, (ref) v_u_170, (copy) v_u_169
					if not p_u_168:IsDescendantOf(workspace) then
						v_u_170:Disconnect()
					end
					local v171 = p_u_168:IsA("BasePart") and p_u_168.CFrame or CFrame.new()
					v_u_169.Velocity = v_u_169.Velocity
					v_u_169.RotVelocity = Vector3.new()
					v_u_169.CFrame = v171
				end)
			end
		end,
		["GravityDecalRings"] = function(p172, p173, p174, p175, p176, _, p177)
			-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_29
			local v178 = game.ReplicatedStorage.Effects.Explosion1.ring:Clone()
			v_u_10:AddItem(v178, 10)
			local v179 = v178.Bottom.ImageLabel
			local v180 = v178.Top.ImageLabel
			v179.Image = "rbxassetid://535593642"
			v180.Image = "rbxassetid://535593642"
			local v181 = v178.Bottom.ImageLabel
			local v182 = v178.Top.ImageLabel
			v181.ImageColor3 = p173
			v182.ImageColor3 = p173
			v178.Size = p174
			local v183 = CFrame.new(p172) * CFrame.Angles(math.random() * 3, math.random() * 3, math.random() * 3)
			if p176 then
				local v184 = math.random(-p174.x / 2, p174.x / 2)
				local v185 = math.random(-p174.y / 2, p174.y / 2)
				local v186 = math.random
				local v187 = -p174.z / 2
				local v188 = p174.z / 2
				v189 = Vector3.new(v184, v185, v186(v187, v188))
				if v189 then
					::l3::
					v178.CFrame = v183 + v189
					v178.Parent = v_u_7
					v_u_29[#v_u_29 + 1] = {
						["p"] = v178,
						["speed"] = p175,
						["start"] = tick(),
						["duration"] = p177
					}
					return
				end
			end
			local v189 = Vector3.new()
			goto l3
		end,
		["GravityRings"] = function(p190, p191, p192, p193, p194)
			-- upvalues: (copy) v_u_7, (copy) v_u_33
			while p190 and p190.Parent do
				local v195 = p191.Scale / p190.Size
				local v196 = v195.y
				local v197 = 2 + 0 * v195.x * 0.95
				local v198 = game.ReplicatedStorage.Effects.Ring:Clone()
				v198.BrickColor = p192 or p190.BrickColor
				local v199 = v197 * 0.1
				v198.Size = Vector3.new(v197, v197, v199)
				v198.CFrame = p190.CFrame * CFrame.new(0, v195.y / 2 - v196 * 0, 0) * CFrame.Angles(1.5707963267948966, 0, 0)
				v198.Parent = v_u_7
				v_u_33[#v_u_33 + 1] = {
					["part"] = p190,
					["mesh"] = p191,
					["p"] = v198,
					["start"] = tick(),
					["duration"] = p194
				}
				wait(p193)
			end
		end,
		["SpiritExplosion"] = function(p200, p201, p202, p203, p204, p205)
			-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_30
			local v206 = {}
			for _ = 1, 4 do
				local v207 = game.ReplicatedStorage.Effects.Ring:Clone()
				v_u_10:AddItem(v207, 10)
				v207.BrickColor = p201
				v207.Size = Vector3.new(2, 2, 0.25)
				v207.Transparency = 0.1
				v207.CFrame = CFrame.new(p200) * CFrame.Angles(math.random() * 2, math.random() * 2, math.random() * 2)
				v207.Parent = v_u_7
				v206[#v206 + 1] = {
					["Part"] = v207,
					["CF"] = v207.CFrame,
					["Direction"] = math.random(1, 2) == 1 and 1 or -1
				}
			end
			local v208 = v_u_30
			local v209 = {
				["rings"] = v206,
				["pos"] = p200,
				["speed"] = p202,
				["startSize"] = p203,
				["endSize"] = p204,
				["duration"] = p205,
				["start"] = tick()
			}
			table.insert(v208, v209)
		end,
		["ShardDebris"] = function(p210, p211, p212)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			local v213 = {}
			for v214 = 1, 5 do
				CFrame.new()
				local v215 = Vector3.new(4, 7, 4) * p211
				local v216
				if v214 == 1 then
					v216 = CFrame.new(0, 1 * p211, 0)
					v215 = Vector3.new(5, 14, 5) * p211
				elseif v214 == 2 then
					v216 = CFrame.new(2 * p211, 0, 0) * CFrame.Angles(0, 0, -0.6108652381980153)
				elseif v214 == 3 then
					v216 = CFrame.new(-2 * p211, 0, 0) * CFrame.Angles(0, 0, 0.6108652381980153)
				elseif v214 == 4 then
					v216 = CFrame.new(0, 0, 2 * p211) * CFrame.Angles(0.6108652381980153, 0, 0)
				else
					v216 = CFrame.new(0, 0, -2 * p211) * CFrame.Angles(-0.6108652381980153, 0, 0)
				end
				local v217 = game.ReplicatedStorage.Effects.Shard:Clone()
				v_u_10:AddItem(v217, p212 + 5)
				v217.BrickColor = math.random(1, 2) == 1 and BrickColor.new("Plum") or BrickColor.new("Sunrise")
				v217.Size = v215
				v217.CFrame = CFrame.new(p210) * CFrame.new(0, 1, 0) * v216 * CFrame.new(0, 0.5 + math.random(), 0)
				v217.Parent = v_u_7
				v213[#v213 + 1] = {
					["Part"] = v217,
					["CF"] = v217.CFrame
				}
			end
			_G.playSound("SmallShatter", v213[1].Part)
			_G.playSound("Crystal Explosion", v213[1].Part)
			wait(p212)
			local v218 = tick()
			while tick() - v218 < 0.9 do
				local v219 = (tick() - v218) / 0.9
				for _, v220 in next, v213 do
					v220.Part.Transparency = v219
				end
				game:service("RunService").RenderStepped:wait()
			end
			for _, v221 in next, v213 do
				v221.Part:Destroy()
			end
		end,
		["DestroyShard"] = function(p222, p223, p224, p225, p226, p227)
			-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_8
			local v228 = game:service("RunService")
			local v229 = p226 or BrickColor.new("")
			local v230 = p223 or Vector3.new()
			local v231 = p224 or 1
			local v232 = p225 or 1
			local v233 = {}
			local v234 = p227 or 1
			for _ = 1, 25 do
				local v235 = math.random(-(v231 + 2), v231 + 2)
				local v236 = math.random(-v232 * 0.5, v232 * 0.75)
				local v237 = math.random
				local v238 = -(v231 + 2)
				local v239 = v231 + 2
				local v240 = Vector3.new(v235, v236, v237(v238, v239))
				local v241 = Instance.new("Part")
				v_u_10:AddItem(v241, 5)
				v241.Material = "Neon"
				v241.BrickColor = v229
				v241.TopSurface = 0
				v241.BottomSurface = 0
				v241.Anchored = true
				v241.CanCollide = false
				v241.Size = Vector3.new()
				v241.CFrame = CFrame.new(p222)
				local v242 = Instance.new("SpecialMesh", v241)
				v242.MeshType = "Wedge"
				local v243 = v232 * 0.5
				local v244 = v231 * 0.5
				v242.Scale = Vector3.new(0.05, v243, v244) / 0.2
				v233[#v233 + 1] = {
					["Part"] = v241,
					["Offset"] = v240 + v230,
					["Direction"] = math.random(1, 2) == 1 and 1 or -1
				}
			end
			for _, v245 in next, v233 do
				v245.Part.Parent = v_u_7
			end
			local v246 = v_u_8.ease.out.quad
			local v247 = tick()
			local v248 = 0
			while tick() - v247 < v234 do
				v248 = v248 + 1
				local v249 = v246(tick() - v247, 0, v231 * 1.5, v234 * 0.5)
				local v250 = v246(tick() - v247, 0, 1, v234)
				for _, v251 in next, v233 do
					local v252 = math.rad(v248) * v250
					local v253 = math.sin(v252) * v249
					local v254 = math.rad(v248) * v250
					local v255 = math.cos(v254) * v249
					local v256 = CFrame.new(p222) * CFrame.Angles(math.random(), math.random(), math.random()) * CFrame.Angles(-1.5707963267948966, 0, 0)
					local v257 = v251.Part
					local v258 = CFrame.new
					local v259 = v256.p
					local v260 = v251.Direction * v253
					local v261 = 2 - v255
					local v262 = v251.Direction * v255
					v257.CFrame = v258(v259 + Vector3.new(v260, v261, v262) + v251.Offset, p222)
					v251.Part.Transparency = (tick() - v247) / v234
				end
				v228.RenderStepped:wait()
			end
			for _, v263 in next, v233 do
				v263.Part:Destroy()
			end
		end,
		["SpreadTreeRoots"] = function(p_u_264, p_u_265, p_u_266, p_u_267, p_u_268)
			-- upvalues: (copy) v_u_6, (copy) v_u_10, (copy) v_u_19, (copy) v_u_7
			local v_u_269 = game:service("RunService")
			for _, v_u_270 in next, {
				Vector3.new(0, 0, 1),
				Vector3.new(0, 0, -1),
				Vector3.new(1, 0, 0),
				Vector3.new(-1, 0, 0),
				Vector3.new(1, 0, 1),
				Vector3.new(-1, 0, -1),
				Vector3.new(1, 0, -1),
				Vector3.new(-1, 0, 1)
			} do
				spawn(function()
					-- upvalues: (ref) v_u_270, (ref) p_u_267, (ref) p_u_265, (ref) p_u_268, (copy) p_u_264, (ref) v_u_6, (ref) v_u_10, (copy) p_u_266, (ref) v_u_19, (ref) v_u_7, (copy) v_u_269
					v_u_270 = v_u_270 * 4
					p_u_267 = p_u_267 and p_u_267 or 12
					p_u_265 = p_u_265 and p_u_265 or 2
					p_u_268 = p_u_268 and p_u_268 or 5
					local v271 = p_u_264 + v_u_270
					local v272 = p_u_264
					local v273 = v_u_270
					local v274 = math.random
					local v275 = p_u_267 ^ 0.8
					local v276 = v272 + v273 * v274(math.ceil(v275), p_u_267)
					local v277 = (v276 - v271).magnitude
					local v278 = v271
					local v279 = {}
					for v280 = 1, 10 do
						local v281 = (v280 ^ 2) ^ (-0.3)
						local v282 = CFrame.new(v271, v276) * CFrame.new(0, 0, -v280 * (v277 / 10)).p
						local v283 = 0.5 + math.random(-3, 3) * math.random()
						local v284 = 0.5 + math.random(-1, 1) * math.random()
						local v285 = 0.5 + math.random(-2, 2) * math.random()
						local v286 = v282 + Vector3.new(v283, v284, v285)
						local v287 = Ray.new(v286 + Vector3.new(0, 2, 0), Vector3.new(0, -250, 0))
						local v288 = { v_u_6 }
						local v289, v290, v291 = workspace:FindPartOnRayWithIgnoreList(v287, v288)
						if not v289 then
							break
						end
						local v292 = (v278 - (v290 + v291)).magnitude
						local v293 = CFrame.new(0, 0, -v292 / 2)
						local v294 = CFrame.new(v278, v290 + v291) * v293
						local v295 = Ray.new(v290, v294.lookVector * v292)
						local v296 = { v_u_6 }
						local _, v297, _ = workspace:FindPartOnRayWithIgnoreList(v295, v296)
						if v289 then
							local v298 = Instance.new("Part")
							v_u_10:AddItem(v298, p_u_268 - 0.75)
							v298.BrickColor = p_u_266 and p_u_266 or BrickColor.new("Burnt Sienna")
							v298.TopSurface = 0
							v298.BottomSurface = 0
							v298.Anchored = true
							v298.CanCollide = true
							v298.Size = Vector3.new()
							v298.CFrame = CFrame.new(v278, v290 + v291)
							local v299 = Instance.new("CylinderMesh", v298)
							local v300 = v298:Clone()
							v_u_10:AddItem(v300, p_u_268 - 0.75)
							v300.Mesh:Destroy()
							local v301 = Instance.new("SpecialMesh", v300)
							v301.MeshType = "Sphere"
							v301.Scale = Vector3.new(1, 1, 1) * (p_u_265 * v281) / v_u_19
							local v302
							if v280 == 1 then
								v302 = v298:Clone()
								v_u_10:AddItem(v302, p_u_268 - 0.75)
								v302.Mesh:Destroy()
								local v303 = Instance.new("SpecialMesh", v302)
								v303.MeshType = "Sphere"
								v303.Scale = Vector3.new(1, 1, 1) * (p_u_265 * v281) / v_u_19
							else
								v302 = nil
							end
							local v304 = nil
							if debrisBlocked then
								v304 = (v278 - v297).magnitude
								v298.CFrame = v298.CFrame * CFrame.new(0, 0, -v304 / 2)
							else
								v298.CFrame = v298.CFrame * v293
							end
							local v305 = p_u_265 * v281
							local v306 = p_u_265 * v281
							v299.Scale = Vector3.new(v305, v292, v306) / v_u_19
							v298.CFrame = v298.CFrame * CFrame.Angles(1.5707963267948966, 0, 0)
							if debrisBlocked then
								v300.CFrame = v298.CFrame * CFrame.new(0, -v304 / 2, 0)
								if v302 then
									v302.CFrame = v298.CFrame * CFrame.new(0, v304 / 2, 0)
								end
							else
								v300.CFrame = v298.CFrame * CFrame.new(0, -v292 / 2, 0)
								if v302 then
									v302.CFrame = v298.CFrame * CFrame.new(0, v292 / 2, 0)
								end
							end
							if v302 then
								v302.Parent = v_u_7
							end
							local v307 = v_u_7
							v298.Parent = v_u_7
							v300.Parent = v307
							v279[#v279 + 1] = v298
							v279[#v279 + 1] = v300
							v279[#v279 + 1] = v302 or nil
							if debrisBlocked then
								break
							end
						end
						v278 = v290 + v291
						v_u_269.RenderStepped:wait()
					end
				end)
			end
		end,
		["FadeClone"] = function(p308, p309, p310)
			-- upvalues: (copy) v_u_166
			local v311 = p308:Clone()
			v311.Anchored = true
			v311.CanCollide = false
			local v312 = next
			local v313, v314 = v311:GetChildren()
			for _, v315 in v312, v313, v314 do
				if v315:IsA("BodyMover") then
					v315:Destroy()
				end
			end
			local v316 = v_u_166
			local v317 = {
				["part"] = p308,
				["copy"] = v311,
				["parts"] = {},
				["rate"] = p309,
				["duration"] = p310,
				["start_t"] = v311.Transparency,
				["counter"] = 0,
				["start"] = tick()
			}
			table.insert(v316, v317)
		end,
		["Lightning"] = function(p318, p319, p320, p321, p322, p323, p324, p325, p326)
			-- upvalues: (copy) v_u_7
			local v327 = (p318 - p319).magnitude
			local v328 = v327 / p320
			local v329 = math.min(99, v328)
			local v330 = {}
			for v331 = 0, v329 do
				local v332 = Instance.new("Part")
				v332.Anchored = true
				v332.BrickColor = p322
				v332.Transparency = 0
				v332.CanCollide = false
				v332.Material = p325 or "Neon"
				v332.Size = Vector3.new(0.2, 0.2, 0.2)
				if v331 == 0 then
					_G.playSound(p326 or "Zap", v332)
				end
				local v333 = Instance.new("BlockMesh", v332)
				local v334 = p321 * (math.random() - 0.5)
				local v335 = p321 * (math.random() - 0.5)
				local v336 = p321 * (math.random() - 0.5)
				local v337 = Vector3.new(v334, v335, v336)
				local v338 = CFrame.new(p318, p319) * CFrame.new(0, 0, v327 / v329).p + v337
				if v331 == v329 then
					local v339 = (p318 - p319).magnitude
					v333.Scale = Vector3.new(p323, p323, v339) / 0.2
					v332.CFrame = CFrame.new(p318, p319) * CFrame.new(0, 0, -v339 / 2)
				else
					local v340 = v327 / v329
					v333.Scale = Vector3.new(p323, p323, v340) / 0.2
					v332.CFrame = CFrame.new(p318, v338) * CFrame.new(0, 0, v327 / v329 / 2)
				end
				local v341 = v332.CFrame
				local v342 = v327 / v329 / 2
				p318 = v341 * Vector3.new(0, 0, v342)
				v332.Parent = v_u_7
				v330[v331] = v332
			end
			wait(p324)
			for _, v343 in next, v330 do
				v343:Destroy()
			end
		end,
		["HealRay"] = function(p344, p345, p346, p347, p348, p349)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v350 = v_u_8.ease.out.quad
			local v351 = {}
			for v352 = 1, p346 and 2 or 1 do
				local v353 = Instance.new("Part")
				v353.BrickColor = v352 == 1 and p345 and p345 or p346
				v353.Material = p349 or "Neon"
				v353.TopSurface = 0
				v353.BottomSurface = 0
				v353.Anchored = true
				v353.CanCollide = false
				v353.Size = Vector3.new(0.2, 0.2, 0.2)
				v353.Transparency = v352 == 1 and 0 or 0.1
				v353.CFrame = CFrame.new(p344)
				local v354 = Instance.new("CylinderMesh", v353)
				v354.Scale = Vector3.new(1, 10000, 1)
				v353.Parent = v_u_7
				v351[#v351 + 1] = {
					["Part"] = v353,
					["Mesh"] = v354
				}
			end
			local v355 = tick()
			while tick() - v355 < p348 * 0.5 do
				local v356 = v350(tick() - v355, 1, -0.9, p348 * 0.5)
				local v357 = v350(tick() - v355, 5, p347, p348 * 0.5)
				for v358, v359 in next, v351 do
					local v360 = v358 == 1 and v357 and v357 or v357 * 1.5
					v359.Part.Transparency = v358 == 1 and v356 and v356 or v356 + 0.1
					local v361 = v359.Mesh
					local v362 = 1 * v360
					local v363 = 1 * v360
					v361.Scale = Vector3.new(v362, 10000, v363) / 0.2
				end
				wait(0)
			end
			wait(p348 * 0.125)
			local v364 = tick()
			while tick() - v364 < p348 * 0.25 do
				local v365 = v350(tick() - v364, 0, 1, p348 * 0.25)
				local v366 = v350(tick() - v364, p347, -p347, p348 * 0.25)
				for v367, v368 in next, v351 do
					local v369 = v367 == 1 and v366 and v366 or v366 * 1.5
					v368.Part.Transparency = v367 == 1 and v365 and v365 or v365 + 0.1
					local v370 = v368.Mesh
					local v371 = 1 * v369
					local v372 = 1 * v369
					v370.Scale = Vector3.new(v371, 10000, v372) / 0.2
				end
				wait(0)
			end
			for _, v373 in next, v351 do
				v373.Part:Destroy()
			end
		end,
		["SlimeExplosion"] = function(p374)
			-- upvalues: (copy) v_u_7, (copy) v_u_8, (copy) v_u_10
			local v_u_375 = {}
			for _ = 1, 2 do
				local v376 = Instance.new("Part")
				v376.Color = Color3.fromRGB(49, 94, 255)
				v376.Material = "Neon"
				v376.TopSurface = 0
				v376.BottomSurface = 0
				v376.Anchored = true
				v376.CanCollide = false
				v376.Size = Vector3.new(0.2, 0.2, 0.2)
				v376.Transparency = 1
				v376.CFrame = CFrame.new(p374)
				local v377 = Instance.new("SpecialMesh", v376)
				v377.MeshType = "Sphere"
				v377.Scale = Vector3.new()
				v376.Parent = v_u_7
				v_u_375[#v_u_375 + 1] = {
					["Part"] = v376,
					["Mesh"] = v377
				}
			end
			local v_u_378 = v_u_8.ease.out.quad
			local v_u_379 = tick()
			local v_u_380 = 0.35
			while tick() - v_u_379 < v_u_380 do
				local _ = (tick() - v_u_379) / v_u_380
				local v381 = v_u_378(tick() - v_u_379, 1, -0.6, v_u_380)
				local v382 = v_u_378(tick() - v_u_379, 0, 70, v_u_380)
				for v383, v384 in next, v_u_375 do
					v384.Part.CFrame = CFrame.new(p374.x, p374.y, p374.z)
					v384.Part.Transparency = v383 == 1 and v381 and v381 or v381 * 1.15
					v384.Mesh.Scale = Vector3.new(5, 5, 5) * (v383 == 1 and v382 and v382 or v382 * 1.3)
				end
				wait(0)
			end
			spawn(function()
				-- upvalues: (ref) v_u_379, (ref) v_u_380, (copy) v_u_378, (copy) v_u_375
				v_u_379 = tick()
				v_u_380 = 0.9
				while tick() - v_u_379 < v_u_380 do
					local _ = (tick() - v_u_379) / v_u_380
					local v385 = v_u_378(tick() - v_u_379, 0.4, 1, v_u_380)
					local v386 = v_u_378(tick() - v_u_379, 70, -70, v_u_380)
					for v387, v388 in next, v_u_375 do
						v388.Part.Transparency = v387 == 1 and v385 and v385 or v385 * 1.15
						v388.Mesh.Scale = Vector3.new(5, 5, 5) * (v387 == 1 and v386 and v386 or v386 * 1.3)
					end
					wait(0)
				end
				for _, v389 in next, v_u_375 do
					v389.Part:Destroy()
				end
			end)
			local v390 = {}
			for _ = 1, 12 do
				local v391 = #v390 + 1
				local v392 = math.random(-20, 20)
				local v393 = 10 + math.random(-20, 20)
				local v394 = math.random
				v390[v391] = Vector3.new(v392, v393, v394(-20, 20))
			end
			local v395 = game:GetService("TweenService")
			for v396 = 1, #v390 do
				local v397 = v390[v396]
				local v398 = p374.x
				local v399 = p374.y
				local v400 = p374.z
				local v401 = Vector3.new(v398, v399, v400)
				local v402 = Instance.new("Part")
				v_u_10:AddItem(v402, 1)
				v402.Color = Color3.fromRGB(49, 94, 255)
				v402.Material = "Neon"
				v402.TopSurface = 0
				v402.BottomSurface = 0
				v402.Anchored = false
				v402.CanCollide = false
				v402.Size = Vector3.new(0.2, 0.2, 0.2)
				v402.Transparency = 0.5
				v402.CFrame = CFrame.new(v401, v401 + v397)
				v402:BreakJoints()
				local v403 = Instance.new("SpecialMesh", v402)
				v403.MeshType = "Sphere"
				v403.Scale = Vector3.new(110, 110, 220)
				local v404 = Instance.new("BodyVelocity", v402)
				v404.maxForce = Vector3.new(1, 1, 1) / 0
				v404.velocity = v402.CFrame.lookVector * math.random(50, 75) * 2.2
				v402.Parent = v_u_7
				v395:Create(v403, TweenInfo.new(0.7), {
					["Scale"] = Vector3.new(0, 0, 110)
				}):Play()
			end
		end,
		["Weld"] = function(p405, p406, _, p407, p408, p409)
			-- upvalues: (copy) v_u_167
			if p405 == "Add" then
				local v410 = v_u_167
				table.insert(v410, {
					p407,
					p408,
					p409,
					0,
					p406
				})
			else
				for v411, v412 in next, v_u_167 do
					if v412[5] == p406 then
						table.remove(v_u_167, v411)
					end
				end
			end
		end,
		["SlimeGrow"] = function(p413, p414, p415, p416)
			-- upvalues: (copy) v_u_10
			local v417 = {}
			for _ = 1, 15 do
				local v418 = #v417 + 1
				local v419 = math.random(-20, 20)
				local v420 = 10 + math.random(-20, 20)
				local v421 = math.random
				v417[v418] = Vector3.new(v419, v420, v421(-20, 20)) * 4
			end
			local v422 = game:GetService("TweenService")
			v422:Create(p413.Mesh, TweenInfo.new(p416 or 0.75), {
				["Scale"] = Vector3.new(1, 1, 1) * (p415 and 0 or 1)
			}):Play()
			local v423 = p413.Position
			for v424 = 1, #v417 do
				local v425 = v417[v424]
				local v426 = v423.x
				local v427 = v423.y
				local v428 = v423.z
				local v429 = Vector3.new(v426, v427, v428)
				local v430 = Instance.new("Part")
				v_u_10:AddItem(v430, 1)
				v430.Color = p414
				v430.Material = "Neon"
				v430.TopSurface = 0
				v430.BottomSurface = 0
				v430.Anchored = false
				v430.CanCollide = false
				v430.Size = Vector3.new(0.2, 0.2, 0.2)
				v430.Transparency = 0.5
				v430.CFrame = CFrame.new(v429, v429 + v425)
				v430:BreakJoints()
				local v431 = Instance.new("SpecialMesh", v430)
				v431.MeshType = "Sphere"
				v431.Scale = Vector3.new(80, 80, 220)
				local v432 = Instance.new("BodyVelocity", v430)
				v432.maxForce = Vector3.new(1, 1, 1) / 0
				v432.velocity = v430.CFrame.lookVector * math.random(50, 75) * -2
				v430.Parent = workspace
				v422:Create(v431, TweenInfo.new(p416 or 0.7), {
					["Scale"] = Vector3.new(0, 0, 110)
				}):Play()
				wait()
				if not p416 then
					_G.playSound("SlimeGrowFx", v430)
				end
			end
		end,
		["LightEffect"] = function(p433)
			-- upvalues: (copy) v_u_7, (copy) v_u_8, (copy) v_u_10
			local v_u_434 = {}
			for v435 = 1, 2 do
				local v436 = Instance.new("Part")
				v436.BrickColor = v435 == 1 and BrickColor.new("New Yeller") or BrickColor.new("Cool yellow")
				v436.Material = "Neon"
				v436.TopSurface = 0
				v436.BottomSurface = 0
				v436.Anchored = true
				v436.CanCollide = false
				v436.Size = Vector3.new(0.2, 0.2, 0.2)
				v436.Transparency = 1
				v436.CFrame = CFrame.new(p433)
				local v437 = Instance.new("SpecialMesh", v436)
				v437.MeshType = "Sphere"
				v437.Scale = Vector3.new()
				v436.Parent = v_u_7
				v_u_434[#v_u_434 + 1] = {
					["Part"] = v436,
					["Mesh"] = v437
				}
			end
			local v_u_438 = v_u_8.ease.out.quad
			local v_u_439 = tick()
			local v_u_440 = 1
			while tick() - v_u_439 < v_u_440 do
				local _ = (tick() - v_u_439) / v_u_440
				local v441 = v_u_438(tick() - v_u_439, 0, 1, v_u_440)
				local v442 = v_u_438(tick() - v_u_439, 25, -24, v_u_440)
				for v443, v444 in next, v_u_434 do
					v444.Part.CFrame = CFrame.new(p433.x, p433.y, p433.z)
					v444.Part.Transparency = v443 == 1 and v441 and v441 or v441 + 0.1
					v444.Mesh.Scale = Vector3.new(5, 5, 5) * (v443 == 1 and v442 and v442 or v442 * 1.5)
				end
				wait(0)
			end
			wait(0.1)
			spawn(function()
				-- upvalues: (ref) v_u_439, (ref) v_u_440, (copy) v_u_438, (copy) v_u_434
				v_u_439 = tick()
				v_u_440 = 0.5
				while tick() - v_u_439 < v_u_440 do
					local _ = (tick() - v_u_439) / v_u_440
					local v445 = v_u_438(tick() - v_u_439, 1, -1, v_u_440)
					local v446 = v_u_438(tick() - v_u_439, 25, 40, v_u_440)
					for v447, v448 in next, v_u_434 do
						v448.Part.Transparency = v447 == 1 and v445 and v445 or v445 + 0.1
						v448.Mesh.Scale = Vector3.new(5, 5, 5) * (v447 == 1 and v446 and v446 or v446 * 1.5)
					end
					wait(0)
				end
				wait(0.5)
				v_u_439 = tick()
				v_u_440 = 0.25
				while tick() - v_u_439 < v_u_440 do
					local _ = (tick() - v_u_439) / v_u_440
					local v449 = v_u_438(tick() - v_u_439, 0, 1, v_u_440)
					for v450, v451 in next, v_u_434 do
						v451.Part.Transparency = v450 == 1 and v449 and v449 or v449 + 0.1
					end
					wait(0)
				end
				for _, v452 in next, v_u_434 do
					v452.Part:Destroy()
				end
			end)
			local v453 = {}
			for _ = 1, 25 do
				local v454 = #v453 + 1
				local v455 = math.random(-20, 20)
				local v456 = 10 + math.random(-20, 20)
				local v457 = math.random
				v453[v454] = Vector3.new(v455, v456, v457(-20, 20))
			end
			for v458 = 1, #v453 do
				local v459 = v453[v458]
				local v460 = p433.x
				local v461 = p433.y
				local v462 = p433.z
				local v463 = Vector3.new(v460, v461, v462)
				local v464 = Instance.new("Part")
				v_u_10:AddItem(v464, 2)
				v464.BrickColor = BrickColor.new("New Yeller")
				v464.Material = "Neon"
				v464.TopSurface = 0
				v464.BottomSurface = 0
				v464.Anchored = false
				v464.CanCollide = false
				v464.Size = Vector3.new(0.2, 0.2, 0.2)
				v464.Transparency = 0.25
				v464.CFrame = CFrame.new(v463, v463 + v459)
				v464:BreakJoints()
				local v465 = Instance.new("SpecialMesh", v464)
				v465.MeshType = "Sphere"
				v465.Scale = Vector3.new(10, 10, 10)
				local v466 = v464:Clone()
				v466.Parent = v464
				v466.BrickColor = BrickColor.new("Cool yellow")
				v466.Transparency = 0.5
				v466.Mesh.Scale = Vector3.new(11.25, 11.25, 11.25)
				local v467 = Instance.new("Motor6D", v464)
				v467.Part0 = v466
				v467.Part1 = v464
				local v468 = Instance.new("BodyVelocity", v464)
				v468.maxForce = Vector3.new(1, 1, 1) / 0
				v468.velocity = v464.CFrame.lookVector * math.random(50, 75)
				v464.Parent = v_u_7
				wait(0.025)
			end
		end,
		["LightUltimate"] = function(p469)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			local v470 = game.ReplicatedStorage.Effects.Flare:Clone()
			v470.sparks.Size = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 10, 0),
				NumberSequenceKeypoint.new(0.3, 5.6, 0.9),
				NumberSequenceKeypoint.new(0.8, 2.9, 0.3),
				NumberSequenceKeypoint.new(0.9, 1.3, 0.1),
				NumberSequenceKeypoint.new(1, 0, 0)
			})
			v470.sparks.Parent = p469
			v470:Destroy()
			local function v481(p471)
				-- upvalues: (ref) v_u_10, (ref) v_u_7
				local v472 = Instance.new("Part")
				v_u_10:AddItem(v472, 0.75)
				v472.BrickColor = BrickColor.new("New Yeller")
				v472.Material = "Neon"
				v472.TopSurface = 0
				v472.BottomSurface = 0
				v472.Anchored = false
				v472.CanCollide = false
				v472.Size = Vector3.new(0.2, 0.2, 0.2)
				v472.Transparency = 0.25
				local v473 = CFrame.new
				local v474 = math.random(-15, 15)
				local v475 = math.random(-15, 15)
				local v476 = math.random
				v472.CFrame = v473(p471, p471 + Vector3.new(v474, v475, v476(-15, 15)))
				v472:BreakJoints()
				local v477 = Instance.new("SpecialMesh", v472)
				v477.MeshType = "Sphere"
				v477.Scale = Vector3.new(20, 20, 20)
				local v478 = v472:Clone()
				v478.Parent = v472
				v478.BrickColor = BrickColor.new("Cool yellow")
				v478.Transparency = 0.5
				v478.Mesh.Scale = Vector3.new(21.25, 21.25, 21.25)
				local v479 = Instance.new("Motor6D", v472)
				v479.Part0 = v478
				v479.Part1 = v472
				local v480 = Instance.new("BodyVelocity", v472)
				v480.maxForce = Vector3.new(1, 1, 1) / 0
				v480.velocity = v472.CFrame.lookVector * math.random(50, 70)
				v472.Parent = v_u_7
			end
			while p469.Parent do
				v481(p469.CFrame.p)
				wait(0.15)
			end
		end,
		["LightExplosion"] = function(p482)
			-- upvalues: (copy) v_u_8, (copy) v_u_10, (copy) v_u_7
			local v_u_483 = v_u_8.ease.out.sine
			local function v494(p484)
				-- upvalues: (ref) v_u_10, (ref) v_u_7
				local v485 = Instance.new("Part")
				v_u_10:AddItem(v485, 4)
				v485.BrickColor = BrickColor.new("New Yeller")
				v485.Material = "Neon"
				v485.TopSurface = 0
				v485.BottomSurface = 0
				v485.Anchored = false
				v485.CanCollide = false
				v485.Size = Vector3.new(0.2, 0.2, 0.2)
				v485.Transparency = 0.25
				local v486 = CFrame.new
				local v487 = math.random(-15, 15)
				local v488 = math.random(-15, 15)
				local v489 = math.random
				v485.CFrame = v486(p484, p484 + Vector3.new(v487, v488, v489(-15, 15)))
				v485:BreakJoints()
				local v490 = Instance.new("SpecialMesh", v485)
				v490.MeshType = "Sphere"
				v490.Scale = Vector3.new(50, 50, 40)
				local v491 = v485:Clone()
				v491.Parent = v485
				v491.BrickColor = BrickColor.new("Cool yellow")
				v491.Transparency = 0.5
				v491.Mesh.Scale = v490.Scale * 1.5
				local v492 = Instance.new("Motor6D", v485)
				v492.Part0 = v491
				v492.Part1 = v485
				local v493 = Instance.new("BodyVelocity", v485)
				v493.maxForce = Vector3.new(1, 1, 1) / 0
				v493.velocity = v485.CFrame.lookVector * 500
				v485.Parent = v_u_7
			end
			local v495 = game.ReplicatedStorage.Effects.Explosion1.ring:Clone()
			v495.CFrame = CFrame.new(p482)
			v495.Parent = v_u_7
			local v_u_496 = Instance.new("Part")
			v_u_496.TopSurface = 0
			v_u_496.BottomSurface = 0
			v_u_496.Anchored = true
			v_u_496.CanCollide = false
			v_u_496.Material = "Neon"
			v_u_496.BrickColor = BrickColor.new("New Yeller")
			v_u_496.Size = Vector3.new(1, 1, 1)
			v_u_496.CFrame = CFrame.new(p482)
			local v497 = Instance.new("SpecialMesh", v_u_496)
			v497.MeshType = "Sphere"
			v497.Scale = Vector3.new(45, 45, 45)
			v_u_496.Parent = v_u_7
			local v_u_498 = {}
			for v499 = 0, 10 do
				local v500 = -(Vector3.new(45, 45, 45)).y / 2 + (Vector3.new(45, 45, 45)).y * (v499 / 10)
				local v501 = v499 / 10 * 3.141592653589793
				local v502 = 2 + math.sin(v501) ^ 0.3183 * (Vector3.new(45, 45, 45)).z
				local v503 = Instance.new("Part")
				v503.TopSurface = 0
				v503.BottomSurface = 0
				v503.Anchored = true
				v503.CanCollide = false
				v503.BrickColor = BrickColor.new("White")
				v503.Material = "Neon"
				v503.Size = Vector3.new(1, 1, 1)
				v503.CFrame = v_u_496.CFrame + Vector3.new(0, v500, 0)
				local v504 = Instance.new("CylinderMesh", v503)
				v504.Name = "Mesh"
				v504.Scale = Vector3.new(v502, 2, v502)
				v503.Parent = v_u_7
				v_u_498[v499] = v503
			end
			_G.playSound("Light Explosion", workspace)
			_G.playSound("Light Explosion2", workspace)
			_G.playSound("Light Explosion3", workspace)
			local v_u_505 = false
			spawn(function()
				-- upvalues: (ref) v_u_505, (copy) v_u_483, (copy) v_u_498, (copy) v_u_496
				local v506 = tick()
				while not v_u_505 do
					local v507 = v_u_483(tick() - v506, 0, 1, 3)
					local v508 = Vector3.new(45, 45, 45) + Vector3.new(300, 300, 300) * v507
					for v509, v510 in next, v_u_498 do
						local v511 = -v508.y / 2 + v508.y * (v509 / 10)
						local v512 = v509 / 10 * 3.141592653589793 * v507
						local v513 = 2 + math.sin(v512) ^ 0.3183 * v508.z
						local v514 = v_u_496.CFrame
						local v515 = v511 * v507
						v510.CFrame = v514 + Vector3.new(0, v515, 0)
						v510.Mesh.Scale = Vector3.new(v513, 2, v513)
					end
					game:service("RunService").RenderStepped:wait()
				end
			end)
			local v516 = tick()
			local v517 = 0
			local v518 = 0
			while tick() - v516 < 3 do
				local v519 = v_u_483(tick() - v516, 0, 1, 3)
				if tick() - v517 >= 0.025 then
					v494(p482)
					v517 = tick()
				end
				v518 = v518 + 1
				v_u_483(tick() - v516, 20, 100, 3)
				local v520 = v_u_483(tick() - v516, 0.001, 21.5, 3)
				v495.Mesh.Scale = Vector3.new(1, 0.01, 1) * v520
				v495.Top.ImageLabel.Size = UDim2.new(1 + v520, 0, 1 + v520, 0)
				v495.Top.ImageLabel.Position = UDim2.new(-v520 / 2, 0, -v520 / 2, 0)
				v495.Top.ImageLabel.Rotation = v518 * 2
				v495.Top.ImageLabel.ImageTransparency = v519
				v495.Bottom.ImageLabel.Size = v495.Top.ImageLabel.Size
				v495.Bottom.ImageLabel.Position = v495.Top.ImageLabel.Position
				v495.Bottom.ImageLabel.Rotation = v518 * 2
				v495.Bottom.ImageLabel.ImageTransparency = v519
				v497.Scale = Vector3.new(45, 45, 45) + Vector3.new(300, 300, 300) * v519
				wait(0)
			end
			v495:Destroy()
			wait(1)
			v_u_505 = true
			local v521 = tick()
			while tick() - v521 < 1.25 do
				local v522 = v_u_483(tick() - v521, 0, 1, 1.25)
				v_u_496.Transparency = v522
				v497.Scale = Vector3.new(45, 45, 45) + Vector3.new(300, 300, 300) * (1 - v522 * 0.1)
				for _, v523 in next, v_u_498 do
					v523.Transparency = v522 * 2
				end
				wait(0)
			end
			v_u_496:Destroy()
			for _, v524 in next, v_u_498 do
				v524:Destroy()
			end
		end,
		["MeteorHit"] = function(p525, p526, p527, p528)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v529 = v_u_8.ease.out.quad
			local v530 = game.ReplicatedStorage.Effects.Explosion1.ring:Clone()
			v530.CFrame = CFrame.new(p525)
			v530.Parent = v_u_7
			local v531 = {}
			for _ = 1, 4 do
				local v532 = Instance.new("Part", v_u_7)
				v532.TopSurface = 0
				v532.BottomSurface = 0
				v532.Anchored = true
				v532.CanCollide = false
				v532.TopSurface = 0
				v532.BottomSurface = 0
				v532.Transparency = 0
				v532.BrickColor = p526
				v532.Size = Vector3.new(0.2, 0.2, 0.2)
				v532.CFrame = CFrame.new(p525) * CFrame.Angles(math.random() * 4, math.random() * 4, math.random() * 4) * CFrame.new(math.random(-2, 2) * p527 * 0.25, math.random(-2, 0) * p527 * 0.25, math.random(-2, 2) * p527 * 0.25)
				Instance.new("SpecialMesh", v532).MeshId = "rbxassetid://1095708"
				v531[#v531 + 1] = {
					["Part"] = v532,
					["Scale"] = Vector3.new(1, 1, 1),
					["CF"] = v532.CFrame
				}
			end
			local v533 = tick()
			local v534 = 0
			while tick() - v533 < p528 * 0.75 do
				local v535 = (tick() - v533) / (p528 * 0.75)
				v534 = v534 + 1
				local v536 = v529(tick() - v533, p527 * 0.1, p527 * 0.5, p528 * 0.75)
				local v537 = v529(tick() - v533, 0.001, p527 * 0.1075, p528 * 0.75)
				v530.Mesh.Scale = Vector3.new(1, 0.01, 1) * v537
				v530.Top.ImageLabel.Size = UDim2.new(1 + v537, 0, 1 + v537, 0)
				v530.Top.ImageLabel.Position = UDim2.new(-v537 / 2, 0, -v537 / 2, 0)
				v530.Top.ImageLabel.Rotation = v534 * 2
				v530.Top.ImageLabel.ImageTransparency = v535
				v530.Bottom.ImageLabel.Size = v530.Top.ImageLabel.Size
				v530.Bottom.ImageLabel.Position = v530.Top.ImageLabel.Position
				v530.Bottom.ImageLabel.Rotation = v534 * 2
				v530.Bottom.ImageLabel.ImageTransparency = v535
				for _, v538 in next, v531 do
					local v539 = v538.Part
					local _ = v538.Scale
					local _ = v538.CF
					v539.Mesh.Scale = Vector3.new(2.5, 3, 2.5) * v536
				end
				wait(0)
			end
			v530:Destroy()
			local v540 = tick()
			while tick() - v540 < p528 * 0.25 do
				local _ = (tick() - v540) / p528
				local v541 = v529(tick() - v540, 0.1, 1, p528 * 0.25)
				for _, v542 in next, v531 do
					local v543 = v542.Part
					local _ = v542.Scale
					local _ = v542.CF
					v543.Transparency = v541
				end
				wait(0)
			end
			for _, v544 in next, v531 do
				v544.Part:Destroy()
			end
		end,
		["EarthDebris"] = function(p545, p546, p547, p548, p549, p550, p551)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			for _ = 1, p550 do
				local v552 = math.random(-2, 2)
				local v553 = math.random
				local v554 = Vector3.new(v552, 6, v553(-2, 2)) * p549
				local v555 = CFrame.new(p545) * CFrame.new(math.random(-1, 1), 0, math.random(-1, 1)) * CFrame.Angles(math.random(), math.random(), math.random())
				local v556 = Instance.new("Part")
				v556.Anchored = false
				v556.CanCollide = false
				v556.TopSurface = 0
				v556.BottomSurface = 0
				v556.Size = Vector3.new(1, 1, 1) * p547
				if p551 then
					v556.Material = p551
				else
					v556.Material = "Slate"
				end
				if type(p546) == "table" then
					v556.BrickColor = p546[math.random(1, #p546)]
				else
					v556.BrickColor = p546
				end
				v556.CFrame = v555
				v556:BreakJoints()
				v556.Velocity = v554
				v_u_10:AddItem(v556, p548)
				v556.Parent = v_u_7
			end
		end,
		["FragmentPart"] = function(p557)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			if p557 and p557:IsA("BasePart") then
				local v558 = p557.Size.x
				local v559 = p557.Size.y
				local v560 = p557.Size.z
				for v561 = 1, 4 do
					for v562 = 1, 4 do
						local v563 = v561 - 2.1
						local v564 = v562 - 2.1
						local v565 = Vector3.new(v563, v564, 0)
						local v566 = v558 / 4
						local v567 = v559 / 4
						local v568 = v565 * Vector3.new(v566, v567, v560)
						local v569 = Instance.new("Part")
						v569.TopSurface = 0
						v569.BottomSurface = 0
						v569.Material = p557.Material
						v569.Transparency = p557.Transparency
						v569.BrickColor = p557.BrickColor
						v569.Anchored = false
						v569.CanCollide = false
						v569:BreakJoints()
						local v570 = v558 / 4
						local v571 = v559 / 4
						v569.Size = Vector3.new(v570, v571, v560)
						v569.CFrame = p557.CFrame * (CFrame.new(v569.Size / 8) - p557.Size / 8) + v568
						local v572 = math.random(-2, 2)
						local v573 = math.random(-2, 2)
						local v574 = math.random
						v569.Velocity = Vector3.new(v572, v573, v574(-2, 2)) * 10
						v_u_10:AddItem(v569, 5)
						v569.Parent = v_u_7
					end
				end
			end
		end,
		["FragmentShard"] = function(p575)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			if p575 and p575:IsA("BasePart") then
				local v576 = p575.Size.x
				local v577 = p575.Size.y
				local v578 = p575.Size.z
				for v579 = 1, 4 do
					for v580 = 1, 4 do
						local v581 = v579 - 2.1
						local v582 = v580 - 2.1
						local v583 = Vector3.new(v581, v582, 0)
						local v584 = v576 / 4
						local v585 = v577 / 4
						local v586 = v583 * Vector3.new(v584, v585, v578)
						local v587 = game.ReplicatedStorage.Effects.Shard:Clone()
						v587.BrickColor = p575.BrickColor
						v587.Material = p575.Material
						v587.Transparency = p575.Transparency
						v587.Anchored = false
						v587.CanCollide = false
						v587:BreakJoints()
						local v588 = v576 / 4
						local v589 = v577 / 4
						v587.Size = Vector3.new(v588, v589, v578)
						v587.CFrame = p575.CFrame * (CFrame.new(v587.Size / 8) - p575.Size / 8 + v586) * CFrame.Angles(1.5707963267948966, 0, 0)
						local v590 = math.random(-6, 6)
						local v591 = math.random(-1, 4)
						local v592 = math.random
						v587.Velocity = Vector3.new(v590, v591, v592(-6, 6)) * 10
						v_u_10:AddItem(v587, 5)
						v587.Parent = v_u_7
					end
				end
			end
		end,
		["Wind"] = function(p593, p594, p595, p596, p597)
			-- upvalues: (copy) v_u_92, (copy) v_u_7
			local _ = v_u_92[UserSettings().GameSettings.SavedQualityLevel]
			local v598 = 0
			local v599 = Instance.new("Part")
			v599.Anchored = true
			v599.CanCollide = false
			v599.Transparency = 0
			v599.BrickColor = p594
			v599.Material = "Neon"
			v599.Size = Vector3.new(0.2, 0.2, 0.2)
			v599.CFrame = p593
			v599:BreakJoints()
			local v600 = Instance.new("SpecialMesh", v599)
			v600.MeshType = "Sphere"
			v600.Scale = Vector3.new(2.5, 2.5, 2.5) * p596
			v599.Parent = v_u_7
			local v601 = game.ReplicatedStorage.Effects.Explosion1.ring:Clone()
			v601.CFrame = p593
			v601.Parent = v_u_7
			local v602 = {}
			for _ = 1, v_u_92[UserSettings().GameSettings.SavedQualityLevel] and 5 or 15 do
				local v603 = math.random(-90, 90)
				local v604 = math.rad(v603)
				local v605 = math.random(1, 8)
				local v606 = math.random(5, 10)
				local v607 = math.random(-2, 5) * 1.25
				local v608 = Instance.new("Part")
				v608.Anchored = true
				v608.CanCollide = false
				v608.Transparency = 0
				v608.BrickColor = p594
				v608.Material = "Neon"
				v608.Size = Vector3.new(0.2, 0.2, 0.2)
				v608.CFrame = p593
				v608:BreakJoints()
				local v609 = Instance.new("SpecialMesh", v608)
				v609.MeshId = "rbxassetid://168892363"
				v609.Scale = Vector3.new(0.75, 0.5, 0.9) * math.random() * 1.75 * p596
				v608.Parent = v_u_7
				v602[#v602 + 1] = {
					["part"] = v608,
					["mesh"] = v609,
					["angle"] = v604,
					["offset"] = v605,
					["speed"] = v606,
					["yoffset"] = v607,
					["scale"] = v609.Scale
				}
			end
			local v610 = 3 * p596
			local v611 = tick()
			local v612 = 0
			while tick() - v611 < p595 do
				local v613 = (tick() - v611) / p595
				v612 = v612 + 1
				local v614 = math.rad(v612)
				local v615 = math.sin(v614)
				local v616 = math.rad(v612)
				local v617 = math.cos(v616)
				v599.Transparency = v613
				v600.Scale = Vector3.new(125, 125, 125) * ((0.5 + v613) * p596)
				local v618 = v613 * p596
				v601.Mesh.Scale = Vector3.new(1, 0.01, 1) * v618
				v601.Top.ImageLabel.Size = UDim2.new(1 + v618, 0, 1 + v618, 0)
				v601.Top.ImageLabel.Position = UDim2.new(-v618 / 2, 0, -v618 / 2, 0)
				v601.Top.ImageLabel.Rotation = v612 * 2
				v601.Top.ImageLabel.ImageTransparency = v613
				v601.Bottom.ImageLabel.Size = v601.Top.ImageLabel.Size
				v601.Bottom.ImageLabel.Position = v601.Top.ImageLabel.Position
				v601.Bottom.ImageLabel.Rotation = v612 * 2
				v601.Bottom.ImageLabel.ImageTransparency = v613
				for v619, v620 in next, v602 do
					local v621 = v620.angle
					local v622 = v620.offset
					local v623 = v620.speed
					local v624 = v620.yoffset
					local v625 = v620.scale
					local v626 = v619 % 2 == 0 and 1 or -1
					local v627 = v620.part
					local v628 = CFrame.Angles
					local v629 = v612 * 1.25 * (v610 + v623 * 1.25)
					local v630 = p593 * v628(0, v626 * math.rad(v629), 0) * CFrame.new(v615 * (1.5 + v622 + p597) * (v613 + 0.25) * p596, v624 * (v613 + 0.75) * p596, v617 * (1.5 + v622 + p597) * (v613 + 0.5) * p596)
					local v631 = CFrame.Angles
					local v632 = 80 + v621 * 1.25 + v612
					v627.CFrame = v630 * v631(0, math.rad(v632), 0)
					v620.part.Transparency = v613 - 0.1
					local v633 = v620.mesh
					local v634 = v625.x
					local v635 = v625.y
					local v636 = v625.z
					v633.Scale = Vector3.new(v634, v635, v636) * (v613 + 0.25) * p596
				end
				wait(v598)
			end
			for _, v637 in next, v602 do
				v637.part:Destroy()
			end
			v599:Destroy()
			v601:Destroy()
		end,
		["WindGust"] = function(p638, p639)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v640 = v_u_8.ease.out.quad
			local v641 = {}
			for _ = 1, 2 do
				local v642 = Instance.new("Part")
				v642.BrickColor = BrickColor.new("White")
				v642.Material = "Neon"
				v642.TopSurface = 0
				v642.BottomSurface = 0
				v642.Anchored = true
				v642.CanCollide = false
				v642.Size = Vector3.new(0.2, 0.2, 0.2)
				v642.Transparency = 1
				v642.CFrame = p638
				local v643 = Instance.new("SpecialMesh", v642)
				v643.MeshType = "Sphere"
				v643.Scale = Vector3.new()
				v642.Parent = v_u_7
				v641[#v641 + 1] = {
					["Part"] = v642,
					["Mesh"] = v643
				}
			end
			_G.playSound("WindHowl", p639.Head)
			local v644 = tick()
			local v645 = 2
			while tick() - v644 < v645 do
				local _ = (tick() - v644) / v645
				local v646 = v640(tick() - v644, 0, 1, v645)
				local v647 = v640(tick() - v644, 0, 1, v645)
				local v648 = v640(tick() - v644, 30, -20, v645)
				local v649 = v640(tick() - v644, 25, -20, v645)
				for v650, v651 in next, v641 do
					local v652 = v650 == 1 and v646 and v646 or v647
					local v653 = v650 == 1 and v648 and v648 or v649
					v651.Part.Transparency = v652
					v651.Mesh.Scale = Vector3.new(v653, v653, v653) / 0.2
				end
				wait(0)
			end
			wait(0.26785714285714285)
			local v654 = game.ReplicatedStorage.Effects.Explosion1.ring:Clone()
			v654.CFrame = p638 * CFrame.new(0, 20, 0)
			v654.Parent = v_u_7
			local v655 = {}
			for v656 = 1, 4 do
				local v657 = Instance.new("Part", v_u_7)
				v657.Anchored = true
				v657.CanCollide = false
				v657.Transparency = 1
				v657.Material = "Neon"
				v657.BrickColor = BrickColor.new("White")
				v657.Size = Vector3.new(0.2, 0.2, 0.2)
				v657.CFrame = p638
				v657:BreakJoints()
				local v658 = Instance.new("SpecialMesh", v657)
				v658.MeshId = "rbxassetid://1051557"
				v655[v656] = {
					["Part"] = v657,
					["Mesh"] = v658
				}
			end
			_G.playSound("Wind", p639.Head)
			_G.playSound("WindHowl", p639.Head)
			_G.playSound("WindSplosion2", p639.Head)
			_G.playSound("WindSplosion2", p639.Head)
			_G.playSound("Explosion", p639.Head)
			local v659 = tick()
			local v660 = 5
			while tick() - v659 < v660 do
				local v661 = (tick() - v659) / v660
				local v662 = v661 * 60
				local v663 = v640(tick() - v659, 0.25, 1, v660)
				local v664 = v640(tick() - v659, 0.1, 1, v660)
				local v665 = v640(tick() - v659, 50, 200, v660)
				local v666 = v640(tick() - v659, 50, 180, v660)
				local v667 = v661 * 20
				local v668 = v640(tick() - v659, 10, 240, v660)
				local v669 = v640(tick() - v659, 800, -750, v660)
				v654.Mesh.Scale = Vector3.new(1, 0.01, 1) * v667
				v654.Top.ImageLabel.Size = UDim2.new(1 + v667, 0, 1 + v667, 0)
				v654.Top.ImageLabel.Position = UDim2.new(-v667 / 2, 0, -v667 / 2, 0)
				v654.Top.ImageLabel.Rotation = v662 * 2
				v654.Top.ImageLabel.ImageTransparency = v661
				v654.Bottom.ImageLabel.Size = v654.Top.ImageLabel.Size
				v654.Bottom.ImageLabel.Position = v654.Top.ImageLabel.Position
				v654.Bottom.ImageLabel.Rotation = v662 * 2
				v654.Bottom.ImageLabel.ImageTransparency = v661
				for v670, v671 in next, v655 do
					local v672 = v670 == 1 and v670 / 2 or -v670 / 2
					v671.Part.CFrame = p638 * CFrame.Angles(0, v661 * 3.141592653589793 * 12, 0)
					v671.Part.Transparency = v661
					local v673 = v671.Mesh
					local v674 = v668 * v672
					local v675 = v668 * v672
					v673.Scale = Vector3.new(v674, v669, v675)
				end
				for v676, v677 in next, v641 do
					local v678 = v676 == 1 and v663 and v663 or v664
					local v679 = v676 == 1 and v665 and v665 or v666
					v677.Part.Transparency = v678
					v677.Mesh.Scale = Vector3.new(v679, v679, v679) / 0.2
				end
				wait(0)
			end
			v654:Destroy()
			for _, v680 in next, v641 do
				v680.Part:Destroy()
			end
			for _, v681 in next, v655 do
				v681.Part:Destroy()
			end
		end,
		["Trail"] = function(p682, p683, p684, p685, p686, p687)
			-- upvalues: (copy) v_u_7
			local v688 = math.random
			local v689 = Vector3.new
			local v690 = CFrame.new
			local v691 = CFrame.Angles
			local v692 = p682.CFrame
			local v693 = p682.CFrame
			local v694 = tick()
			local v695 = p685 or 0.4
			local v696 = {}
			local v697 = p684 or 1
			while p682.Parent ~= nil do
				local v698 = tick() - v694
				local v699 = p682:GetRenderCFrame()
				local v700 = v689(p682.Size.x, p682.Size.y, p682.Size.z) * v697
				local v701 = v699 * v690(v688() * v700.x - v700.x / 2, v688() * v700.y - v700.y / 2, v688() * v700.z - v700.z / 2)
				local v702 = (v701.p - v692.p).magnitude
				if (v699.p - v693.p).magnitude > 1 then
					local v703 = Instance.new("Part", v_u_7)
					v703.TopSurface = 0
					v703.BottomSurface = 0
					v703.FormFactor = 3
					v703.Anchored = true
					v703.CanCollide = false
					v703.BrickColor = p683
					v703.Material = p682.Material
					v703.Name = "Trail"
					v703.Size = Vector3.new(1, 1, 1)
					v703.CFrame = v690((v692.p + v701.p) / 2, v701.p) * v691(1.570796, 0, 0)
					local v704 = Instance.new("CylinderMesh", v703)
					v704.Scale = v689(v695, v702, v695)
					table.insert(v696, v704)
				end
				for v705, v706 in next, v696 do
					if v706.Parent.Transparency >= 1 then
						v706.Parent:Destroy()
						table.remove(v696, v705)
					else
						v706.Scale = v706.Scale - p686 * (v698 / 0.03)
						if v706.Scale.Z <= 0 then
							v706.Parent.Transparency = 1
						end
						local v707 = v706.Parent
						local v708 = v706.Parent.Transparency + p687 * (v698 / 0.03)
						v707.Transparency = math.min(1, v708)
					end
				end
				v694 = tick()
				wait(0)
				v692 = v701
				v693 = v699
			end
			for _, v709 in pairs(v696) do
				v709.Parent:Destroy()
			end
		end,
		["DragonTrail"] = function(p710, p711, p712, p713, p714, p715)
			-- upvalues: (copy) v_u_91, (copy) v_u_7
			local v716 = math.random
			local v717 = Vector3.new
			local v718 = CFrame.new
			local v719 = CFrame.Angles
			local v720 = p712 or 1
			local v721 = p713 or 0.4
			local v722 = p710:GetRenderCFrame()
			local v723 = p710:GetRenderCFrame()
			local v724 = {}
			local v725 = tick()
			local v726 = v719(1.570796, 0, 0)
			local v727
			if v_u_91[UserSettings().GameSettings.SavedQualityLevel] then
				v727 = 0
			else
				v727 = 0.1
			end
			while true do
				local v728 = tick() - v725
				if p710.Parent and p710.Parent.Parent then
					local v729 = p710:GetRenderCFrame()
					local v730 = v717(p710.Size.x, p710.Size.y, p710.Size.z) * v720
					local v731 = v729 * v718(v716() * v730.x - v730.x / 2, v716() * v730.y - v730.y / 2, v716() * v730.z - v730.z / 2)
					local _ = (v722.p - v731.p).unit
					local v732 = (v731.p - v722.p).magnitude
					if (v729.p - v723.p).magnitude > 1 then
						local v733 = Instance.new("Part", v_u_7)
						v733.TopSurface = 0
						v733.BottomSurface = 0
						v733.FormFactor = 3
						v733.Anchored = true
						v733.CanCollide = false
						v733.BrickColor = p711
						v733.Material = p710.Material
						v733.Name = "Trail"
						v733.Size = Vector3.new(1, 1, 1)
						v733.CFrame = v718((v722.p + v731.p) / 2, v731.p) * v726
						local v734 = Instance.new("CylinderMesh", v733)
						v734.Scale = v717(v721, v732 + 1, v721)
						table.insert(v724, v734)
						v723 = v729
						v722 = v731
					else
						v723 = v729
						v722 = v731
					end
				else
					for v735, v736 in next, v724 do
						if v736.Parent.Transparency >= 1 then
							v736.Parent:Destroy()
							table.remove(v724, v735)
						else
							v736.Scale = v736.Scale - p714 * (v728 / 0.03)
							if v736.Scale.Z <= 0 then
								v736.Parent.Transparency = 1
							end
							local v737 = v736.Parent
							local v738 = v736.Parent.Transparency + p715 * (v728 / 0.03)
							v737.Transparency = math.min(1, v738)
						end
					end
					if #v724 <= 0 then
						for _, v739 in pairs(v724) do
							v739.Parent:Destroy()
						end
						return
					end
				end
				v725 = tick()
				wait(v727)
			end
		end,
		["WaterTrail"] = function(p740, p741, p742, p743, p744, p745)
			-- upvalues: (copy) v_u_7
			local v746 = math.random
			local v747 = Vector3.new
			local v748 = CFrame.new
			local _ = CFrame.Angles
			local v749 = p740.CFrame
			local v750 = p740.CFrame
			local v751 = tick()
			local v752 = {}
			local v753 = p743 or 0.4
			local v754 = p742 or 1
			while p740.Parent ~= nil or #v752 > 0 do
				local v755 = tick() - v751
				local v756 = p740:GetRenderCFrame()
				local v757 = v747(p740.Size.x, p740.Size.y, p740.Size.z) * v754
				local v758 = v756 * v748(v746() * v757.x - v757.x / 2, v746() * v757.y - v757.y / 2, v746() * v757.z - v757.z / 2)
				local _ = (v749.p - v758.p).unit
				local _ = (v758.p - v749.p).magnitude
				if (v756.p - v750.p).magnitude > 1 then
					local v759 = Instance.new("Part", v_u_7)
					v759.TopSurface = 0
					v759.BottomSurface = 0
					v759.FormFactor = 3
					v759.Anchored = true
					v759.CanCollide = false
					v759.BrickColor = p741
					v759.Material = p740.Material
					v759.Name = "Trail"
					v759.Size = Vector3.new(1, 1, 1)
					v759.CFrame = v748((v749.p + v758.p) / 2, v758.p)
					local v760 = Instance.new("SpecialMesh", v759)
					v760.Scale = v747(v753, 0.1, v753)
					v760.MeshType = "Sphere"
					table.insert(v752, v760)
				end
				for v761, v762 in next, v752 do
					if v762.Parent.Transparency >= 1 then
						v762.Parent:Destroy()
						table.remove(v752, v761)
					else
						v762.Scale = v762.Scale - p744 * (v755 / 0.03)
						if v762.Scale.Z <= 0 then
							v762.Parent.Transparency = 1
						end
						local v763 = v762.Parent
						local v764 = v762.Parent.Transparency + p745 * (v755 / 0.03)
						v763.Transparency = math.min(1, v764)
					end
				end
				v751 = tick()
				wait(0)
				v750 = v756
				v749 = v758
			end
			for _, v765 in pairs(v752) do
				v765.Parent:Destroy()
			end
		end,
		["FastTrail"] = function(p766, p767, p768, p769, p770, p771, p772, p773, p774)
			-- upvalues: (copy) v_u_91, (copy) v_u_130, (copy) v_u_31
			if p766 and (p766.Parent and (v_u_91[UserSettings().GameSettings.SavedQualityLevel] or (v_u_130.CFrame.p - p766.Position).magnitude <= 800)) then
				local v775 = Instance.new("Part")
				v775.TopSurface = 0
				v775.BottomSurface = 0
				v775.BrickColor = p767
				v775.Material = p768
				v775.Transparency = p771
				v775.CFrame = p766.CFrame
				v775.Anchored = true
				v775.CanCollide = false
				v775.Size = Vector3.new(1, 1, 1)
				local v776 = Instance.new("SpecialMesh", v775)
				v776.Name = "Mesh"
				v776.Scale = Vector3.new(p769, p769, 0)
				v776.MeshType = "Brick"
				local v777 = v_u_31
				local v778 = {
					["trails"] = {},
					["clone"] = v775,
					["track"] = p766,
					["start"] = tick(),
					["counter"] = 0,
					["last"] = v775.CFrame.p,
					["duration"] = p774,
					["size"] = p769,
					["end_size"] = p770,
					["trans"] = p771,
					["end_trans"] = p772,
					["rate"] = p773
				}
				table.insert(v777, v778)
			end
		end,
		["SmallExplosion"] = function(p779, p780, p781, p782, p783, p784, p785, p786, p787, p788)
			-- upvalues: (copy) v_u_92, (copy) v_u_130, (copy) v_u_10, (copy) v_u_7, (copy) v_u_8, (copy) v_u_56
			if not v_u_92[UserSettings().GameSettings.SavedQualityLevel] or (v_u_130.CFrame.p - p779).magnitude <= 550 + p784 + p783 then
				local v789 = {}
				for v790 = 1, p781 and p780 and 2 or 1 do
					local v791 = Instance.new("Part")
					v791.TopSurface = 0
					v791.BottomSurface = 0
					v791.BrickColor = v790 == 1 and p780 and p780 or p781
					v791.Transparency = v790 == 1 and 0 or 0.25
					v791.Anchored = true
					v791.CanCollide = false
					v791.Size = Vector3.new(1, 1, 1)
					v791.CFrame = CFrame.new(p779)
					local v792 = Instance.new("SpecialMesh", v791)
					v792.Scale = Vector3.new()
					v792.MeshType = "Sphere"
					v789[#v789 + 1] = {
						["Part"] = v791,
						["Mesh"] = v792
					}
				end
				if p785 then
					local v_u_793 = Instance.new("Part")
					v_u_10:AddItem(v_u_793, 15)
					v_u_793.Transparency = 1
					v_u_793.Anchored = true
					v_u_793.CanCollide = false
					v_u_793.Size = Vector3.new()
					v_u_793.CFrame = CFrame.new(p779)
					v_u_793.Parent = v_u_7
					_G.playSound(p785, v_u_793)
					v_u_793.ChildRemoved:connect(function()
						-- upvalues: (copy) v_u_793
						v_u_793:Destroy()
					end)
				end
				for _, v794 in next, v789 do
					v794.Part.Material = p788 or "Neon"
					v794.Part.Parent = v_u_7
				end
				local v795 = v_u_8.ease[p786]
				if v795 then
					v795 = v_u_8.ease[p786][p787]
				end
				local v796 = v_u_56
				local v797 = {
					["parts"] = v789,
					["start"] = tick(),
					["duration"] = p782,
					["startSize"] = Vector3.new(1, 1, 1) * p783 or Vector3.new(),
					["finalSize"] = p784 or 35,
					["ease"] = v795
				}
				table.insert(v796, v797)
			end
		end,
		["DamageGui"] = function(p798, p799, p800)
			-- upvalues: (copy) v_u_91, (copy) v_u_130, (copy) v_u_17, (copy) v_u_57, (copy) v_u_20, (copy) v_u_7
			local v801 = v_u_91[UserSettings().GameSettings.SavedQualityLevel]
			if (v_u_17 and (v801 and 100 or 50) or 300) >= (v_u_130.CFrame.p - p799.Position).magnitude and (not v_u_17 or (v801 and 75 or 25) >= #v_u_57) then
				local v802 = p800 * 10
				local v803 = Color3.new(1, 1, 1)
				if p798 == "HealEffect" then
					v803 = Color3.new(0.23529411764705882, 1, 0.23529411764705882)
				elseif v802 >= 300 then
					v803 = Color3.new(1, 0, 0)
				elseif v802 >= 100 then
					v803 = Color3.new(1, 0.8705882352941177, 0.20784313725490197)
				end
				local v804 = game.ReplicatedStorage.DamagePart:Clone()
				v804.BillboardGui.Icon.Image = p798 == "HealEffect" and "rbxassetid://536296424" or v_u_20[p798].Image
				local v805 = v804.BillboardGui.Icon.Label
				local v806 = p798 == "HealEffect" and "+" or "-"
				local v807 = 0.5 + v802
				v805.Text = v806 .. math.floor(v807) .. " HP"
				v804.BillboardGui.Icon.Label.TextColor3 = v803
				local v808 = p799.CFrame
				local v809 = 10 * math.random() - 5
				local v810 = 10 * math.random() - 5
				v804.CFrame = v808 + Vector3.new(v809, 5, v810)
				v804.Parent = v_u_7
				local v811 = v_u_57
				local v812 = {
					["part"] = v804,
					["start"] = tick()
				}
				table.insert(v811, v812)
			end
		end,
		["FlareGui"] = function(p813, p814)
			-- upvalues: (copy) v_u_32
			local v815 = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
			local v816 = Instance.new("Frame", v815)
			v816.BackgroundTransparency = 0
			v816.BackgroundColor3 = p813
			v816.Position = UDim2.new(-0.25, 0, -0.25, 0)
			v816.Size = UDim2.new(1.5, 0, 1.5, 0)
			local v817 = v_u_32
			local v818 = {
				["gui"] = v815,
				["frame"] = v816,
				["duration"] = p814,
				["start"] = tick()
			}
			table.insert(v817, v818)
		end,
		["RingSpam"] = function(p_u_819, p_u_820, p_u_821, p_u_822, p_u_823, p824)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			local function v_u_840(p825)
				-- upvalues: (copy) p_u_821, (ref) v_u_10, (copy) p_u_823, (copy) p_u_820, (copy) p_u_819, (ref) v_u_7, (copy) p_u_822
				local v826 = {}
				for v827 = 1, p_u_821 and 2 or 1 do
					local v828 = game.ReplicatedStorage.Effects.Ring:Clone()
					v_u_10:AddItem(v828, p_u_823 + 2)
					v828.BrickColor = v827 == 1 and p_u_820 or p_u_821
					v828.CFrame = p_u_819.CFrame * p825
					v826[#v826 + 1] = v828
				end
				for _, v829 in next, v826 do
					v829.Parent = v_u_7
				end
				local v830 = tick()
				while tick() - v830 < p_u_823 do
					local v831 = (tick() - v830) / p_u_823
					for v832, v833 in next, v826 do
						local v834 = v832 == 1 and 1 or 1.02
						local v835 = v832 == 1 and 1 or 2
						local v836 = 5 * v834
						local v837 = 5 * v834
						local v838 = 0.25 * v835
						v833.Size = Vector3.new(v836, v837, v838) * p_u_822 * v831
						v833.CFrame = p_u_819.CFrame * p825
						v833.Transparency = v832 == 1 and v831 and v831 or v831 + 0.1
					end
					game:service("RunService").RenderStepped:wait()
				end
				for _, v839 in next, v826 do
					v839:Destroy()
				end
			end
			local v841 = 0
			while p_u_819.Parent do
				if p824 < tick() - v841 then
					spawn(function()
						-- upvalues: (copy) v_u_840
						local v842 = v_u_840
						local v843 = CFrame.Angles
						local v844 = math.random(-90, 90)
						local v845 = math.rad(v844)
						local v846 = math.random(-90, 90)
						local v847 = math.rad(v846)
						local v848 = math.random(-90, 90)
						v842(v843(v845, v847, (math.rad(v848))))
					end)
					v841 = tick()
				end
				wait(0)
			end
		end,
		["Snowsplosion"] = function(p849, p850, p851, p852, p853)
			-- upvalues: (copy) v_u_91, (copy) v_u_10, (copy) v_u_7, (copy) v_u_60
			if v_u_91[UserSettings().GameSettings.SavedQualityLevel] then
				local v854 = {}
				for _ = 1, math.random(4, 7) do
					local v855 = Instance.new("Part")
					v_u_10:AddItem(v855, p852 + 1)
					v855.TopSurface = 0
					v855.BottomSurface = 0
					v855.Anchored = true
					v855.CanCollide = false
					v855.BrickColor = p853 or BrickColor.new("White")
					v855.Material = "Neon"
					v855.Size = Vector3.new(0.2, 0.2, 0.2)
					v855.CFrame = CFrame.new(p849) * CFrame.Angles(0, 6.283185307179586 * math.random(), 6.283185307179586 * math.random()) * CFrame.new(0.05, 0, 0)
					local v856 = Instance.new("SpecialMesh", v855)
					v856.MeshType = "Sphere"
					local v857 = 1 * p850
					local v858 = 0.5 * p850
					local v859 = 0.5 * p850
					v856.Scale = Vector3.new(v857, v858, v859) / 0.2
					v855.Parent = v_u_7
					v854[#v854 + 1] = {
						["Part"] = v855,
						["Mesh"] = v856,
						["Scale"] = v856.Scale,
						["CF"] = v855.CFrame
					}
				end
				v_u_60[#v_u_60 + 1] = {
					["Parts"] = v854,
					["Speed"] = p851,
					["Thickness"] = p850,
					["start"] = tick(),
					["duration"] = p852
				}
			end
		end,
		["ShardEffect"] = function(p860, p861, p862, p863)
			-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_58
			local v864 = math.random(1, 2) == 1 and 1 or -1
			local v865 = math.random(-30, -15)
			local v866 = math.random(-4, 10)
			local v867 = math.random(p862, p862 + 2) + math.random()
			local v868 = game.ReplicatedStorage.Effects["Ice Shard"]:Clone()
			v_u_10:AddItem(v868, 10)
			if type(p861) == "table" then
				v868.BrickColor = p861[math.random(1, #p861)]
			else
				v868.BrickColor = p861 or v868.BrickColor
			end
			v868.Anchored = true
			v868.CanCollide = false
			v868.Size = Vector3.new(0.35, 1, 0.1) * v867
			v868.CFrame = CFrame.new(p860)
			v868.Parent = v_u_7
			v_u_58[#v_u_58 + 1] = {
				["Origin"] = p860,
				["Part"] = v868,
				["Direction"] = v864,
				["xOffset"] = v865,
				["yOffset"] = v866,
				["angle"] = 0,
				["duration"] = p863,
				["start"] = tick()
			}
		end,
		["SnowPile"] = function(p869, p870, p_u_871)
			-- upvalues: (copy) v_u_6, (copy) v_u_9, (copy) v_u_10, (copy) v_u_7
			local v872 = Vector3.new(1, 1, 1) * p870
			local v873 = Region3.new(p869 - v872 / 2, p869 + v872 / 2)
			local v874 = workspace:FindPartsInRegion3WithIgnoreList(v873, { v_u_6, game.Players.LocalPlayer.Character })
			local v_u_875 = {}
			local function v879(p876)
				-- upvalues: (ref) v_u_9, (ref) v_u_10, (copy) p_u_871, (ref) v_u_7, (copy) v_u_875
				if p876.Parent == v_u_9 and p876.Size.magnitude > 30 then
					local v877 = Instance.new("Part")
					v_u_10:AddItem(v877, p_u_871 + 10)
					v877.TopSurface = 0
					v877.BottomSurface = 0
					v877.Anchored = true
					v877.CanCollide = false
					v877.BrickColor = BrickColor.new("Mid gray")
					v877.Material = "Sand"
					v877.Size = Vector3.new(0.2, 0.2, 0.2)
					v877.CFrame = p876.CFrame
					local v878 = Instance.new("SpecialMesh", v877)
					v878.MeshType = "Brick"
					v878.Scale = p876.Size / 0.2 + Vector3.new(1, 1, 1)
					v877.Parent = v_u_7
					v_u_875[#v_u_875 + 1] = v877
				end
			end
			for _, v880 in next, v874 do
				v879(v880)
			end
			local v881 = tick()
			while tick() - v881 < 0.5 do
				if #v_u_875 <= 0 then
					return
				end
				local v882 = (tick() - v881) / 0.5
				for _, v883 in next, v_u_875 do
					v883.Transparency = 1 - v882
				end
				wait(0)
			end
			wait(p_u_871)
			local v884 = tick()
			while tick() - v884 < 1 do
				if #v_u_875 <= 0 then
					return
				end
				local v885 = (tick() - v884) / 1
				for _, v886 in next, v_u_875 do
					v886.Transparency = v885
				end
				wait(0)
			end
			for _, v887 in next, v_u_875 do
				v887:Destroy()
			end
		end,
		["Tracker"] = function(p888, p889, p890)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v891 = v_u_8.ease.out.quad
			local v892 = {}
			for v893 = 1, p890 and 2 or 1 do
				local v894 = Instance.new("Part")
				v894.BrickColor = v893 == 1 and p889 and p889 or p890
				v894.Material = "Neon"
				v894.TopSurface = 0
				v894.BottomSurface = 0
				v894.Anchored = true
				v894.CanCollide = false
				v894.Size = Vector3.new(0.2, 0.2, 0.2)
				v894.Transparency = v893 == 1 and 0 or 0.1
				v894.CFrame = CFrame.new(p888)
				local v895 = Instance.new("CylinderMesh", v894)
				v895.Scale = Vector3.new(1, 10000, 1)
				v894.Parent = v_u_7
				v892[#v892 + 1] = {
					["Part"] = v894,
					["Mesh"] = v895
				}
			end
			local v896 = tick()
			while tick() - v896 < 3 do
				local v897 = v891(tick() - v896, 0, 1, 3)
				local v898 = v891(tick() - v896, 0, 15, 3)
				for v899, v900 in next, v892 do
					local v901 = v899 == 1 and v898 and v898 or v898 * 1.5
					v900.Part.Transparency = v899 == 1 and v897 and v897 or v897 + 0.1
					local v902 = v900.Mesh
					local v903 = 1 * v901
					local v904 = 1 * v901
					v902.Scale = Vector3.new(v903, 10000, v904) / 0.2
				end
				wait(0)
			end
			for _, v905 in next, v892 do
				v905.Part:Destroy()
			end
		end,
		["ShardRotation"] = function(p906, p907, p908, p909, p910, p911)
			-- upvalues: (copy) v_u_7, (copy) v_u_59
			local v912 = {}
			for _ = 1, p907 do
				local v913 = game.ReplicatedStorage.Effects.Shard:Clone()
				v913.Material = p906.Material
				v913.BrickColor = p911 or p906.BrickColor
				v913.Transparency = p906.Transparency
				v913.Size = p908
				v913.CFrame = CFrame.new(p906.Position)
				v913.Parent = v_u_7
				v912[#v912 + 1] = v913
			end
			v_u_59[#v_u_59 + 1] = {
				["Part"] = p906,
				["Radius"] = p910,
				["Parts"] = v912,
				["Speed"] = p909,
				["Angle"] = 0
			}
		end,
		["NightmareLighting"] = function(p914)
			local v915 = {}
			for _, v916 in pairs(game.Lighting:GetChildren()) do
				if v916.Name == "NightmareLighting" then
					table.insert(v915, v916)
				end
			end
			if #v915 < 4 then
				local v917 = Instance.new("ColorCorrectionEffect")
				v917.Name = "NightmareLighting"
				v917.Enabled = true
				v917.Saturation = -2
				v917.Parent = game.Lighting
				wait(p914)
				v917:Destroy()
			end
		end,
		["WorldLighting"] = function(p918)
			local v919 = {}
			for _, v920 in pairs(game.Lighting:GetChildren()) do
				if v920.Name == "WorldLighting" then
					table.insert(v919, v920)
				end
			end
			if #v919 < 4 then
				local v921 = Instance.new("ColorCorrectionEffect")
				v921.Name = "WorldLighting"
				v921.Enabled = true
				v921.Saturation = -1
				v921.Parent = game.Lighting
				wait(p918)
				v921:Destroy()
			end
		end,
		["SkeletonEffect"] = function(p922, p923)
			local v924 = game.ReplicatedStorage.Models.NightmareSkeleton:Clone()
			v924.Parent = p923.HumanoidRootPart
			for _, v925 in pairs(v924:GetChildren()) do
				if v925:IsA("BasePart") and (p923:FindFirstChild(v925.Name) and v925.Name ~= "HumanoidRootPart") then
					local v926 = p923:FindFirstChild(v925.Name)
					v926.Transparency = 1
					local v927 = Instance.new("Weld", v925)
					v925.CFrame = v926.CFrame
					v927.Part0 = v926
					v927.Part1 = v925
					v927.C0 = v926.CFrame:inverse() * v925.CFrame
				end
			end
			wait(p922)
			v924:Destroy()
			for _, v928 in pairs(p923:GetChildren()) do
				if v928:IsA("BasePart") and v928.Name ~= "HumanoidRootPart" then
					v928.Transparency = 0
				end
			end
		end,
		["SkeletonEffect2"] = function(p929, p930)
			local v931 = game.ReplicatedStorage.Models.NightmareSkeleton
			for _, v932 in pairs(v931:GetChildren()) do
				if v932:IsA("BasePart") and (p930:FindFirstChild(v932.Name) and v932.Name ~= "HumanoidRootPart") then
					local v933 = p930:FindFirstChild(v932.Name)
					local v934 = v932.Mesh:Clone()
					local v935 = game.ReplicatedStorage.Effects.MonsterTrail:Clone()
					v935.LightEmission = -2
					v935.Parent = v933
					for _, v936 in pairs(v933:GetChildren()) do
						if v936:IsA("FileMesh") then
							v936.Parent = v934
						end
					end
					v934.Parent = v933
				end
			end
			wait(p929)
			for _, v937 in pairs(p930:GetChildren()) do
				if v937:IsA("BasePart") and (v937.Name ~= "HumanoidRootPart" and v937:FindFirstChild("Mesh")) then
					local v938 = v937.Mesh
					if v937:FindFirstChild("MonsterTrail") then
						v937.MonsterTrail:Destroy()
					end
					for _, v939 in pairs(v937.Mesh:GetChildren()) do
						v939.Parent = v937
					end
					v938:Destroy()
				end
			end
		end,
		["ExplosionLightning"] = function(p940, p941, _)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			for _ = 1, 5 do
				local v942 = game.ReplicatedStorage.Effects.ExplosionLightning:Clone()
				local v943 = Instance.new("Part")
				v943.Anchored = true
				v943.CanCollide = false
				v943.Transparency = 1
				v_u_10:AddItem(v943, p941)
				v943.CFrame = CFrame.new(p940)
				v942.Parent = v943
				v943.Parent = v_u_7
			end
		end,
		["SkeletonSpawn"] = function(p944, p945, p946, p947)
			-- upvalues: (copy) v_u_10
			local v948 = tick()
			local v949 = 1
			while tick() - v948 < p945 do
				v949 = v949 + 1
				local v_u_950 = Instance.new("Part")
				v_u_10:AddItem(v_u_950, p945)
				if math.fmod(v949, 2) == 0 then
					v_u_950.BrickColor = BrickColor.new("Really black")
				else
					v_u_950.BrickColor = BrickColor.new("Black")
				end
				v_u_950.Anchored = true
				v_u_950.CanCollide = false
				v_u_950.Parent = p946
				v_u_950.Position = p944.p
				v_u_950.CFrame = p944 * CFrame.Angles(1.5707963267948966, 0, 0)
				local v951 = Instance.new("CylinderMesh", v_u_950)
				local v952 = math.random(1, 10) / 10
				v951.Scale = Vector3.new(1, v952, 1)
				local v_u_953 = v951.Scale
				coroutine.resume(coroutine.create(function()
					-- upvalues: (copy) v_u_950, (copy) v_u_953
					local v954 = tick()
					while tick() - v954 < 0.4 do
						local v955 = (tick() - v954) * 20 * 4
						if v_u_950:FindFirstChild("Mesh") then
							v_u_950.Mesh.Scale = v_u_953 + Vector3.new(v955, 0, v955)
							v_u_950.Transparency = v955 / 20
						end
						game:GetService("RunService").RenderStepped:wait()
					end
				end))
				wait(p947)
			end
		end,
		["TimeCoalesce"] = function(p956, p_u_957, p958)
			-- upvalues: (copy) v_u_7, (copy) v_u_10
			local v_u_959 = {}
			local function v_u_963(p960)
				-- upvalues: (copy) v_u_959, (copy) v_u_963
				for _, v961 in next, p960 do
					if v961:IsA("BasePart") or v961:IsA("Decal") then
						local v962 = v_u_959
						table.insert(v962, v961)
					end
					v_u_963(v961:GetChildren())
				end
			end
			v_u_963((p956:GetChildren()))
			local v964 = p956:GetModelCFrame()
			local v965 = Instance.new("Part")
			v965.Anchored = true
			v965.CanCollide = false
			v965.Size = Vector3.new(0.2, 0.2, 0.2)
			v965.Transparency = 1
			v965.CFrame = v964
			local v_u_966 = game.ReplicatedStorage.Effects[p958 and "TimeVortexC" or "TimeVortexA"]:Clone()
			local v_u_967 = game.ReplicatedStorage.Effects[p958 and "TimeVortexD" or "TimeVortexB"]:Clone()
			v_u_966.Parent = v965
			v_u_967.Parent = v965
			v965.Parent = v_u_7
			spawn(function()
				-- upvalues: (copy) p_u_957, (copy) v_u_966, (copy) v_u_967
				wait(p_u_957 / 60)
				v_u_966.Enabled = false
				v_u_967.Enabled = false
			end)
			v_u_10:AddItem(v965, p_u_957 / 40)
			local v968 = {}
			for v969, v970 in next, v_u_959 do
				if v970:IsA("BasePart") then
					v968[v969] = { v970.Transparency, v964:toObjectSpace(v970.CFrame) }
				elseif v970:IsA("Decal") then
					v968[v969] = v970.Transparency
				end
			end
			local v971 = game:GetService("RunService")
			for v972 = 1, p_u_957 do
				local v973 = CFrame.Angles
				local v974 = v972 * v972 / (6 * p_u_957)
				local v975 = v972 * math.cos(v974) / (3 * p_u_957)
				local v976 = v972 * v972 / (6 * p_u_957)
				v965.CFrame = v964 * v973(v975, 0, v972 * math.sin(v976) / (3 * p_u_957)) * CFrame.Angles(0, v972 * v972 / (4 * p_u_957), 0)
				for v977, v978 in next, v_u_959 do
					if v978:IsA("BasePart") then
						v978.Transparency = v968[v977][1] + (1 - v968[v977][1]) * (v972 / p_u_957)
						v978.CFrame = v965.CFrame * v968[v977][2]
					elseif v978:IsA("Decal") then
						v978.Transparency = v968[v977] + (1 - v968[v977]) * (v972 / p_u_957)
					end
				end
				v971.RenderStepped:Wait()
			end
		end,
		["TimeExpand"] = function(p979, p980, p981, p982)
			-- upvalues: (copy) v_u_8
			local v983 = v_u_8.ease.out.quad
			local v984 = game:GetService("RunService")
			local v985 = p979.Transparency
			local v986 = p979.Mesh
			local v987 = p981 or 1
			for v988 = 1, p980 do
				local v989 = v983(v988 / p980, 0, 1, 1)
				p979.Transparency = v985 + (1 - v985) * v989
				local v990 = v987 + v989 * p982
				local v991 = v986.Scale.Y
				local v992 = v987 + v989 * p982
				v986.Scale = Vector3.new(v990, v991, v992)
				v984.RenderStepped:Wait()
			end
		end,
		["ColumnStack"] = function(p993, p994, p995, p996)
			-- upvalues: (copy) v_u_7, (copy) v_u_10
			local v997 = Instance.new("Model")
			for v998, v999 in ipairs(p995) do
				local v1000 = Instance.new("Part")
				local v1001 = Instance.new("SpecialMesh", v1000)
				v1001.MeshType = Enum.MeshType.Sphere
				local v1002 = v999[2]
				local v1003 = v999[1]
				local v1004 = v999[2]
				v1000.Size = Vector3.new(v1002, v1003, v1004)
				v1000.TopSurface = 0
				v1000.Anchored = true
				v1000.CanCollide = false
				v1000.BottomSurface = 0
				v1000.Color = v999[4] or Color3.new()
				v1000.Material = Enum.Material.Neon
				v1000.CFrame = p993
				v1000.Parent = v997
				p995[v998] = {
					["column"] = v1000,
					["mesh"] = v1001,
					["height"] = v999[1],
					["width"] = v999[2],
					["growth"] = v999[3]
				}
			end
			v997.Parent = v_u_7
			v_u_10:AddItem(v997, p994)
			if p996 then
				_G.playSound(p996, p993.p)
			end
			local v1005 = tick()
			while tick() - v1005 < p994 do
				local v1006 = (tick() - v1005) / p994
				local v1007 = 3.141592653589793 * v1006
				local v1008 = math.sin(v1007) + 1
				for _, v1009 in next, p995 do
					local v1010 = v1006 * v1009.growth
					local v1011 = v1009.mesh
					local v1012 = v1010 + 1
					v1011.Scale = Vector3.new(v1008, v1012, v1008)
					v1009.column.Transparency = v1006
				end
				game:GetService("RunService").RenderStepped:Wait()
			end
		end,
		["PhoenixAnimate"] = function(p1013, p1014, p1015, p1016)
			-- upvalues: (copy) v_u_8, (copy) v_u_10
			if p1013:FindFirstChild("AnimateToken") then
				p1013.AnimateToken:Destroy()
			end
			local v1017 = v_u_8.ease.inout.sine
			local v1018 = Instance.new("Folder", p1013)
			v1018.Name = "AnimateToken"
			v_u_10:AddItem(v1018, p1015 + 1)
			local v1019 = tick()
			local v1020 = 0.82
			while tick() - v1019 < p1015 and (p1013:FindFirstChild("AnimateToken") == v1018 and p1013.Parent ~= nil) do
				local v1021 = tick() / p1016 % 1
				local v1022 = (v1021 + 0.82) % 1
				if v1022 < v1020 and p1013:FindFirstChild("Body") then
					_G.playSound("PhoenixFlap", p1013.Body.PhoenixLeftWing)
					_G.playSound("PhoenixFlap", p1013.Body.PhoenixRightWing)
				end
				local v1023 = v1017(v1021 > 0.3333333333333333 and (1 - v1021) / 0.6666666666666667 or v1021 / 0.3333333333333333, 0, 1, 1)
				p1014.Left.CurrentAngle = 0.7853981633974483 + v1023 * -3.141592653589793 / 2
				p1014.Right.CurrentAngle = -p1014.Left.CurrentAngle
				game:GetService("RunService").RenderStepped:Wait()
				v1020 = v1022
			end
		end,
		["PhoenixStopAnimate"] = function(p1024, p1025, p1026)
			if p1024:FindFirstChild("AnimateToken") then
				p1024.AnimateToken:Destroy()
				if p1025 and p1026 then
					p1025.Left.CurrentAngle = p1026
					p1025.Right.CurrentAngle = -p1026
				end
			end
		end,
		["FadeModel"] = function(p1027, p1028, p1029, p1030)
			-- upvalues: (copy) v_u_8
			local v1031 = {}
			if p1027 then
				local v1032 = next
				local v1033, v1034 = p1027:GetDescendants()
				for _, v1035 in v1032, v1033, v1034 do
					if v1035:IsA("BasePart") then
						v1031[v1035] = v1035.Transparency
					end
				end
				local v1036 = v_u_8.ease.out.sine
				local v1037 = tick()
				while tick() - v1037 < p1029 do
					local v1038 = v1036(tick() - v1037, 0, 1, p1029)
					for v1039, v1040 in next, v1031 do
						v1039.Transparency = v1040 + (p1028 - v1040) * v1038
					end
					game:service("RunService").RenderStepped:wait()
				end
				if p1030 then
					p1030()
				end
			end
		end,
		["AuroraExplosion"] = function(p1041, p1042, p1043, p1044, p1045, p1046)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			local v_u_1047 = {}
			local v1048 = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
			local v1049 = {
				ColorSequenceKeypoint.new(0, v1048),
				ColorSequenceKeypoint.new(0.01, p1042),
				ColorSequenceKeypoint.new(0.99, p1043),
				ColorSequenceKeypoint.new(1, v1048)
			}
			local v1050 = {}
			local function v1053(p1051, p1052)
				if p1051:IsA("Beam") then
					p1051.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, p1052), NumberSequenceKeypoint.new(1, p1052) })
				end
			end
			local function v1062(p1054, p1055)
				-- upvalues: (copy) v_u_1047
				if v_u_1047[p1054] then
					local v1056 = {}
					for _, v1057 in next, v_u_1047[p1054] do
						local v1058 = NumberSequenceKeypoint.new
						local v1059 = v1057.Time
						local v1060 = v1057.Value * p1055
						local v1061 = v1057.Envelope
						table.insert(v1056, v1058(v1059, v1060, v1061))
					end
					return NumberSequence.new(v1056)
				end
			end
			for _ = 1, 6 do
				local v1063 = game.ReplicatedStorage.Effects.Aurora:Clone()
				v1063.Color = ColorSequence.new(v1049)
				local v1064 = Instance.new("Part")
				v_u_10:AddItem(v1064, p1046)
				v1064.Anchored = true
				v1064.CanCollide = false
				v1064.Transparency = 1
				v1064.Size = Vector3.new()
				local v1065 = CFrame.new(p1041)
				local v1066 = CFrame.new
				local v1067 = math.random(-p1044, p1044)
				local v1068 = math.random(-p1044, p1044)
				local v1069 = math.random
				local v1070 = -p1044
				local v1071 = v1065 * v1066(Vector3.new(v1067, v1068, v1069(v1070, p1044)) * math.random(1, 2) * 0.25)
				local v1072 = math.random(1, 2) == 1 and -1.5707963267948966 or 1.5707963267948966 or 1
				v1064.CFrame = v1071 * CFrame.Angles(math.random() * v1072, math.random() * v1072, math.random() * v1072)
				Instance.new("Attachment", v1064)
				local v1073 = v1064:Clone()
				v_u_10:AddItem(v1073, p1046 + 2)
				local v1074 = CFrame.new(p1041)
				local v1075 = CFrame.new
				local v1076 = math.random(-p1044, p1044)
				local v1077 = math.random(-p1044, p1044)
				local v1078 = math.random
				local v1079 = -p1044
				local v1080 = v1074 * v1075(Vector3.new(v1076, v1077, v1078(v1079, p1044)) * math.random(1, 2) * 0.25)
				local v1081 = math.random(1, 2) == 1 and -1.5707963267948966 or 1.5707963267948966 or 1
				v1073.CFrame = v1080 * CFrame.Angles(math.random() * v1081, math.random() * v1081, math.random() * v1081)
				v1063.Parent = v1064
				local v1082 = v1064.Attachment
				local v1083 = v1073.Attachment
				v1063.Attachment0 = v1082
				v1063.Attachment1 = v1083
				v1053(v1063, 1)
				local v1084 = v_u_7
				v1064.Parent = v_u_7
				v1073.Parent = v1084
				table.insert(v1050, {
					["parts"] = { v1064, v1073 },
					["beam"] = v1063
				})
			end
			local v1085 = game.ReplicatedStorage.Effects.AuroraExplosion:Clone()
			local v1086 = next
			local v1087, v1088 = v1085:GetChildren()
			for _, v1089 in v1086, v1087, v1088 do
				if not v_u_1047[v1089] then
					v_u_1047[v1089] = {}
				end
				for _, v1090 in next, v1089.Size.Keypoints do
					local v1091 = v_u_1047[v1089]
					local v1092 = {
						["Time"] = v1090.Time,
						["Value"] = v1090.Value,
						["Envelope"] = v1090.Envelope
					}
					table.insert(v1091, v1092)
				end
			end
			local v1093 = next
			local v1094, v1095 = v1085:GetChildren()
			local v1096 = {}
			for _, v1097 in v1093, v1094, v1095 do
				v1097.Size = v1062(v1097, p1044 * 2)
				v1097.Color = ColorSequence.new(v1049)
				v1096[#v1096 + 1] = v1097
			end
			local v1098 = next
			local v1099, v1100 = v1085:GetChildren()
			for _, v1101 in v1098, v1099, v1100 do
				v1101.Parent = v1050[1].parts[1]
			end
			local v1102 = tick()
			local v1103 = false
			local v1104 = {}
			while tick() - v1102 < p1046 do
				game:service("RunService").RenderStepped:wait()
				local v1105 = tick() - v1102
				local v1106 = (tick() - v1102) / p1046
				math.abs(v1106)
				if not v1103 then
					for _, v1107 in next, v1096 do
						if not v1104[v1107] then
							v1104[v1107] = 0
						end
						local v1108 = 0 + (-0.01 + v1107.Rate / 60)
						local v1109 = math.floor(v1108)
						if v1108 >= 1 then
							v1108 = v1108 - v1109
						end
						if tick() - v1104[v1107] > 1 / v1107.Rate then
							v1107:Emit(v1108 + 1)
							v1104[v1107] = tick()
						end
					end
				end
				for v1110, v1111 in next, v1050 do
					local v1112 = v1110 % 2 == 0 and 1 or -1
					local v1113 = -v1112
					for _, v1114 in next, v1111.parts do
						v1114.CFrame = v1114.CFrame * CFrame.Angles(p1045 * v1112 * 1 / 60, p1045 * v1113 * 1 / 60, p1045 * v1112 * 1 / 60) * CFrame.new(0, p1045 * v1112 * 0.01, p1045 * v1113 * 0.01)
					end
					v1103 = p1046 * 0.5 < v1105 and true or v1103
					if p1046 < v1105 then
						v1053(v1111.beam, 1)
					elseif v1105 < p1046 and (p1046 * 0.9 < v1105 and p1046 * 0.1 < v1105) then
						local v1115 = (v1105 - p1046 * 0.9) / (p1046 - p1046 * 0.9)
						local v1116 = math.clamp(v1115, 0, 1)
						v1053(v1111.beam, v1116)
					elseif p1046 * 0.1 < v1105 then
						v1053(v1111.beam, 0)
					else
						local v1117 = (tick() - v1102) / (p1046 * 0.1)
						local v1118 = math.clamp(v1117, 0, 1)
						v1053(v1111.beam, 1 - v1118)
					end
				end
			end
		end,
		["AuroraSpiral"] = function(p1119, p1120, p1121, p1122, p1123)
			-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_8
			local v1124 = p1119.from
			local v1125 = p1119.to
			local v1126 = { game.ReplicatedStorage.Effects["Aura Beam Trail"]:Clone(), game.ReplicatedStorage.Effects["Aura Beam Trail"]:Clone() }
			local v1127 = p1120 or 0.25
			for v1128, v1129 in next, v1126 do
				v_u_10:AddItem(v1129, p1122 + 2)
				local v1130 = v1129.Attachment
				local v1131 = (v1128 % 2 == 0 and 1 or -1) * v1127
				v1130.Position = Vector3.new(v1131, 0, 0)
				local v1132
				if p1123 then
					v1132 = p1123.CFrame * CFrame.new(v1124) or v1124
				else
					v1132 = v1124
				end
				v1129.CFrame = v1132
				v1129.Parent = v_u_7
			end
			local v1133 = v_u_8.ease.out.sine
			local v1134 = tick()
			while tick() - v1134 < p1122 do
				local v1135 = v1133(tick() - v1134, 0, 1, p1122)
				for v1136, v1137 in next, v1126 do
					local v1138 = v1136 % 2 == 0 and 1 or -1
					local v1139 = 25.132741228718345 * v1135
					local v1140 = math.sin(v1139)
					local v1141 = 25.132741228718345 * v1135
					local v1142 = math.cos(v1141)
					if p1123 then
						v1137.CFrame = (p1123.CFrame * CFrame.new(v1124)):lerp(p1123.CFrame * CFrame.new(v1125), v1135) * CFrame.new(p1121 * v1138 * v1140, 0, p1121 * v1138 * v1142)
					else
						v1137.CFrame = v1124:lerp(v1125, v1135) * CFrame.new(p1121 * v1138 * v1140, 0, p1121 * v1138 * v1142)
					end
				end
				game:service("RunService").RenderStepped:wait()
			end
		end,
		["SingleAuroraSpiral"] = function(p1143, _, p1144, p1145)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v1146 = math.random(1, 2) == 1 and 1 or -1
			local v1147 = p1143.from
			local v1148 = p1143.to
			local v1149 = v_u_8.ease.out.sine
			local v1150 = game.ReplicatedStorage.Effects["Aura Beam Trail"]:Clone()
			v1150.Parent = v_u_7
			local v1151 = tick()
			while tick() - v1151 < p1145 do
				local v1152 = v1149(tick() - v1151, 0, 1, p1145)
				local v1153 = 25.132741228718345 * v1152
				local v1154 = math.sin(v1153)
				local v1155 = 25.132741228718345 * v1152
				local v1156 = math.cos(v1155)
				v1150.CFrame = v1147:lerp(v1148, v1152) * CFrame.new(p1144 * v1146 * v1154, 0, p1144 * v1146 * v1156)
				game:service("RunService").RenderStepped:wait()
			end
		end,
		["BodyFade"] = function(p1157, p1158, p1159, p1160, p1161)
			-- upvalues: (copy) v_u_7, (copy) v_u_28
			local v1162 = makeProp(p1157, p1158, p1159, p1161)
			v1162:GetModel().Parent = v_u_7
			local v1163 = v_u_28
			local v1164 = {
				["clone"] = v1162,
				["duration"] = p1160,
				["start"] = tick()
			}
			table.insert(v1163, v1164)
		end,
		["BorealisEffect"] = function(p1165, _, _)
			-- upvalues: (copy) v_u_63
			local v1166 = v_u_63.new()
			for _, v1167 in next, v1166.colors do
				local v1168 = math.random() * 2
				local v1169 = math.clamp(v1168, 0.5, 1)
				v1167[2] = v1167[2]:lerp(Color3.fromRGB(math.random(50, 255), math.random(50, 255), math.random(50, 225)), v1169)
			end
			v1166.position = {
				["origin"] = p1165.origin,
				["target"] = p1165.target
			}
			local v1170 = p1165.rotationIncrement
			if not v1170 then
				local v1171 = math.random(1, 2) == 1 and 1 or -1
				local v1172 = math.random(1, 5) * 0.1
				v1170 = v1171 * math.rad(v1172)
			end
			v1166.rotationIncrement = v1170
			v1166:display(p1165.duration)
		end,
		["CreateAuroraSky"] = function(p1173)
			-- upvalues: (copy) v_u_10, (copy) v_u_8, (copy) v_u_90
			if not workspace.CurrentCamera:FindFirstChild("AuroraSky") then
				local v1174 = Instance.new("ColorCorrectionEffect")
				v1174.Name = "AuroraSky"
				v_u_10:AddItem(v1174, 15)
				v1174.Parent = workspace.CurrentCamera
				local v1175 = v_u_8.ease.out.sine
				local v1176 = tick()
				local v1177 = p1173 or 1
				while tick() - v1176 < v1177 do
					local v1178 = v1175(tick() - v1176, 0, 1, v1177)
					local v1179 = v_u_90.from
					local v1180 = v_u_90.to
					local v1181 = v1179.Brightness
					v1174.Brightness = v1181 + (v1180.Brightness - v1181) * v1178
					local v1182 = v1179.Contrast
					v1174.Contrast = v1182 + (v1180.Contrast - v1182) * v1178
					local v1183 = v1179.Saturation
					v1174.Saturation = v1183 + (v1180.Saturation - v1183) * v1178
					v1174.TintColor = v1179.TintColor:lerp(v1180.TintColor, v1178)
					game:service("RunService").RenderStepped:wait()
				end
				for v1184, v1185 in next, v_u_90.to do
					v1174[v1184] = v1185
				end
			end
		end,
		["DestroyAuroraSky"] = function(p1186)
			-- upvalues: (copy) v_u_8, (copy) v_u_90
			local v1187 = workspace.CurrentCamera:FindFirstChild("AuroraSky")
			if v1187 then
				local v1188 = v_u_8.ease.out.sine
				local v1189 = tick()
				local v1190 = p1186 or 1
				while tick() - v1189 < v1190 do
					local v1191 = v1188(tick() - v1189, 0, 1, v1190)
					local v1192 = v_u_90.to
					local v1193 = v_u_90.from
					local v1194 = v1192.Brightness
					v1187.Brightness = v1194 + (v1193.Brightness - v1194) * v1191
					local v1195 = v1192.Contrast
					v1187.Contrast = v1195 + (v1193.Contrast - v1195) * v1191
					local v1196 = v1192.Saturation
					v1187.Saturation = v1196 + (v1193.Saturation - v1196) * v1191
					v1187.TintColor = v1192.TintColor:lerp(v1193.TintColor, v1191)
					game:service("RunService").RenderStepped:wait()
				end
				v1187:Destroy()
			end
		end,
		["AddSlime"] = function(p1197)
			-- upvalues: (copy) v_u_165
			p1197.lastPos = p1197.part.Position
			local v1198 = v_u_165
			table.insert(v1198, p1197)
		end,
		["RadialWave"] = function(p_u_1199, p_u_1200, p_u_1201, p_u_1202)
			-- upvalues: (copy) v_u_7
			local v_u_1203 = Instance.new("Model", v_u_7)
			local v_u_1204 = p_u_1201
			local v_u_1205 = tick()
			local v_u_1206 = 0
			local v_u_1207 = game:GetService("HttpService"):GenerateGUID()
			local v_u_1208 = 0
			game:GetService("RunService"):BindToRenderStep(v_u_1207, Enum.RenderPriority.Camera.Value - 1, function(p1209)
				-- upvalues: (copy) v_u_1205, (copy) p_u_1200, (copy) v_u_1207, (copy) v_u_1203, (ref) v_u_1208, (ref) v_u_1204, (copy) p_u_1201, (copy) p_u_1202, (ref) v_u_1206, (copy) p_u_1199
				if p_u_1200 <= tick() - v_u_1205 then
					game:GetService("RunService"):UnbindFromRenderStep(v_u_1207)
					v_u_1203:Destroy()
				end
				local v1210 = 0
				v_u_1208 = v_u_1208 + p1209
				while v_u_1208 > 0.015 do
					v_u_1208 = v_u_1208 - 0.015
					v1210 = v1210 + 1
				end
				if v1210 ~= 0 then
					for _ = 1, v1210 do
						local v1211 = (tick() - v_u_1205) / p_u_1200
						v_u_1204 = p_u_1201 + p_u_1202 * v1211
						if v_u_1206 == 0 then
							local v1212 = game.ReplicatedStorage.Effects.Sound.RadialWave:Clone()
							local v1213 = v_u_1204 * 2.057142857142857 * v1211
							local v1214 = v_u_1204 * 2.057142857142857 * v1211
							v1212.Size = Vector3.new(v1213, 4, v1214)
							v1212.CFrame = p_u_1199
							v1212.Parent = v_u_1203
							v1212.Transparency = v1211 * v1211
						end
						local v1215 = next
						local v1216, v1217 = v_u_1203:GetChildren()
						for _, v1218 in v1215, v1216, v1217 do
							v1218.Transparency = v1218.Transparency + 0.1
							if v1218.Transparency > 1 then
								v1218:Destroy()
							end
						end
						v_u_1206 = (v_u_1206 + 1) % 1
					end
				end
			end)
		end,
		["RuptureRing"] = function(p1219)
			-- upvalues: (copy) v_u_7
			local v1220 = CFrame.new(p1219) * CFrame.Angles(math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2)
			local v_u_1221 = game.ReplicatedStorage.Effects.ChaosSlash2:Clone()
			v_u_1221.Mesh.Scale = Vector3.new(0.008, 0.028, 0.016)
			v_u_1221.Transparency = 0
			v_u_1221.CFrame = v1220
			v_u_1221.Parent = v_u_7
			local v_u_1222 = v_u_1221.Mesh.Scale
			v_u_1221:GetPropertyChangedSignal("Transparency"):Connect(function()
				-- upvalues: (copy) v_u_1221, (copy) v_u_1222
				v_u_1221.Mesh.Scale = v_u_1222:Lerp(Vector3.new(0.028, 0.098000005, 0.056), v_u_1221.Transparency)
			end)
			local v1223 = {
				["CFrame"] = v1220 * CFrame.new(12, 0, 0),
				["Transparency"] = 1
			}
			local v1224 = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local v1225 = game:GetService("TweenService"):Create(v_u_1221, v1224, v1223)
			v1225.Completed:Connect(function()
				-- upvalues: (copy) v_u_1221
				v_u_1221:Destroy()
			end)
			v1225:Play()
		end,
		["SoundWaves"] = function(p1226, p1227, p1228, p1229, p1230, p1231, p1232, p1233)
			-- upvalues: (copy) v_u_7, (copy) v_u_10
			local v1234 = Instance.new("Model", v_u_7)
			v_u_10:AddItem(v1234, 10)
			local v1235 = tick()
			local v1236 = 0
			local v1237 = p1233 or 4
			local v1238 = p1232 or 0.75
			local v1239 = p1230 or 4
			local v1240 = p1229 or 5
			while v1236 == 0 or v1234:FindFirstChild("Ring") do
				local v1241 = tick()
				local v1242 = (v1241 - v1235) / v1238
				local v1243 = next
				local v1244, v1245 = v1234:GetChildren()
				for _, v1246 in v1243, v1244, v1245 do
					local v1247 = v1246.Size
					local v1248 = v1235 * 4 * 3.141592653589793
					local v1249 = math.cos(v1248)
					local v1250 = v1241 * 4 * 3.141592653589793
					v1246.Size = v1247 + Vector3.new(1, 0, 1) * ((p1231 or 0.6) + v1239 * (v1249 - math.cos(v1250)))
					v1246.Transparency = v1246.Transparency + v1242
				end
				if p1226.Parent and (p1226.Parent.Parent and v1236 == 0) then
					local v1251 = game:GetService("ReplicatedStorage").Effects.Sound.Ring:Clone()
					v1251.Size = Vector3.new(v1240, 0.5, v1240)
					v1251.CFrame = CFrame.new(p1226.Position) * p1227
					v1251.Color = p1226.Color
					v1251.Parent = v1234
					_G.playSound(p1228 == 1 and "SoundEchoPOW2" or (p1228 == 2 and "SoundEchoSizzle2" or "SoundEchoZap2"), v1251)
					v_u_10:AddItem(v1251, v1238 + 0.2)
				end
				v1236 = (v1236 + 1) % v1237
				game:GetService("RunService").RenderStepped:Wait()
				v1235 = v1241
			end
			v1234:Destroy()
		end,
		["SoundEchoExplode"] = function(p_u_1252, p_u_1253, _, p_u_1254)
			-- upvalues: (copy) v_u_7, (copy) v_u_10
			_G.playSound(p_u_1254 and "SoundShockwaveBig" or "SoundShockwave", p_u_1252)
			local v1255 = Instance.new("Part", v_u_7)
			v1255.Anchored = true
			v1255.Transparency = 1
			v1255.CanCollide = false
			v1255.Size = Vector3.new(1, 1, 1)
			v1255.CFrame = CFrame.new(p_u_1252)
			local v1256 = Instance.new("Attachment", v1255)
			local v1257 = game.ReplicatedStorage.Effects.SoundEchoExplode:Clone()
			v1257.Parent = v1256
			v1257.Color = ColorSequence.new(p_u_1253, Color3.new(1, 1, 1))
			for _ = 1, 10 do
				coroutine.resume(coroutine.create(function()
					-- upvalues: (ref) v_u_7, (copy) p_u_1253, (copy) p_u_1252, (copy) p_u_1254
					local v1258 = Instance.new("Part", v_u_7)
					local v1259 = Instance.new("SpecialMesh", v1258)
					v1259.MeshType = "Sphere"
					v1258.TopSurface = 0
					v1258.BottomSurface = 0
					v1258.Size = Vector3.new(1, 1, 1)
					v1258.Color = p_u_1253 or Color3.new(1, 1, 1)
					v1258.CanCollide = false
					v1258.Anchored = true
					v1258.Material = "Neon"
					v1258.CFrame = CFrame.new(p_u_1252)
					local v1260 = tick()
					while tick() - v1260 < 0.5 do
						v1258.Transparency = (tick() - v1260) * 2
						local v1261 = 2 + 0.5 * math.random()
						local v1262 = 2 + 0.5 * math.random()
						local v1263 = 2 + 0.5 * math.random()
						v1259.Scale = Vector3.new(v1261, v1262, v1263) * (p_u_1254 or 250) * (tick() - v1260)
						game:GetService("RunService").RenderStepped:Wait()
					end
					v1258:Destroy()
				end))
				wait(0.05)
			end
			v1257:Destroy()
			v_u_10:AddItem(v1255, 0.3)
		end,
		["SoundHalo"] = function(p_u_1264, p_u_1265, p_u_1266, _)
			math.randomseed(tick())
			local v_u_1267 = game.ReplicatedStorage.Effects.Sound.Ring
			local _, v_u_1268 = _G.playSound("SoundHaloTheme", p_u_1265)
			local v_u_1269 = {}
			local v_u_1270 = 0
			local v_u_1271 = 0
			spawn(function()
				-- upvalues: (copy) p_u_1266, (copy) v_u_1268
				wait(p_u_1266 * 4 / 5)
				local v1272 = v_u_1268.Volume
				local v1273 = tick()
				local v1274 = p_u_1266 / 5
				while tick() - v1273 < v1274 do
					v_u_1268.Volume = v1272 * (1 - (tick() - v1273) / v1274)
					wait()
				end
			end)
			local v_u_1275 = game:GetService("HttpService"):GenerateGUID()
			local v_u_1276 = 0
			game:GetService("RunService"):BindToRenderStep(v_u_1275, Enum.RenderPriority.Camera.Value - 1, function(p1277)
				-- upvalues: (copy) p_u_1264, (ref) v_u_1271, (copy) v_u_1275, (copy) v_u_1268, (ref) v_u_1276, (ref) v_u_1270, (copy) v_u_1267, (copy) p_u_1265, (copy) v_u_1269
				if p_u_1264.Parent or v_u_1271 ~= 0 then
					local v1278 = 0
					v_u_1276 = v_u_1276 + p1277
					while v_u_1276 >= 0.015 do
						v_u_1276 = v_u_1276 - 0.015
						v1278 = v1278 + 1
					end
					for _ = 1, v1278 do
						local v1279 = v_u_1270
						v_u_1270 = v_u_1270 + 0.015
						if p_u_1264.Parent then
							local v1280 = v1279 * 5
							local v1281 = math.floor(v1280)
							local v1282 = v_u_1270 * 5
							if v1281 ~= math.floor(v1282) then
								local v1283 = v_u_1267:Clone()
								v_u_1271 = v_u_1271 + 1
								v1283.Parent = p_u_1265.Parent
								v1283.Color = Color3.new(1, 0.2, 0.6)
								v1283.Size = Vector3.new(1, 1, 1)
								v_u_1269[v1283] = v_u_1270
							end
						end
						for v1284, v1285 in next, v_u_1269 do
							local v1286 = v1279 - v1285
							v1284.Size = v1284.Size + Vector3.new(2, 0, 2)
							v1284.CFrame = CFrame.new(p_u_1265.CFrame.p)
							v1284.Transparency = 0.4 + 0.6 * v1286
							if v1284.Transparency >= 1 then
								v1284:Destroy()
								v_u_1269[v1284] = nil
								v_u_1271 = v_u_1271 - 1
							end
						end
					end
				else
					game:GetService("RunService"):UnbindFromRenderStep(v_u_1275)
					v_u_1268:Stop()
					v_u_1268:Destroy()
				end
			end)
		end,
		["Pulsate"] = function(p1287, p1288, p1289, p1290, p1291)
			-- upvalues: (copy) v_u_7
			for _ = 1, p1290 or 1 do
				local v_u_1292 = p1287:Clone()
				local v1293 = next
				local v1294, v1295 = v_u_1292:GetChildren()
				for _, v1296 in v1293, v1294, v1295 do
					if not v1296:IsA("SpecialMesh") then
						v1296:Destroy()
					end
				end
				v_u_1292.CFrame = p1287.CFrame
				v_u_1292.Parent = v_u_7
				local v1297 = game:GetService("TweenService")
				local v1298 = v_u_1292:FindFirstChildOfClass("SpecialMesh")
				if v1298 then
					v1297:Create(v1298, TweenInfo.new(p1288), {
						["Scale"] = v1298.Scale * p1289
					}):Play()
				end
				local v1299 = v1297:Create(v_u_1292, TweenInfo.new(p1288), {
					["Transparency"] = 1
				})
				v1299.Completed:Connect(function()
					-- upvalues: (copy) v_u_1292
					v_u_1292:Destroy()
				end)
				v1299:Play()
				if p1290 then
					wait(p1291 or 0.1)
				end
			end
		end,
		["Howl"] = function(p1300)
			_G.playSound("SoundVisage", p1300)
			while p1300.Parent do
				_G.playSound("SoundHowl", p1300)
				wait(0.5)
			end
		end,
		["SoundAura"] = function(p_u_1301, p1302, p_u_1303, p_u_1304, p1305, p_u_1306)
			-- upvalues: (copy) v_u_7
			local v_u_1307 = {}
			local v_u_1308 = game:GetService("HttpService"):GenerateGUID()
			local v_u_1309 = 0
			local v_u_1310 = game.ReplicatedStorage.Effects.Sound.Ring2
			local v_u_1311 = tick()
			local _, v1312, v1313 = workspace:FindPartOnRayWithWhitelist(Ray.new(p1302.Position, Vector3.new(0, -100, 0)), workspace.Map:GetChildren())
			local v1314 = (v1312 - (p1302.CFrame * CFrame.new(0, 10, 0)).p).magnitude
			local v1315 = math.floor(v1314)
			local v_u_1316 = math.min(20, v1315)
			local v1317 = CFrame.new(v1312, v1312 + v1313)
			local v_u_1318 = CFrame.new(v1312, v1312 + v1317.upVector)
			local v_u_1319 = Vector3.new(p1305, 1, p1305)
			local v_u_1324 = (function(p1320)
				-- upvalues: (copy) v_u_1316, (copy) v_u_1310, (ref) v_u_1318, (copy) v_u_1319
				for v1321 = 1, v_u_1316 * 6 do
					local v1322 = v_u_1310:Clone()
					local v1323 = v1321 % v_u_1316
					v1322.CFrame = v_u_1318 * CFrame.new(0, v1323, 0)
					v1322.Size = v_u_1319
					v1322.Transparency = v1323 / v_u_1316
					v1322.Parent = nil
					p1320[v1321] = v1322
				end
				return p1320
			end)({})
			local v_u_1325 = 0
			local v_u_1326 = 0
			local v_u_1327 = 0
			game:GetService("RunService"):BindToRenderStep(v_u_1308, Enum.RenderPriority.Camera.Value - 1, function(p1328)
				-- upvalues: (ref) v_u_1309, (ref) v_u_1327, (copy) v_u_1307, (copy) v_u_1311, (copy) p_u_1303, (copy) v_u_1308, (copy) p_u_1301, (ref) v_u_1326, (ref) v_u_1318, (ref) v_u_7, (ref) v_u_1325, (copy) v_u_1316, (copy) v_u_1324, (copy) p_u_1304, (copy) p_u_1306, (copy) v_u_1319
				v_u_1309 = v_u_1309 + p1328
				if v_u_1327 == #v_u_1307 and p_u_1303 < tick() - v_u_1311 then
					game:GetService("RunService"):UnbindFromRenderStep(v_u_1308)
				else
					local v1329 = 0
					while v_u_1309 >= 0.02 do
						v_u_1309 = v_u_1309 - 0.02
						v1329 = v1329 + 1
					end
					local v1330 = 4 * (tick() - v_u_1311) / p_u_1303
					math.min(1, v1330)
					for _ = 1, v1329 do
						if p_u_1301.Parent and (tick() - v_u_1311 < p_u_1303 and v_u_1326 == 0) then
							_G.playSound("SoundAuraWave", v_u_1318.p)
							local v1331 = v_u_7
							local v1332 = v_u_1325
							v_u_1325 = (v_u_1325 + 1) % 6
							for v1333 = 1, v_u_1316 do
								v_u_1324[v1332 * v_u_1316 + v1333].Parent = v1331
							end
							local v1334 = v_u_1316 * (v1332 % 6)
							v_u_1307[#v_u_1307 + 1] = tick()
							v_u_1307[#v_u_1307 + 1] = v1334
						end
						for v1335 = v_u_1327 + 2, #v_u_1307, 2 do
							local v1336 = v_u_1307[v1335]
							local v1337 = p_u_1304 * (tick() - v_u_1307[v1335 - 1])
							if v1337 < 1 then
								for v1338 = 1, v_u_1316 do
									v_u_1324[v1336 + v1338].Size = v_u_1324[v1336 + v1338].Size + ((v1338 + 0.2) ^ (-2) + 1) * p_u_1306 * 0.02 * Vector3.new(1, 0, 1)
									v_u_1324[v1336 + v1338].Transparency = v1337 + (v1338 - 1) / v_u_1316
									v_u_1324[v1336 + v1338].Color = Color3.new(1, 0.3 + 0.7 * (1 - v1337) * v1338 / v_u_1316, 1)
								end
							else
								v_u_1327 = v_u_1327 + 2
								for v1339 = 1, v_u_1316 do
									local v1340 = v_u_1324[v1336 + v1339]
									local v1341 = v1339 - 1
									v1340.CFrame = v_u_1318 * CFrame.new(0, v1341, 0)
									v1340.Size = v_u_1319
									v1340.Transparency = v1341 / v_u_1316
									v1340.Parent = nil
								end
							end
						end
						v_u_1326 = (v_u_1326 + 1) % 12
					end
				end
			end)
		end,
		["SoundDust"] = function(p1342, p_u_1343, p_u_1344)
			-- upvalues: (copy) v_u_7
			local v_u_1345 = p1342.CFrame * CFrame.new(0, -1.5, 0)
			local _, v_u_1346 = _G.playSound("SoundWailCharge", v_u_1345.p)
			local v1347 = game.ReplicatedStorage.Effects.SoundDustShine:Clone()
			local v_u_1348 = Instance.new("Attachment", p1342)
			v_u_1348.Position = Vector3.new(0, -1.5, 0)
			v1347.Parent = v_u_1348
			local v_u_1349 = {}
			local v_u_1350 = 0
			local v_u_1351 = game:GetService("HttpService"):GenerateGUID()
			local v_u_1352 = tick()
			local v_u_1353 = 0
			local v_u_1354 = CFrame.Angles(0, 0.2617993877991494, 0)
			game:GetService("RunService"):BindToRenderStep(v_u_1351, Enum.RenderPriority.Camera.Value - 1, function(p1355)
				-- upvalues: (ref) v_u_1350, (copy) v_u_1349, (copy) v_u_1352, (copy) p_u_1343, (copy) v_u_1351, (copy) v_u_1346, (copy) v_u_1348, (ref) v_u_1353, (ref) v_u_7, (copy) v_u_1345, (copy) p_u_1344, (copy) v_u_1354
				v_u_1350 = v_u_1350 + p1355
				if #v_u_1349 == 0 and p_u_1343 <= tick() - v_u_1352 then
					game:GetService("RunService"):UnbindFromRenderStep(v_u_1351)
					v_u_1346:Stop()
					v_u_1346:Destroy()
					v_u_1348:Destroy()
				else
					local v1356 = 0
					while v_u_1350 >= 0.012 do
						v_u_1350 = v_u_1350 - 0.012
						v1356 = v1356 + 1
					end
					for _ = 1, v1356 do
						if tick() - v_u_1352 < p_u_1343 and v_u_1353 == 0 then
							local v1357 = Instance.new("Part", v_u_7)
							Instance.new("SpecialMesh", v1357).MeshType = "Sphere"
							v1357.Color = Color3.new(1, 0.5, 0.5)
							v1357.Material = "Neon"
							v1357.Anchored = true
							v1357.CanCollide = false
							v1357.Transparency = 0
							v1357.TopSurface = 0
							v1357.BottomSurface = 0
							v1357.Size = Vector3.new()
							local v1358 = math.random() * 2 * 3.141592653589793
							local v1359 = math.random() * 2 * 3.141592653589793
							local v1360 = v_u_1345
							local v1361 = p_u_1344
							local v1362 = math.cos(v1358) * math.sin(v1359)
							local v1363 = math.cos(v1359)
							local v1364 = math.sin(v1358) * math.sin(v1359)
							v1357.CFrame = v1360 + v1361 * Vector3.new(v1362, v1363, v1364)
							Instance.new("IntValue", v1357).Name = "Timer"
							local v1365 = v_u_1349
							table.insert(v1365, v1357)
						end
						for v1366 = #v_u_1349, 1, -1 do
							local v1367 = v_u_1349[v1366]
							v1367.CFrame = v_u_1345 * v_u_1354 * CFrame.new(v_u_1345:pointToObjectSpace(v1367.CFrame.p) / 1.08)
							v1367.Timer.Value = v1367.Timer.Value + 1
							v1367.Size = Vector3.new(2, 2, 2) * (v1367.Timer.Value / 50)
							if v1367.Timer.Value >= 50 then
								v1367:Destroy()
								table.remove(v_u_1349, v1366)
							end
						end
						v_u_1353 = (v_u_1353 + 1) % 2
					end
				end
			end)
		end,
		["Blind"] = function(p1368, p1369, p1370)
			-- upvalues: (copy) v_u_130, (copy) v_u_26, (copy) v_u_27
			local v1371 = 2 * (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v_u_130.CFrame.p).Magnitude
			v_u_26.FogEnd = p1368 or math.min(50, v1371)
			v_u_26.FogColor = p1370 or Color3.new()
			v_u_26.Brightness = 0
			v_u_26.ClockTime = p1370 and v_u_26.ClockTime or 0
			wait(p1369)
			for v1372, v1373 in next, v_u_27 do
				v_u_26[v1372] = v1373
			end
		end,
		["IllusionCam"] = function(p1374, p1375)
			local v1376 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
			if not v1376 then
				return
			end
			local v1377 = workspace.CurrentCamera
			local v1378 = v1377.CFrame
			local v1379 = v1377.CameraType
			v1377.CameraType = "Scriptable"
			local v1380 = tick()
			while tick() - v1380 < 0.25 do
				local v1381 = (tick() - v1380) / 0.25
				v1377.CFrame = v1378:lerp(p1374 * CFrame.Angles(0, 0, 0) * CFrame.new(0, 100, 250), v1381)
				game:GetService("RunService").RenderStepped:wait()
			end
			local v1382 = tick()
			local v1383 = v1382
			local v1384 = 0
			while tick() - v1382 < p1375 do
				game:GetService("RunService").RenderStepped:wait()
				if v1376.Health == 0 then
					break
				end
				local v1385 = tick() - v1383
				local v1386 = v1384 % 6.283185307179586
				local v1387 = 45 * v1385
				v1384 = v1386 + math.rad(v1387)
				v1377.CFrame = p1374 * CFrame.Angles(0, v1384, 0) * CFrame.new(0, 100, 250)
				v1383 = tick()
			end
			if v1376.Health > 0 then
				local v1388 = tick()
				while tick() - v1388 < 1 do
					v1377.CFrame = v1377.CFrame:lerp(v1378, 0.05)
					game:GetService("RunService").RenderStepped:wait()
				end
			end
			v1377.CFrame = v1378
			v1377.CameraType = v1379
		end,
		["IllusionAmbient"] = function(p1389)
			-- upvalues: (copy) v_u_26, (copy) v_u_27
			local v1390 = {
				["OutdoorAmbient"] = Color3.new(),
				["Ambient"] = Color3.fromRGB(50, 50, 50),
				["Brightness"] = 0.15,
				["ClockTime"] = 0
			}
			local v1391 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
			if v1391 then
				local v1392 = p1389 * 0.15
				local v1393 = tick()
				while tick() - v1393 < v1392 do
					local v1394 = (tick() - v1393) / v1392
					for v1395, v1396 in next, v1390 do
						if typeof(v1396) == "Color3" then
							v_u_26[v1395] = v_u_27[v1395]:lerp(v1396, v1394)
						elseif typeof(v1396) == "number" then
							local v1397 = v_u_26
							local v1398 = v_u_27[v1395]
							v1397[v1395] = v1398 + (v1396 - v1398) * v1394
						end
					end
					game:GetService("RunService").RenderStepped:wait()
				end
				for v1399, v1400 in next, v1390 do
					if typeof(v1400) == "Color3" then
						v_u_26[v1399] = v_u_27[v1399]:lerp(v1400, 1)
					elseif typeof(v1400) == "number" then
						local v1401 = v_u_26
						local v1402 = v_u_27[v1399]
						v1401[v1399] = v1402 + (v1400 - v1402) * 1
					end
				end
				local v1403 = tick()
				while tick() - v1403 < p1389 - v1392 * 2 and v1391.Health > 0 do
					wait(0)
				end
				local v1404 = tick()
				while tick() - v1404 < v1392 do
					local v1405 = (tick() - v1404) / v1392
					for v1406, v1407 in next, v1390 do
						if typeof(v1407) == "Color3" then
							v_u_26[v1406] = v_u_27[v1406]:lerp(v1407, 1 - v1405)
						elseif typeof(v1407) == "number" then
							local v1408 = v_u_26
							local v1409 = v_u_27[v1406]
							local v1410 = 1 - v1405
							v1408[v1406] = v1409 + (v1407 - v1409) * v1410
						end
					end
					game:GetService("RunService").RenderStepped:wait()
				end
				for v1411, v1412 in next, v1390 do
					if typeof(v1412) == "Color3" then
						v_u_26[v1411] = v_u_27[v1411]:lerp(v1412, 0)
					elseif typeof(v1412) == "number" then
						local v1413 = v_u_26
						local v1414 = v_u_27[v1411]
						v1413[v1411] = v1414 + (v1412 - v1414) * 0
					end
				end
			end
		end,
		["IllusionUlt"] = function(p_u_1415, p_u_1416, p_u_1417)
			-- upvalues: (copy) v_u_14, (copy) v_u_15, (copy) v_u_16, (copy) v_u_7
			local v_u_1418 = game:GetService("HttpService"):GenerateGUID()
			local v_u_1419 = math.sin
			local v_u_1420 = math.cos
			local v_u_1421 = 0.1
			local v_u_1422 = p_u_1415 * CFrame.new(0, v_u_1421 / 0.9, 0)
			local v_u_1423 = BrickColor.new("Silver").Color
			local v_u_1424 = Color3.fromRGB(170, 0, 0)
			local v_u_1425 = v_u_1421 * 0.025
			local v_u_1426 = {}
			for v1427 = -1, 1, 2 do
				for v1428 = -1, 1, 2 do
					for v1429 = -1, 1, 2 do
						v_u_1426[#v_u_1426 + 1] = v_u_14.new(v1428, v1429, -1, v1427)
						v_u_1426[#v_u_1426 + 1] = v_u_14.new(v1428, v1429, 1, v1427)
					end
				end
			end
			local v_u_1430 = Instance.new("Model")
			game:GetService("Debris"):AddItem(v_u_1430, p_u_1417 + 2)
			v_u_1430.Name = "Tesseract"
			local v_u_1431 = {
				["Points"] = {},
				["Lines"] = {
					["Section1"] = {},
					["Section2"] = {},
					["Section3"] = {},
					["Section4"] = {}
				}
			}
			for v1432, v1433 in next, v_u_1426 do
				local v1434 = 1 / (2 - v1433.w)
				local v1435 = v_u_15.mult({
					{
						v1434,
						0,
						0,
						0
					},
					{
						0,
						v1434,
						0,
						0
					},
					{
						0,
						0,
						v1434,
						0
					},
					{
						0,
						0,
						0,
						v1434
					}
				}, { v1433:toMatrix() })
				local v1436 = v_u_14.new
				local v1437 = v1435[1]
				local v1438 = v1436(unpack(v1437))
				local v1439 = CFrame.new
				local v1440 = v1438.x
				local v1441 = v1438.y
				local v1442 = v1438.z
				local v1443 = v_u_1422 * v1439(Vector3.new(v1440, v1441, v1442) * v_u_1421 / 2)
				local v1444 = Instance.new("Part")
				v1444.Material = "Neon"
				v1444.TopSurface = 0
				v1444.BottomSurface = 0
				v1444.Anchored = true
				v1444.CanCollide = false
				v1444.Size = Vector3.new(0.05, 0.05, 0.05)
				v1444.Color = v1433.w > 0 and v_u_1424 and v_u_1424 or v_u_1423
				v1444.CFrame = v1443
				local v1445 = Instance.new("SpecialMesh", v1444)
				v1445.MeshType = "Sphere"
				v1445.Scale = Vector3.new(1, 1, 1) * v_u_1425 * 1.5 / 0.05
				v1444.Parent = v_u_1430
				v_u_1431.Points[v1432] = v1444
			end
			for v1446 = 1, 8 do
				local v1447 = v1446 > 4 and 4 or 0
				local v1448 = v1447 + (v1446 - v1447 > 2 and 2 or 0)
				local v1449
				if v1446 % 2 == 0 then
					v1449 = v1446 + 1 or v1446
				else
					v1449 = v1446
				end
				local v1450 = v1448 + v1449
				local v1451 = v1450 + 1
				local v1452 = v_u_16.new(v_u_1431.Points[v1450].Position, v_u_1431.Points[v1451].Position)
				v1452.Thickness = v_u_1425
				if v1447 == 0 then
					v1452.Color = v_u_1423
				else
					v1452.Color = v_u_1424
				end
				v1452.Parent = v_u_1430
				local v1453 = v_u_1431.Lines.Section1
				table.insert(v1453, v1452)
				local v1454 = v1447 + v1446
				local v1455 = v1454 + 4
				local v1456 = v_u_16.new(v_u_1431.Points[v1454].Position, v_u_1431.Points[v1455].Position)
				v1456.Thickness = v_u_1425
				if v1447 == 0 then
					v1456.Color = v_u_1423
				else
					v1456.Color = v_u_1424
				end
				v1456.Parent = v_u_1430
				local v1457 = v_u_1431.Lines.Section2
				table.insert(v1457, v1456)
				local v1458 = v1447 + (v1446 - v1447 > 2 and 2 or 0) + v1446
				local v1459 = v1458 + 2
				local v1460 = v_u_16.new(v_u_1431.Points[v1458].Position, v_u_1431.Points[v1459].Position)
				v1460.Thickness = v_u_1425
				if v1447 == 0 then
					v1460.Color = v_u_1423
				else
					v1460.Color = v_u_1424
				end
				v1460.Parent = v_u_1430
				local v1461 = v_u_1431.Lines.Section3
				table.insert(v1461, v1460)
				local v1462 = v1446 + 8
				local v1463 = v_u_16.new(v_u_1431.Points[v1446].Position, v_u_1431.Points[v1462].Position)
				v1463.Thickness = v_u_1425
				if v1447 == 0 then
					v1463.Color = v_u_1423
				else
					v1463.Color = v_u_1424
				end
				v1463.Parent = v_u_1430
				local v1464 = v_u_1431.Lines.Section4
				table.insert(v1464, v1463)
			end
			v_u_1430.Parent = v_u_7
			spawn(function()
				-- upvalues: (copy) p_u_1416, (copy) p_u_1417, (ref) v_u_1421, (ref) v_u_1422, (copy) p_u_1415
				local v1465 = p_u_1416 or 25
				local v1466 = tick()
				while tick() - v1466 < p_u_1417 / 5 do
					local v1467 = (tick() - v1466) / (p_u_1417 / 5)
					v_u_1421 = 0.1 + (v1465 - 0.1) * v1467
					v_u_1422 = p_u_1415 * CFrame.new(0, v1465 / 0.9, 0)
					game:GetService("RunService").RenderStepped:wait()
				end
			end)
			local v_u_1468 = nil
			local v_u_1469 = 0
			local v_u_1470 = tick()
			game:GetService("RunService"):BindToRenderStep(v_u_1418, 1000, function(p1471)
				-- upvalues: (copy) v_u_1470, (copy) p_u_1417, (ref) v_u_1468, (copy) v_u_1430, (copy) v_u_1418, (copy) v_u_1431, (ref) v_u_1469, (ref) v_u_1425, (ref) v_u_1421, (copy) v_u_1426, (copy) v_u_1420, (copy) v_u_1419, (ref) v_u_15, (ref) v_u_14, (ref) v_u_1422, (copy) v_u_1423, (copy) v_u_1424
				if p_u_1417 < tick() - v_u_1470 then
					if not v_u_1468 then
						v_u_1468 = tick()
					end
					local v1472 = (tick() - v_u_1468) / (p_u_1417 / 7)
					if v1472 > 1 then
						v_u_1430:Destroy()
						game:GetService("RunService"):UnbindFromRenderStep(v_u_1418)
						return
					end
					for _, v1473 in next, v_u_1431.Points do
						v1473.Transparency = v1472
					end
					for _, v1474 in next, {
						v_u_1431.Lines.Section1,
						v_u_1431.Lines.Section2,
						v_u_1431.Lines.Section3,
						v_u_1431.Lines.Section4
					} do
						v1474[1].Transparency = v1472
						v1474[2].Transparency = v1472
						v1474[3].Transparency = v1472
						v1474[4].Transparency = v1472
						v1474[5].Transparency = v1472
						v1474[6].Transparency = v1472
						v1474[7].Transparency = v1472
						v1474[8].Transparency = v1472
					end
				end
				local v1475 = v_u_1469 % 6.283185307179586
				local v1476 = 90 * p1471
				v_u_1469 = v1475 + math.rad(v1476)
				local v1477 = v_u_1421 * 0.02
				local v1478 = v_u_1421 * 0.01
				local v1479 = v_u_1469 * 2
				v_u_1425 = v1477 + v1478 * math.sin(v1479)
				for v1480, v1481 in next, v_u_1426 do
					local v1482 = {
						{
							1,
							0,
							0,
							0
						},
						{
							0,
							1,
							0,
							0
						},
						{
							0,
							0,
							v_u_1420(v_u_1469),
							-v_u_1419(v_u_1469)
						},
						{
							0,
							0,
							v_u_1419(v_u_1469),
							(v_u_1420(v_u_1469))
						}
					}
					local v1483 = {
						{
							v_u_1420(v_u_1469),
							-v_u_1419(v_u_1469),
							0,
							0
						},
						{
							v_u_1419(v_u_1469),
							v_u_1420(v_u_1469),
							0,
							0
						},
						{
							0,
							0,
							1,
							0
						},
						{
							0,
							0,
							0,
							1
						}
					}
					local v1484 = v_u_15.mult(v1482, { v1481:toMatrix() })
					local v1485 = v_u_15.mult(v1483, v1484)
					local v1486 = v_u_14.new
					local v1487 = v1485[1]
					local v1488 = 1 / (2 - v1486(unpack(v1487)).w)
					local v1489 = v_u_15.mult({
						{
							v1488,
							0,
							0,
							0
						},
						{
							0,
							v1488,
							0,
							0
						},
						{
							0,
							0,
							v1488,
							0
						},
						{
							0,
							0,
							0,
							v1488
						}
					}, v1485)
					local v1490 = v_u_14.new
					local v1491 = v1489[1]
					local v1492 = v1490(unpack(v1491))
					local v1493 = v_u_1422
					local v1494 = CFrame.new
					local v1495 = v1492.x
					local v1496 = v1492.y
					local v1497 = v1492.z
					local v1498 = v1493 * v1494(Vector3.new(v1495, v1496, v1497) * v_u_1421 / 2)
					v_u_1431.Points[v1480].Mesh.Scale = Vector3.new(1, 1, 1) * v_u_1425 * 1.5 / 0.05
					v_u_1431.Points[v1480].CFrame = v1498
				end
				for v1499 = 1, 8 do
					local v1500 = v1499 > 4 and 4 or 0
					local v1501 = v1500 + (v1499 - v1500 > 2 and 2 or 0)
					local v1502
					if v1499 % 2 == 0 then
						v1502 = v1499 + 1 or v1499
					else
						v1502 = v1499
					end
					local v1503 = v1501 + v1502
					local v1504 = v1503 + 1
					local v1505 = v_u_1431.Lines.Section1[v1499]
					v1505.Thickness = v_u_1425
					if v1500 == 0 then
						v1505.Color = v_u_1423
					else
						v1505.Color = v_u_1424
					end
					v1505:Calculate(v_u_1431.Points[v1503].Position, v_u_1431.Points[v1504].Position)
					local v1506 = v1500 + v1499
					local v1507 = v1506 + 4
					local v1508 = v_u_1431.Lines.Section2[v1499]
					v1508.Thickness = v_u_1425
					if v1500 == 0 then
						v1508.Color = v_u_1423
					else
						v1508.Color = v_u_1424
					end
					v1508:Calculate(v_u_1431.Points[v1506].Position, v_u_1431.Points[v1507].Position)
					local v1509 = v1500 + (v1499 - v1500 > 2 and 2 or 0) + v1499
					local v1510 = v1509 + 2
					local v1511 = v_u_1431.Lines.Section3[v1499]
					v1511.Thickness = v_u_1425
					if v1500 == 0 then
						v1511.Color = v_u_1423
					else
						v1511.Color = v_u_1424
					end
					v1511:Calculate(v_u_1431.Points[v1509].Position, v_u_1431.Points[v1510].Position)
					local v1512 = v1499 + 8
					local v1513 = v_u_1431.Lines.Section4[v1499]
					v1513.Thickness = v_u_1425
					if v1500 == 0 then
						v1513.Color = v_u_1423
					else
						v1513.Color = v_u_1424
					end
					v1513:Calculate(v_u_1431.Points[v1499].Position, v_u_1431.Points[v1512].Position)
				end
			end)
		end,
		["CustomSound"] = function(p1514, p1515, p1516, p1517)
			local _, v1518 = _G.playSound(p1514, p1515)
			if p1516 then
				for v1519, v1520 in next, p1516 do
					v1518[v1519] = v1520
				end
			end
			if p1517 then
				for v1521, v1522 in next, p1517 do
					local v1523 = Instance.new(v1521)
					v1523.Parent = v1518
					for v1524, v1525 in next, v1522 do
						v1523[v1524] = v1525
					end
				end
			end
		end,
		["AngelBody"] = function(p1526)
			-- upvalues: (copy) v_u_10, (copy) v_u_7
			local _ = workspace.CurrentCamera
			local v1527 = game.ReplicatedStorage.Assets.Models.AngelBody
			local v1528 = v1527.Shaders
			local v1529 = v1527.Sounds
			local v_u_1530 = v1528.Bloom:Clone()
			v_u_1530.Parent = game.Lighting
			local v1531 = v1529.AuraBurst:Clone()
			v1531.Parent = p1526.HumanoidRootPart
			local v1532 = v1529.Charge:Clone()
			v1532.Parent = p1526.HumanoidRootPart
			v_u_10:AddItem(v_u_1530, 5)
			v_u_1530.Enabled = false
			local v1533 = v1527.Shockwave:Clone()
			v_u_10:AddItem(v1533, 5)
			v1533.Parent = v_u_7
			local v1534 = p1526.HumanoidRootPart
			v1532:Play()
			local v1535 = tick()
			while tick() - v1535 < 0.2 do
				local v1536 = (tick() - v1535) / 0.2
				local v1537 = 15 - v1536 * 10
				local v1538 = 1 - v1536 * 2
				local v1539 = math.abs(v1538)
				v1533.Top.ImageLabel.ImageTransparency = v1539
				v1533.Bottom.ImageLabel.ImageTransparency = v1539
				v1533.Top.ImageLabel.Size = UDim2.new(1 + v1537, 0, 1 + v1537, 0)
				v1533.Top.ImageLabel.Position = UDim2.new(-v1537 / 2, 0, -v1537 / 2, 0)
				v1533.Top.ImageLabel.Rotation = v1536 * 666
				v1533.Bottom.ImageLabel.Size = v1533.Top.ImageLabel.Size
				v1533.Bottom.ImageLabel.Position = v1533.Top.ImageLabel.Position
				v1533.Bottom.ImageLabel.Rotation = v1536 * 66
				v1533.CFrame = v1534.CFrame * CFrame.new(0, -v1534.Size.Y * 1.4, 0)
				wait(0)
			end
			v1531:Play()
			v1533:Destroy()
			local v1540 = {}
			for v1541 = 1, 4 do
				v1540[v1541] = v1527.Shockwave:Clone()
				v_u_10:AddItem(v1540[v1541], 5)
				v1540[v1541].Parent = v_u_7
			end
			local v_u_1542 = v1527.test2:Clone()
			v_u_10:AddItem(v_u_1542, 5)
			local v1543 = v1534.CFrame
			local v1544 = v1534.Size.Y / 0.8
			v_u_1542.CFrame = v1543 - Vector3.new(0, v1544, 0)
			v_u_1542.Parent = v_u_7
			local v1545 = v1527.Thing.BillboardGui:Clone()
			v1545.Parent = v1534
			local v_u_1546 = v1527.Light:Clone()
			v_u_10:AddItem(v_u_1546, 5)
			v_u_1546.CFrame = v1534.CFrame
			v_u_1546.ParticleEmitter.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 100) })
			v_u_1546.Parent = v_u_7
			local v1547 = v1534.CFrame
			local v1548 = v1534.Size.Y * 1.4
			local v1549 = v1547 - Vector3.new(0, v1548, 0)
			local v_u_1550 = Instance.new("Model", v_u_7)
			v_u_10:AddItem(v_u_1550, 6)
			local v1551 = {}
			for v1552 = 0, 720, 4 do
				local v1553 = v1552 / 720
				local v1554 = v1549 * CFrame.Angles(0, math.rad(v1552), 0) * CFrame.new(0, v1553 * 5, -4 - v1553 * 2)
				table.insert(v1551, v1554)
			end
			local v1555 = {}
			for v1556 = 0, 720, 4 do
				local v1557 = v1556 / 720
				local v1558 = CFrame.Angles
				local v1559 = 180 + v1556
				local v1560 = v1549 * v1558(0, math.rad(v1559), 0) * CFrame.new(0, v1557 * 5, -4 - v1557 * 2)
				table.insert(v1555, v1560)
			end
			local v_u_1561 = {}
			for v1562 = 2, #v1551 do
				local v1563 = v1562 / #v1551
				local v1564 = v1551[v1562]
				local v1565 = v1551[v1562 - 1]
				local v1566 = (v1565.p - v1564.p).magnitude
				local v1567 = Instance.new("Part")
				v1567.Material = "Neon"
				v1567.Color = Color3.fromRGB(255, 245, 111)
				v1567.Size = Vector3.new(1, 1, 1)
				v1567.Anchored = true
				v1567.CanCollide = false
				v1567.Transparency = 1
				v1567.CFrame = CFrame.new(v1565.p, v1564.p) * CFrame.new(0, 0, -v1566 / 2)
				local v1568 = Instance.new("BlockMesh", v1567)
				local v1569 = v1563 < 0.5 and v1563 * 0.66 or 0.66 - v1563 * 0.66
				v1568.Scale = Vector3.new(0, v1569, v1566)
				v1567.Parent = v_u_1550
				table.insert(v_u_1561, v1567)
			end
			local v_u_1570 = {}
			for v1571 = 2, #v1551 do
				local v1572 = v1571 / #v1555
				local v1573 = v1555[v1571]
				local v1574 = v1555[v1571 - 1]
				local v1575 = (v1574.p - v1573.p).magnitude
				local v1576 = Instance.new("Part")
				v1576.Material = "Neon"
				v1576.Color = Color3.fromRGB(255, 245, 111)
				v1576.Size = Vector3.new(1, 1, 1)
				v1576.Anchored = true
				v1576.CanCollide = false
				v1576.Transparency = 1
				v1576.CFrame = CFrame.new(v1574.p, v1573.p) * CFrame.new(0, 0, -v1575 / 2)
				local v1577 = Instance.new("BlockMesh", v1576)
				local v1578 = v1572 < 0.5 and v1572 * 0.66 or 0.66 - v1572 * 0.66
				v1577.Scale = Vector3.new(0, v1578, v1575)
				v1576.Parent = v_u_1550
				table.insert(v_u_1570, v1576)
			end
			coroutine.resume(coroutine.create(function()
				-- upvalues: (copy) v_u_1561, (copy) v_u_1570, (copy) v_u_1530, (copy) v_u_1550
				local v1579 = #v_u_1561 / 23 * 14.285714285714285 * 2
				for v1580 = 0, #v_u_1561 + v1579, #v_u_1561 / 23 do
					for v1581, v1582 in next, v_u_1561 do
						if v1581 < v1580 then
							if v1582.Transparency < 0 then
								v1582.Name = "frick"
							elseif v1582.Name ~= "frick" then
								v1582.Transparency = v1582.Transparency - 0.07
							end
							if v1582.Name == "frick" then
								v1582.Transparency = v1582.Transparency + 0.07
							end
						end
					end
					for v1583, v1584 in next, v_u_1570 do
						if v1583 < v1580 then
							if v1584.Transparency < 0 then
								v1584.Name = "frick"
							elseif v1584.Name ~= "frick" then
								v1584.Transparency = v1584.Transparency - 0.07
							end
							if v1584.Name == "frick" then
								v1584.Transparency = v1584.Transparency + 0.07
							end
						end
					end
					v_u_1530.Intensity = 1 - v1580 / (#v_u_1561 + v1579)
					wait(0)
				end
				v_u_1530:Destroy()
				v_u_1550:Destroy()
			end))
			local v1585 = tick()
			local v1586 = 1
			while tick() - v1585 < 2 do
				local v1587 = (tick() - v1585) / 2
				v1545.Size = UDim2.new(15 + v1587 * 300, 0, 15 + v1587 * 300, 0)
				v1545.ImageLabel.ImageTransparency = 0.75 + v1587
				v1545.ImageLabel.Rotation = v1587 * 360
				for v1588 = 1, #v1540 do
					local v1589 = v1540[v1588]
					local v1590 = 10 + v1587 * 40 * v1588
					local v1591 = 1 - v1587 * v1588 * 2
					local v1592 = math.abs(v1591)
					v1589.Top.ImageLabel.ImageTransparency = v1592
					v1589.Bottom.ImageLabel.ImageTransparency = v1592
					v1589.Top.ImageLabel.Size = UDim2.new(1 + v1590, 0, 1 + v1590, 0)
					v1589.Top.ImageLabel.Position = UDim2.new(-v1590 / 2, 0, -v1590 / 2, 0)
					v1589.Top.ImageLabel.Rotation = v1587 * -999
					v1589.Bottom.ImageLabel.Size = v1589.Top.ImageLabel.Size
					v1589.Bottom.ImageLabel.Position = v1589.Top.ImageLabel.Position
					v1589.Bottom.ImageLabel.Rotation = v1587 * -999
					v1589.CFrame = p1526.HumanoidRootPart.CFrame * CFrame.new(0, -v1534.Size.Y * 1.4, 0)
				end
				v_u_1542.CFrame = p1526.HumanoidRootPart.CFrame
				if v1587 > 0.1 then
					v_u_1542.ParticleEmitter.Enabled = true
				end
				if v1587 > 0.9 then
					v1531.Volume = 1 - (v1587 - 0.9) * 10
				end
				v1586 = v1586 == 1 and -1 or 1
				wait(0)
			end
			v_u_1542.ParticleEmitter.Enabled = false
			v_u_1546.ParticleEmitter.Enabled = false
			delay(1, function()
				-- upvalues: (copy) v_u_1542, (copy) v_u_1546
				v_u_1542:Destroy()
				v_u_1546:Destroy()
			end)
			v1545:Destroy()
			for v1593 = 1, #v1540 do
				v1540[v1593]:Destroy()
			end
			v1531:Destroy()
			v1532:Destroy()
		end,
		["LightDiscRender"] = function(p1594, p1595)
			-- upvalues: (copy) v_u_7
			local v1596 = game.ReplicatedStorage.Effects.Technology.LightDisc:Clone()
			v1596:SetPrimaryPartCFrame(p1594.CFrame * CFrame.fromOrientation(1.5707963267948966, 1.5707963267948966, 1.5707963267948966):inverse())
			v1596.Parent = v_u_7
			v1596.DiscScript.DiscValue.Value = v1596
			v1596.DiscScript.FollowPart.Value = p1594
			v1596.DiscScript.Parent = game.Players.LocalPlayer.PlayerScripts
			local v1597 = p1595.Character
			local v1598 = v1597:FindFirstChild("HumanoidRootPart")
			if v1598 then
				local v_u_1599 = game:GetService("RunService").Heartbeat
				local v1600 = game.ReplicatedStorage.Effects.Technology.DigitalEmitter
				local v1601 = game.ReplicatedStorage.Effects.Technology.DigitalEmitter2
				local v1602 = game.ReplicatedStorage.Effects.Technology.DigEmitter
				local v1603 = game.ReplicatedStorage.Effects.Technology.DigEmitter2
				local v_u_1604 = {}
				local v_u_1605 = {}
				for _, v1606 in pairs(v1597:GetDescendants()) do
					if v1606:IsA("BasePart") and v1606.Name ~= "HumanoidRootPart" then
						local v1607 = v1606:Clone()
						v1607.Name = "DigitalizePart"
						local v1608 = v1607:FindFirstChildOfClass("SpecialMesh")
						local v1609
						if v1608 == nil then
							v1609 = nil
						else
							v1609 = v1608:Clone()
							v1609.TextureId = ""
						end
						v1607:ClearAllChildren()
						if v1609 ~= nil then
							v1609.Parent = v1607
						end
						v1607.Color = Color3.new(0, 0, 0)
						v1607.Transparency = 0
						v1607.Anchored = true
						v1607.CanCollide = false
						v1607.CastShadow = false
						v1607.Parent = workspace[".Ignore"][".LocalEffects"]
						v1600:Clone().Parent = v1607
						v1601:Clone().Parent = v1606
						v1601.LockedToPart = true
						v1602:Clone().Parent = v1607
						v1603:Clone().Parent = v1606
						v1603.LockedToPart = true
						v_u_1604[#v_u_1604 + 1] = v1607
						v_u_1605[#v_u_1605 + 1] = v1606
					end
				end
				coroutine.resume(coroutine.create(function()
					-- upvalues: (copy) v_u_1604, (copy) v_u_1605, (copy) v_u_1599
					for v1610 = 1, 7 do
						for v1611 = 1, #v_u_1604 do
							local v1612 = v_u_1604[v1611]
							local v1613 = v_u_1605[v1611]
							v1612.DigitalEmitter:Emit(2)
							v1612.DigEmitter:Emit(2)
							v1612.Transparency = v1610 / 7
							if v1613.Parent then
								v1613.DigitalEmitter2:Emit(1)
								v1613.DigEmitter2:Emit(1)
							end
						end
						v_u_1599:Wait()
					end
					wait(0.2)
					for v1614 = 1, #v_u_1604 do
						local v1615 = v_u_1604[v1614]
						local v1616 = v_u_1605[v1614]
						v1615:Destroy()
						if v1616.Parent then
							v1616.DigitalEmitter2:Destroy()
							v1616.DigEmitter2:Destroy()
						end
					end
				end))
				v1598.CFrame = v1598.CFrame - v1598.CFrame.p + p1594.CFrame.p + Vector3.new(0, 2, 0)
			end
		end,
		["SetupEDisc"] = function(p1617)
			-- upvalues: (copy) v_u_7
			if p1617 and p1617.Parent then
				local v1618 = game.ReplicatedStorage.Effects.Technology.DeadlyDisc:Clone()
				v1618:SetPrimaryPartCFrame(p1617.CFrame)
				v1618.Parent = v_u_7
				v1618.DiscScript.DiscValue.Value = v1618
				v1618.DiscScript.FollowPart.Value = p1617
				v1618.DiscScript.Parent = game.Players.LocalPlayer.PlayerScripts
			end
		end,
		["TechExplosion"] = function(p1619, p1620)
			-- upvalues: (copy) v_u_13
			local v1621 = workspace.CurrentCamera
			if (v1621.CFrame.p - p1619).Magnitude < 75 then
				local v1622 = 1 - (v1621.CFrame.p - p1619).Magnitude / 75
				game.ReplicatedStorage.Remotes.Fx.Proxy:Fire("ShakeCam", 10 * v1622, 10 * v1622, 0, 0.75, Vector3.new(1, 1, 1), Vector3.new(1, 0, 1))
			end
			require(v_u_13.LightningBolt)
			require(v_u_13.LightningBolt.LightningSparks)
			require(v_u_13.LightningBolt.LightningExplosion)(p1619, p1620)
		end
	}
	local v_u_1624 = {}
	function v_u_1623.CreateClone(p1625, p1626, p1627, p1628, p1629)
		-- upvalues: (copy) v_u_10, (copy) v_u_7, (copy) v_u_1624, (copy) v_u_1623
		p1625.Archivable = true
		local v_u_1630 = p1625:Clone()
		p1625.Archivable = false
		local v1631 = next
		local v1632, v1633 = v_u_1630:GetDescendants()
		for _, v1634 in v1631, v1632, v1633 do
			if v1634:IsA("Script") then
				v1634:Destroy()
			end
		end
		v_u_10:AddItem(v_u_1630, p1628 + 1)
		v_u_1630.Name = "Clone"
		v_u_1630.Humanoid.DisplayDistanceType = "None"
		pcall(function()
			-- upvalues: (ref) v_u_1630
			v_u_1630.FlipsHolder:Destroy()
		end)
		local v1635 = next
		local v1636, v1637 = v_u_1630.HumanoidRootPart:GetDescendants()
		for _, v1638 in v1635, v1636, v1637 do
			if v1638:IsA("BodyMover") then
				v1638:Destroy()
			elseif (v1638:IsA("Motor6D") or v1638:IsA("Weld")) and v1638.Part0 == v_u_1630.HumanoidRootPart and v1638.Part1 ~= (v_u_1630:FindFirstChild("Torso") or v_u_1630:FindFirstChild("UpperTorso")) then
				v1638:Destroy()
			end
		end
		v_u_1630.HumanoidRootPart.CFrame = p1627 * CFrame.Angles(-1.5707963267948966, 0, 0) + Vector3.new(0, 2.75, 0)
		v_u_1630.Parent = v_u_7
		local v1639 = next
		local v1640, v1641 = p1625:GetDescendants()
		local v1642 = {}
		for _, v1643 in v1639, v1640, v1641 do
			if v1643:IsA("Motor6D") then
				v1642[v1643.Name] = v1643
			end
		end
		local v1644 = next
		local v1645, v1646 = v_u_1630:GetDescendants()
		local v1647 = {}
		for _, v1648 in v1644, v1645, v1646 do
			if v1648:IsA("Motor6D") then
				v1647[v1648.Name] = v1648
			end
		end
		local v1649 = v_u_1624
		local v1650 = {
			["Mimic"] = p1629,
			["Clone"] = v_u_1630,
			["HRP"] = p1626,
			["BG"] = BG,
			["BV"] = BV,
			["playerWelds"] = v1642,
			["cloneWelds"] = v1647,
			["Mimic"] = p1629
		}
		table.insert(v1649, v1650)
		wait(p1628)
		if v_u_1630 and (v_u_1630.Parent and v_u_1630.HumanoidRootPart) then
			local v1651 = v_u_1630.HumanoidRootPart.Position
			v_u_1630:Destroy()
			_G.playSound("Illusion Explosion[2]", v1651)
			for _ = 1, 2 do
				v_u_1623.Snowsplosion(v1651, 1.5 + math.random(), 100, 0.9, math.random(2) == 1 and BrickColor.new("Maroon") or BrickColor.new())
			end
		end
	end
	local v1652 = next
	local v1653, v1654 = v12:GetChildren()
	local v_u_1782 = {
		["Explosion1"] = function(p1655, p1656, p1657, p1658)
			-- upvalues: (copy) v_u_92, (copy) v_u_7, (copy) v_u_91, (copy) v_u_130
			local _ = v_u_92[UserSettings().GameSettings.SavedQualityLevel]
			local v1659 = 0
			local v1660 = game.ReplicatedStorage.Effects.Explosion1:Clone()
			local v1661 = p1656.Color
			local v1662 = v1661.r
			local v1663 = v1661.g
			local v1664 = v1661.b
			local v1665 = Vector3.new(v1662, v1663, v1664)
			v1660.a.BrickColor = p1656
			local v1666 = v1660.fx
			local v1667 = p1658 * p1657 * 0.01
			local v1668 = p1658 * p1657 * 0.01
			v1666.Size = Vector3.new(v1667, 0.2, v1668)
			v1660.fx.CFrame = v1660.a.CFrame
			v1660.fx.Dust.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, p1658), NumberSequenceKeypoint.new(0.65, p1658 * 1.2), NumberSequenceKeypoint.new(1, 0) })
			v1660.fx.Dust.Lifetime = NumberRange.new(p1657 * 0.03333333333333333 * 0.9)
			v1660.fx.Debris.Speed = NumberRange.new(p1658 * 5, p1658 * 5)
			v1660.fx.Debris.Lifetime = NumberRange.new(p1657 * 0.03333333333333333 * 0.75)
			v1660.a.Transparency = 0.01
			local v1669 = v1660.Shader
			v1669.TintColor = v1661
			v1669.Brightness = 1
			v1669.Parent = game.Lighting
			v1660.a.Sound.Pitch = 4000 / (p1657 * p1658)
			v1660.a.Sound.EmitterSize = p1658 * 2.5
			v1660.a.Sound:Play()
			v1660:TranslateBy(p1655 - v1660:GetModelCFrame().p)
			v1660.Parent = v_u_7
			local v1670 = tick()
			local v1671 = 0
			for v1672 = 0, p1657 do
				local v1673 = tick() - v1670
				if v1673 > 0.06666666666666667 then
					v1671 = v1671 + v1673
				end
				local _ = p1658 / v1672
				local v1674 = v1672 / p1657
				local v1675 = 2 * (v1674 - 1)
				local v1676 = v1674 * v1674
				local v1677 = 0.004 * p1658 * v1675
				local v1678 = v1674 * p1658 * 1.5
				if v1672 < p1657 / 10 and v_u_91[UserSettings().GameSettings.SavedQualityLevel] then
					v1660.fx.Dust.Speed = NumberRange.new(p1658 * 1.5, p1658 * 1.5)
					v1660.fx.Debris:Emit(p1657 * p1658 / 875)
					v1660.fx.CFrame = v1660.fx.CFrame * CFrame.Angles(0, 6.283185307179586 / (p1657 / 10), 0)
					v1660.fx.Dust:Emit(p1657 * p1658 / 875)
				end
				v1660.a.Mesh.Scale = v1660.a.Mesh.Scale + Vector3.new(v1677, v1677, v1677) * 0.66
				v1660.a.Transparency = 0.2 + v1676 * 0.8
				v1660.b.Mesh.Scale = v1660.a.Mesh.Scale + Vector3.new(v1677, v1677, v1677) * 0.56
				v1660.ring.Top.ImageLabel.Size = UDim2.new(1 + v1678, 0, 1 + v1678, 0)
				v1660.ring.Top.ImageLabel.Position = UDim2.new(-v1678 / 2, 0, -v1678 / 2, 0)
				v1660.ring.Top.ImageLabel.Rotation = v1672 * 6
				v1660.ring.Bottom.ImageLabel.Size = v1660.ring.Top.ImageLabel.Size
				v1660.ring.Bottom.ImageLabel.Position = v1660.ring.Top.ImageLabel.Position
				v1660.ring.Bottom.ImageLabel.Rotation = v1672 * 6
				local _ = v1660.a.Mesh.Scale.Y / 2
				if (v_u_130.CFrame.p - p1655).magnitude < -(v1677 * 11.5 * v1672) then
					v1669.Enabled = true
				else
					v1669.Enabled = false
				end
				if p1657 * 0.8 < v1672 then
					local v1679 = (v1674 - 0.8) / 0.19999999999999996
					v1660.ring.Top.ImageLabel.ImageTransparency = v1679
					v1660.ring.Bottom.ImageLabel.ImageTransparency = v1679
					v1660.b.Transparency = v1679
					local v1680 = v1665:lerp(Vector3.new(1, 1, 1), v1679)
					v1669.TintColor = Color3.new(v1680.x, v1680.y, v1680.z)
					v1669.Brightness = 1 - v1679
				end
				if v1671 <= 0 then
					v1670 = tick()
					wait(v1659)
				else
					v1671 = v1671 - 0.03333333333333333
					v1670 = tick()
				end
			end
			v1660:Destroy()
			v1669:Destroy()
		end,
		["TallExplosion"] = function(p1681, p1682, p1683, p1684, p1685, p1686)
			-- upvalues: (copy) v_u_8, (copy) v_u_7
			local v1687 = v_u_8.ease.out.expo
			local v1688 = {}
			for v1689, v1690 in next, p1682 do
				local v1691 = p1685 and p1685:Clone() or Instance.new("Part")
				v1691.Material = "Neon"
				v1691.Transparency = 1
				v1691.Anchored = true
				v1691.CanCollide = false
				v1691.Size = Vector3.new(1, 1, 1) * (0.6 + v1689 / #p1682 * 0.4)
				v1691.CFrame = p1681
				v1691.Color = v1690
				if not p1685 then
					Instance.new("SpecialMesh", v1691).MeshType = "Sphere"
				end
				v1691.Parent = v_u_7
				table.insert(v1688, v1691)
			end
			if p1686 then
				_G.playSound(p1686, p1681)
			end
			local v1692 = tick()
			while tick() - v1692 < p1684 do
				local v1693 = (tick() - v1692) / p1684
				local v1694 = math.min(1, v1693)
				local v1695 = v1687(v1694, 0, 1, 1)
				for _, v1696 in next, v1688 do
					if p1685 then
						local v1697 = v1696.CFrame
						v1696.Size = p1683 * v1695
						v1696.CFrame = v1697
					else
						v1696.Mesh.Scale = p1683 * v1695
					end
					v1696.Transparency = v1694
				end
				wait(0)
			end
			for _, v1698 in next, v1688 do
				v1698:Destroy()
			end
		end,
		["Explosion3"] = function(p1699, p1700, p1701, p1702, p1703)
			-- upvalues: (copy) v_u_130, (copy) v_u_92, (copy) v_u_91, (copy) v_u_7
			if (v_u_130.CFrame.p - p1699).magnitude <= 1000 then
				local _ = v_u_92[UserSettings().GameSettings.SavedQualityLevel]
				local v1704 = 0
				local v1705 = game.ReplicatedStorage.Effects.Explosion3:Clone()
				v1705:TranslateBy(p1699 - v1705:GetModelCFrame().p)
				if p1703 then
					_G.playSound(p1703, p1699)
				end
				v1705.a.BrickColor = p1700
				v1705.a.CFrame = v1705.a.CFrame * CFrame.Angles(math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2)
				v1705.b.CFrame = v1705.a.CFrame
				v1705.ring.CFrame = v1705.a.CFrame * CFrame.Angles(0.7853981633974483, 0, 0)
				v1705.ring2.CFrame = v1705.a.CFrame * CFrame.Angles(-0.7853981633974483, 0, 0)
				if not v_u_91[UserSettings().GameSettings.SavedQualityLevel] then
					v1705.b.BrickColor = p1700
				end
				v1705.a.Sound.EmitterSize = p1702 * 2
				v1705.Parent = v_u_7
				if not p1703 then
					v1705.a.Sound:Play()
				end
				local v1706 = tick()
				local v1707 = 0
				for v1708 = 0, p1701 do
					local v1709 = tick() - v1706
					if v1709 > 0.06666666666666667 then
						v1707 = v1707 + v1709
					end
					local v1710 = p1702 / v1708
					local v1711 = v1708 / p1701
					if v1707 <= 0 then
						local v1712 = p1702 * (9 * v1711 + 9 * v1711 + 9 * v1711)
						local v1713 = 0.014 * v1712
						local v1714 = 0.019 * v1712
						v1705.a.Mesh.Scale = v1705.a.Mesh.Scale + Vector3.new(v1710, v1710, v1710)
						v1705.a.Transparency = v1711
						v1705.b.Mesh.Scale = v1705.a.Mesh.Scale * 0.8
						if p1701 * 0.8 < v1708 then
							local v1715 = (v1711 - 0.8) / 0.19999999999999996
							v1705.b.Transparency = v1715
						end
						local v1716 = v1711 * (2 - v1711)
						v1705.ring.Top.ImageLabel.ImageTransparency = v1716
						v1705.ring.Bottom.ImageLabel.ImageTransparency = v1716
						v1705.ring.Top.ImageLabel.Size = UDim2.new(1 + v1713, 0, 1 + v1713, 0)
						v1705.ring.Top.ImageLabel.Position = UDim2.new(-v1713 / 2, 0, -v1713 / 2, 0)
						v1705.ring.Top.ImageLabel.Rotation = v1708 * 9
						v1705.ring.Bottom.ImageLabel.Size = v1705.ring.Top.ImageLabel.Size
						v1705.ring.Bottom.ImageLabel.Position = v1705.ring.Top.ImageLabel.Position
						v1705.ring.Bottom.ImageLabel.Rotation = v1708 * 9
						v1705.ring2.Top.ImageLabel.ImageTransparency = v1716
						v1705.ring2.Bottom.ImageLabel.ImageTransparency = v1716
						v1705.ring2.Top.ImageLabel.Size = UDim2.new(1 + v1714, 0, 1 + v1714, 0)
						v1705.ring2.Top.ImageLabel.Position = UDim2.new(-v1714 / 2, 0, -v1714 / 2, 0)
						v1705.ring2.Top.ImageLabel.Rotation = v1708 * 9
						v1705.ring2.Bottom.ImageLabel.Size = v1705.ring2.Top.ImageLabel.Size
						v1705.ring2.Bottom.ImageLabel.Position = v1705.ring2.Top.ImageLabel.Position
						v1705.ring2.Bottom.ImageLabel.Rotation = v1708 * 9
						v1706 = tick()
						wait(v1704)
					else
						v1705.a.Mesh.Scale = v1705.a.Mesh.Scale + Vector3.new(v1710, v1710, v1710)
						v1707 = v1707 - 0.03333333333333333
						v1706 = tick()
					end
				end
				v1705:Destroy()
			end
		end,
		["Explosion4"] = function(p1717, p1718, p1719, p1720, p1721)
			-- upvalues: (copy) v_u_92, (copy) v_u_130, (copy) v_u_7
			if not v_u_92[UserSettings().GameSettings.SavedQualityLevel] or (v_u_130.CFrame.p - p1717).magnitude <= 700 then
				local _ = v_u_92[UserSettings().GameSettings.SavedQualityLevel]
				local v1722 = 0
				local v1723 = game.ReplicatedStorage.Effects.Explosion4:Clone()
				v1723.a.BrickColor = p1718
				v1723.a.CFrame = CFrame.new(p1717)
				v1723.ring.CFrame = CFrame.new(p1717)
				v1723.Parent = v_u_7
				if p1721 then
					local v1724 = next
					local v1725, v1726 = v1723:GetChildren()
					for _, v1727 in v1724, v1725, v1726 do
						if v1727:IsA("BasePart") then
							v1727.Material = p1721
						end
					end
				end
				local v1728 = tick()
				local v1729 = 0
				for v1730 = 0, p1719 do
					local v1731 = tick() - v1728
					if v1731 > 0.06666666666666667 then
						v1729 = v1729 + v1731
					end
					local v1732 = p1720 / v1730
					local v1733 = v1730 / p1719
					local v1734 = 2 * v1733 - 2
					local v1735 = 0.015 * p1720 * (6 * v1734 + 6 * v1734 * v1734)
					if v1729 <= 0 then
						v1723.a.Mesh.Scale = v1723.a.Mesh.Scale + Vector3.new(v1732, v1732, v1732)
						v1723.a.Transparency = v1733
						local v1736 = v1733 * (2 - v1733)
						v1723.ring.Image.Transparency = v1736
						v1723.ring.Image2.Transparency = v1736
						v1723.ring.Mesh.Scale = v1723.ring.Mesh.Scale + Vector3.new(v1735, 0, v1735)
						local v1737 = v1723.ring
						local v1738 = v1723.ring.CFrame * CFrame.Angles(0, 0.1, 0)
						local v1739 = v1733 * 1.5
						v1737.CFrame = v1738 + Vector3.new(0, v1739, 0)
						v1728 = tick()
						wait(v1722)
					else
						v1723.a.Mesh.Scale = v1723.a.Mesh.Scale + Vector3.new(v1732, v1732, v1732)
						v1723.ring.Mesh.Scale = v1723.ring.Mesh.Scale + Vector3.new(v1735, 0, v1735)
						local v1740 = v1723.ring
						local v1741 = v1723.ring.CFrame * CFrame.Angles(0, 0.1, 0)
						local v1742 = v1733 * 1.5
						v1740.CFrame = v1741 + Vector3.new(0, v1742, 0)
						v1729 = v1729 - 0.03333333333333333
						v1728 = tick()
					end
				end
				v1723:Destroy()
			end
		end,
		["Explosion5"] = function(p1743, p1744, p1745, p1746, p1747)
			-- upvalues: (copy) v_u_130, (copy) v_u_92, (copy) v_u_7
			if (v_u_130.CFrame.p - p1743).magnitude <= 700 then
				local _ = v_u_92[UserSettings().GameSettings.SavedQualityLevel]
				local v1748 = 0
				local v1749 = game.ReplicatedStorage.Effects.Explosion5:Clone()
				v1749:TranslateBy(p1743 - v1749:GetModelCFrame().p)
				v1749.Color1.BrickColor = p1744
				v1749.Color2.BrickColor = p1744
				local v1750 = math.random() * 3.141592653589793 * 2
				local v1751 = math.random() * 3.141592653589793 * 2
				local v1752 = math.random() * 3.141592653589793 * 2
				local v1753 = Vector3.new(v1750, v1751, v1752)
				v1749.Color1.CFrame = v1749.Color1.CFrame * CFrame.Angles(v1753.x, v1753.y, v1753.z)
				v1749.Color2.CFrame = v1749.Color1.CFrame * CFrame.Angles(v1753.x + 0.7853981633974483, v1753.y + 1.5707963267948966, v1753.z + 2.181661564992912)
				v1749.Part1.CFrame = v1749.Part1.CFrame * CFrame.Angles(math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2)
				v1749.Part2.CFrame = v1749.Part2.CFrame * CFrame.Angles(math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2, math.random() * 3.141592653589793 * 2)
				v1749.ring.CFrame = v1749.Color1.CFrame
				v1749.ring.Sound.EmitterSize = p1747 * 2
				v1749.Parent = v_u_7
				v1749.ring.Sound:Play()
				local v1754 = tick()
				local v1755 = 0
				for v1756 = 0, p1746 do
					local v1757 = tick() - v1754
					if v1757 > 0.06666666666666667 then
						v1755 = v1755 + v1757
					end
					local _ = p1747 / v1756
					local v1758 = v1756 / p1746
					local v1759 = v1758 * (2 - v1758)
					local v1760 = v1758 * p1747 * 0.33
					local v1761 = v1756 / (p1746 / 180)
					local v1762 = math.rad(v1761)
					local v1763 = math.sin(v1762)
					local v1764 = v1749.Color1.Mesh
					local v1765 = p1747 * v1758 * 2
					local v1766 = p1747 * v1758 * 2
					local v1767 = (p1745.z + p1747 * 5) * v1763
					v1764.Scale = Vector3.new(v1765, v1766, v1767)
					local v1768 = v1749.Color2.Mesh
					local v1769 = p1747 * v1758 * 1.5
					local v1770 = p1747 * v1758 * 1.5
					local v1771 = (p1745.z + p1747 * 3) * (v1759 + v1763)
					v1768.Scale = Vector3.new(v1769, v1770, v1771)
					local v1772 = v1749.Part1.Mesh
					local v1773 = p1747 * v1759
					local v1774 = p1747 * v1759
					local v1775 = p1747 * v1759
					v1772.Scale = p1745 + Vector3.new(v1773, v1774, v1775)
					local v1776 = v1749.Part2.Mesh
					local v1777 = p1747 * v1759
					local v1778 = p1747 * v1759
					local v1779 = p1747 * v1759
					v1776.Scale = p1745 + Vector3.new(v1777, v1778, v1779)
					v1749.Part1.CFrame = v1749.Part1.CFrame * CFrame.new(0, 0, 0.04) * CFrame.Angles(0.004, 0.004, 0.004)
					v1749.Part2.CFrame = v1749.Part2.CFrame * CFrame.new(0, 0, 0.04) * CFrame.Angles(-0.004, -0.004, -0.004)
					v1749.ring.Top.ImageLabel.Size = UDim2.new(1 + v1760, 0, 1 + v1760, 0)
					v1749.ring.Top.ImageLabel.Position = UDim2.new(-v1760 / 2, 0, -v1760 / 2, 0)
					v1749.ring.Top.ImageLabel.Rotation = v1756 * 6
					v1749.ring.Bottom.ImageLabel.Size = v1749.ring.Top.ImageLabel.Size
					v1749.ring.Bottom.ImageLabel.Position = v1749.ring.Top.ImageLabel.Position
					v1749.ring.Bottom.ImageLabel.Rotation = v1756 * 6
					v1749.ring.Top.ImageLabel.ImageTransparency = v1759 * 1.5
					v1749.ring.Bottom.ImageLabel.ImageTransparency = v1759 * 1.5
					if p1746 * 0.5 < v1756 then
						local v1780 = (v1758 - 0.5) / 0.5
						v1749.Color1.Transparency = v1780 * 1.75
						v1749.Color2.Transparency = v1780 * 1.75
					end
					if p1746 * 0.8 < v1756 then
						local v1781 = (v1758 - 0.8) / 0.19999999999999996
						v1749.Part1.Transparency = v1781
						v1749.Part2.Transparency = v1781
					end
					if v1755 <= 0 then
						v1754 = tick()
						wait(v1748)
					else
						v1755 = v1755 - 0.03333333333333333
						v1754 = tick()
					end
				end
				v1749:Destroy()
			end
		end
	}
	for _, v1783 in v1652, v1653, v1654 do
		if v_u_1623[v1783.Name] then
			warn(("An Effect with the name %s Already exists!"):format(v1783.Name))
		end
		v_u_1623[v1783.Name] = require(v1783)({
			["effects"] = v_u_1623,
			["explosions"] = v_u_1782,
			["Storage"] = v_u_7,
			["tween"] = v_u_8,
			["ign"] = v_u_6,
			["map"] = v_u_9,
			["Debris"] = v_u_10,
			["Util"] = v11,
			["Mouse"] = v24,
			["LightingSettings"] = v_u_27,
			["Proxy"] = game.ReplicatedStorage.Remotes.Fx.Proxy
		})
	end
	v_u_6:FindFirstChild(".Attacks").ChildAdded:Connect(function(p1784)
		if p1784.Name == "DragonOrb" then
			local v1785 = p1784:WaitForChild("Layer").Weld
			local v1786, v1787, v1788, v1789, v1790, v1791, v1792, v1793, v1794, v1795, v1796, v1797 = CFrame.new():components()
			v1785.C0 = CFrame.new(v1786, v1787, v1788, v1789, v1790, v1791, v1792, v1793, v1794, -v1795, -v1796, -v1797)
		end
	end)
	local v_u_1798 = {}
	local function v_u_1801(p_u_1799)
		-- upvalues: (copy) v_u_1798
		local v1800 = v_u_1798
		table.insert(v1800, {
			["Humanoid"] = p_u_1799,
			["Last"] = 0
		})
		p_u_1799:GetPropertyChangedSignal("HipHeight"):Connect(function()
			-- upvalues: (copy) p_u_1799
			p_u_1799.HipHeight = 0
		end)
	end
	v_u_6:FindFirstChild(".ServerEffects").ChildAdded:Connect(function(p1802)
		-- upvalues: (copy) v_u_1801
		if p1802:IsA("Model") and p1802.Name:find("Monster") then
			v_u_1801((p1802:WaitForChild("FakeHumanoid")))
		end
	end)
	local v1803 = next
	local v1804, v1805 = v_u_6:FindFirstChild(".Attacks"):GetChildren()
	for _, v1806 in v1803, v1804, v1805 do
		if v1806:IsA("BasePart") and v1806.Name == "DragonOrb" then
			local v1807 = v1806:WaitForChild("Layer").Weld
			local v1808, v1809, v1810, v1811, v1812, v1813, v1814, v1815, v1816, v1817, v1818, v1819 = CFrame.new():components()
			v1807.C0 = CFrame.new(v1808, v1809, v1810, v1811, v1812, v1813, v1814, v1815, v1816, -v1817, -v1818, -v1819)
		end
	end
	local v1820 = next
	local v1821, v1822 = v_u_6:FindFirstChild(".ServerEffects"):GetChildren()
	for _, v1823 in v1820, v1821, v1822 do
		if v1823:IsA("Model") and v1823.Name:find("Monster") then
			v_u_1801((v1823:WaitForChild("FakeHumanoid")))
		end
	end
	local function v1833(p1824, ...)
		-- upvalues: (copy) v_u_1782, (copy) v_u_1623, (copy) v_u_20, (copy) v_u_8
		if p1824 == "Glow" then
			_G.createGlow(...)
			return
		elseif p1824 == "Debris" then
			_G.createDebris(...)
			return
		elseif v_u_1782[p1824] then
			v_u_1782[p1824](...)
			return
		elseif v_u_1623[p1824] then
			v_u_1623[p1824](...)
			return
		elseif p1824 == "AttackEffect" then
			local v1825, v1826, v1827, v1828 = ...
			v_u_20[v1826].Attacks[v1827]:ClientFunction(v1825, nil, v1828)
			return
		elseif p1824 == "Sound" then
			_G.playSound(...)
			return
		elseif p1824 == "PlayAnim" then
			_G.PlayAnim(...)
			return
		elseif p1824 == "StopAnim" then
			_G.StopAnim(...)
		elseif p1824 == "ResizeSymbol" then
			local v1829 = { ... }
			local v1830 = v1829[2]
			local v1831 = v1829[3]
			local v1832 = v_u_8.ease[v1830][v1831]
			_G.resizeSymbol(v1829[1], v1832, select(4, unpack(v1829)))
		end
	end
	game.ReplicatedStorage.Remotes.Fx.Proxy.Event:Connect(v1833)
	game.ReplicatedStorage.Remotes.Fx.OnClientEvent:connect(v1833)
	local v_u_1834 = wait
	local v_u_1835 = 0
	local function v1838()
		-- upvalues: (copy) v_u_91, (ref) v_u_1834, (ref) v_u_1835
		local v1836 = UserSettings().GameSettings.SavedQualityLevel
		local v1837 = game:GetService("RunService").RenderStepped
		if v_u_91[v1836] then
			v_u_1834 = v1837.wait
			v_u_1835 = v1837
		else
			v_u_1834 = wait
			v_u_1835 = 0
		end
	end
	UserSettings().GameSettings.Changed:connect(v1838)
	local v1839 = UserSettings().GameSettings.SavedQualityLevel
	local v1840 = game:GetService("RunService").RenderStepped
	if v_u_91[v1839] then
		v_u_1834 = v1840.wait
		v_u_1835 = v1840
	else
		v_u_1834 = wait
		v_u_1835 = 0
	end
	local v_u_1841 = math.sin
	local v_u_1842 = 0.016666666666666666
	local v_u_1843 = tick()
	local function v_u_2032()
		-- upvalues: (ref) v_u_1843, (ref) v_u_1834, (ref) v_u_1835, (copy) v_u_61, (copy) v_u_21, (copy) v_u_7, (copy) v_u_25, (copy) v_u_3, (copy) v_u_1, (copy) v_u_55, (copy) v_u_2, (ref) v_u_1842, (copy) v_u_22, (copy) v_u_57, (copy) v_u_1841, (copy) v_u_56, (copy) v_u_32, (copy) v_u_166, (copy) v_u_31, (copy) v_u_58, (copy) v_u_59, (copy) v_u_60, (copy) v_u_30, (copy) v_u_33, (copy) v_u_29, (copy) v_u_28, (copy) v_u_34, (copy) v_u_1624, (copy) v_u_6, (copy) v_u_1798
		v_u_1843 = tick()
		while true do
			v_u_1834(v_u_1835)
			local v1844 = tick() - v_u_1843
			local v1845 = tick()
			for v1846, v1847 in next, v_u_61 do
				if not v1847.emit then
					v1847.emit = true
					v1847.dust.Particle:Emit(20)
				end
				if v1845 - v1847.time > v1847.lifetime then
					v1847.dust:Destroy()
					table.remove(v_u_61, v1846)
				end
			end
			for v1848, v1849 in next, v_u_21 do
				local v1850 = v1845 - v1849.time
				v1844 = v1844 > 0.03333333333333333 and 0.03333333333333333 or v1844
				if v1850 < v1849.lifetime then
					local v1851 = Ray.new(v1849.obj.CFrame.p, v1849.velocity * 0.5 * v1849.size.z)
					local v1852, v1853, v1854 = workspace:FindPartOnRayWithIgnoreList(v1851, { v1849.obj, v_u_7 })
					if v1852 then
						local v1855 = v_u_25:Clone()
						v1855.Particle.Color = ColorSequence.new(v1849.obj.BrickColor.Color, v1849.obj.BrickColor.Color)
						v1855.Particle.Speed = NumberRange.new(v1849.velocity.magnitude * 2.5, v1849.velocity.magnitude * 2.5)
						v1855.Particle.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, v1849.size.magnitude), NumberSequenceKeypoint.new(1, v1849.size.magnitude) })
						v1855.Size = v_u_3(v1849.size.magnitude, v1849.size.magnitude, v1849.size.magnitude)
						v1855.CFrame = v_u_1(v1853)
						local v1856 = v_u_61
						table.insert(v1856, {
							["dust"] = v1855,
							["time"] = v1845,
							["lifetime"] = 1.5,
							["emit"] = false
						})
						v1855.Parent = v_u_7
						v1849.cframe = v_u_1(v1853)
						if v1849.obj.Mesh.Scale.magnitude >= 5 and v1849.velocity.magnitude > 1.5 then
							v_u_55(v1849.cframe * v_u_2(0, -3 * math.random(), 0), v1849.size / 2, v1854 * v1849.velocity.magnitude * 0.8, v1849.acceleration, v1849.lifetime, v1849.obj)
							v_u_55(v1849.cframe * v_u_2(0, 3 * math.random(), 0), v1849.size / 2, v1854 * v1849.velocity.magnitude * 0.8, v1849.acceleration, v1849.lifetime, v1849.obj)
						end
						v1849.obj:Destroy()
						table.remove(v_u_21, v1848)
					end
				end
				v1849.obj.CFrame = v_u_1(v1849.obj.CFrame.p + v1849.velocity * (v1844 / v_u_1842) * 0.98 + v1849.acceleration * v1844 ^ 2, v1849.cframe.p)
				v1849.velocity = v1849.obj.CFrame.p - v1849.prevcf.p
				v1849.prevcf = v1849.obj.CFrame
				if v1849.lifetime < v1850 then
					v1849.obj.Transparency = v1850 - v1849.lifetime
					if v1849.lifetime + 1 < v1850 then
						v1849.obj:Destroy()
						table.remove(v_u_21, v1848)
					end
				end
			end
			for v1857, v1858 in next, v_u_22 do
				local v1859 = v1845 - v1858.time
				v1844 = v1844 > 0.03333333333333333 and 0.03333333333333333 or v1844
				v1858.obj.CFrame = v1858.obj.CFrame + v1858.velocity * (v1844 / v_u_1842) * 0.98 + v1858.acceleration * v1844 ^ 2
				v1858.velocity = v1858.obj.CFrame.p - v1858.prevcf.p
				v1858.prevcf = v1858.obj.CFrame
				if v1858.lifetime < v1859 then
					v1858.obj.a.Enabled = false
					v1858.obj.b.Enabled = false
					if v1858.lifetime + v1858.obj.a.Lifetime.Max < v1859 then
						v1858.obj:Destroy()
						table.remove(v_u_22, v1857)
					end
				end
			end
			for v1860, v1861 in next, v_u_57 do
				local v1862 = v1845 - v1861.start
				local v1863 = v1861.part
				local v1864 = v1861.part.CFrame
				local v1865 = v1844 * 3
				v1863.CFrame = v1864 + Vector3.new(0, v1865, 0)
				local v1866 = v1861.part.BillboardGui
				local v1867 = v_u_1841(v1862 * 3) * 2
				v1866.StudsOffset = Vector3.new(v1867, 0, 0)
				if v1862 >= 3 then
					v1861.part:Destroy()
					v_u_57[v1860] = nil
				elseif v1862 >= 2.2 then
					local v1868 = (v1862 - 2.2) / 0.7999999999999998
					v1861.part.BillboardGui.Icon.ImageTransparency = v1868
					v1861.part.BillboardGui.Icon.Label.TextTransparency = v1868
					v1861.part.BillboardGui.Icon.Label.TextStrokeTransparency = v1868 * 2
				end
			end
			for v1869, v1870 in next, v_u_56 do
				local v1871 = v1870.duration
				local v1872 = v1870.ease and v1870.ease(v1845 - v1870.start, 0, v1870.duration, v1870.duration) or v1845 - v1870.start
				if v1871 <= v1845 - v1870.start then
					for _, v1873 in next, v1870.parts do
						v1873.Part:Destroy()
					end
					v_u_56[v1869] = nil
				elseif v1871 * 0.75 <= v1872 then
					local v1874 = (v1872 - v1871 * 0.75) / (v1871 - v1871 * 0.75)
					for v1875, v1876 in next, v1870.parts do
						v1876.Part.Transparency = v1875 == 1 and v1874 and v1874 or 0.25 + v1874 * 0.75
						v1876.Mesh.Scale = (v1870.startSize + Vector3.new(v1872, v1872, v1872) * v1870.finalSize) * (v1875 == 1 and 0.75 or 1)
					end
				else
					for v1877, v1878 in next, v1870.parts do
						v1878.Mesh.Scale = (v1870.startSize + Vector3.new(v1872, v1872, v1872) * v1870.finalSize) * (v1877 == 1 and 0.75 or 1)
					end
				end
			end
			for v1879, v_u_1880 in next, _G.resizingSymbols do
				local v1881 = v1845 - v_u_1880[1]
				local v_u_1882 = v_u_1880[2]
				local v1883 = v_u_1880[6]
				local v1884 = v_u_1880[3](v1881, v_u_1880[4], v_u_1880[5], v1883)
				if v1881 / v1883 > 1 or not (v_u_1882.Parent and v_u_1882:FindFirstChild("SpecialMesh")) then
					if v_u_1880[9] then
						pcall(v_u_1880[9])
					end
					_G.resizingSymbols[v1879] = nil
				else
					v_u_1882.SpecialMesh.Scale = Vector3.new(v1884, v1884, 0)
					if v_u_1880[7] == "out" then
						v_u_1882.FrontDecal.Transparency = v1881 / v1883
						v_u_1882.BackDecal.Transparency = v1881 / v1883
					elseif v_u_1880[7] == "in" then
						v_u_1882.FrontDecal.Transparency = 1 - v1881 / v1883
						v_u_1882.BackDecal.Transparency = 1 - v1881 / v1883
					end
					if v_u_1880[8] then
						pcall(function()
							-- upvalues: (copy) v_u_1880, (copy) v_u_1882
							v_u_1880[8](v_u_1882)
						end)
					end
				end
			end
			for v1885, v1886 in next, v_u_32 do
				local v1887 = v1886.duration
				local v1888 = v1845 - v1886.start
				if v1887 <= v1888 then
					v1886.gui:Destroy()
					v_u_32[v1885] = nil
				elseif v1887 * 0.75 <= v1888 then
					local v1889 = (v1888 - v1887 * 0.75) / (v1887 - v1887 * 0.75)
					v1886.frame.Transparency = v1889
				else
					local v1890 = v1888 / 0.1
					local v1891 = v1886.frame
					local v1892 = math.min(v1890, 1)
					v1891.Transparency = 1 - math.max(v1892)
				end
			end
			for v1893, v1894 in next, v_u_166 do
				local v1895 = v1894.duration
				v1894.counter = v1894.counter + v1844
				if v1894.counter > v1894.rate and v1894.part.Parent then
					v1894.counter = 0
					local v1896 = v1894.copy:Clone()
					v1896.CFrame = v1894.part.CFrame
					v1896.Transparency = v1894.part.Transparency
					v1896.Parent = v_u_7
					local v1897 = v1894.parts
					local v1898 = {
						["c"] = v1896,
						["start_t"] = v1896.Transparency,
						["start"] = tick()
					}
					table.insert(v1897, v1898)
				elseif v1894.copy and not v1894.part.Parent then
					v1894.copy:Destroy()
					v1894.copy = nil
				end
				for v1899, v1900 in next, v1894.parts do
					local v1901 = v1845 - v1900.start
					if v1895 <= v1901 then
						v1900.c:Destroy()
						v1894.parts[v1899] = nil
					else
						v1900.c.Transparency = v1900.start_t + v1901 / v1895 * (1 - v1900.start_t)
					end
				end
				if #v1894.parts == 0 and not v1894.part.Parent then
					for _, v1902 in next, v1894.parts do
						v1902.c:Destroy()
					end
					v_u_166[v1893] = nil
				end
			end
			for v1903, v1904 in next, v_u_31 do
				local v1905 = v1904.duration
				v1904.counter = v1904.counter + v1844
				local v1906 = v1905 < v1845 - v1904.start
				if v1904.counter > v1904.rate and (v1904.track.Parent and not v1906) then
					v1904.counter = 0
					local v1907 = v1904.clone:Clone()
					v1907.Parent = v_u_7
					local v1908 = v1904.trails
					local v1909 = {
						["c"] = v1907,
						["last"] = v1904.last,
						["length"] = 0,
						["start"] = tick()
					}
					table.insert(v1908, v1909)
				end
				if v1904.track.Parent and (not v1906 or #v1904.trails ~= 0) then
					for v1910, v1911 in next, v1904.trails do
						local v1912 = v1845 - v1911.start
						if v1905 < v1912 then
							v1911.c:Destroy()
							table.remove(v1904.trails, v1910)
						else
							local v1913 = v1904.size + (v1904.end_size - v1904.size) * (v1912 / v1905)
							v1911.c.Transparency = v1904.trans + (v1904.end_trans - v1904.trans) * (v1912 / v1905)
							if v1910 == #v1904.trails then
								local v1914 = v1904.track:GetRenderCFrame()
								local v1915 = (v1911.last - v1914.p).magnitude
								v1911.c.CFrame = CFrame.new(v1911.last, v1914.p) * CFrame.new(0, 0, -v1915 / 2)
								v1911.c.Mesh.Scale = Vector3.new(v1913, v1913, v1915)
								v1911.length = v1915
								v1904.last = v1914.p
							else
								local v1916 = v1911.c.Mesh
								local v1917 = v1911.length
								v1916.Scale = Vector3.new(v1913, v1913, v1917)
							end
						end
					end
				else
					for _, v1918 in next, v1904.trails do
						v1918.c:Destroy()
					end
					v1904.clone:Destroy()
					v_u_31[v1903] = nil
				end
			end
			for v1919, v1920 in next, v_u_58 do
				local v1921 = v1920.duration
				local v1922 = v1845 - v1920.start
				if v1921 <= v1922 then
					v1920.Part:Destroy()
					v_u_58[v1919] = nil
				else
					local v1923 = v1922 / v1921
					v1920.angle = v1920.angle + v1844 * 60
					local v1924 = v1920.Direction
					local v1925 = v1920.xOffset
					local v1926 = v1920.yOffset
					local v1927 = v1924 * 720 * v1923
					local v1928 = v1925 + (v1925 + 8 - v1925) * v1922
					local v1929 = v1926 + -v1926 * v1922
					local v1930 = v1920.angle
					local v1931 = math.rad(v1930) * 5
					local v1932 = v1924 * math.sin(v1931)
					v1920.Part.Transparency = v1923
					v1920.Part.CFrame = CFrame.new(v1920.Origin) * CFrame.Angles(0, math.rad(v1927), 0) * CFrame.new(0, v1929 + v1932, v1928)
				end
			end
			for v1933, v1934 in next, v_u_59 do
				if v1934.Part and v1934.Part.Parent then
					v1934.Angle = v1934.Angle + 1
					for v1935, v1936 in next, v1934.Parts do
						local v1937 = 360 / #v1934.Parts * v1935 + v1934.Angle
						local v1938 = math.rad(v1937)
						local v1939 = v1938 * v1934.Speed
						local v1940 = math.sin(v1939)
						local v1941 = v1938 * v1934.Speed
						local v1942 = math.cos(v1941)
						local v1943 = v1940 * v1934.Radius
						local v1944 = v1942 * v1934.Radius
						local v1945 = Vector3.new(v1943, 0, v1944)
						v1936.CFrame = CFrame.new(v1934.Part.CFrame.p + v1945, v1934.Part.CFrame.p)
					end
				elseif not v1934.Destroy then
					v1934.Start = tick()
					v1934.Destroy = true
				end
				if v1934.Destroy then
					local v1946 = (v1845 - v1934.Start) / 1
					if v1946 > 0.99 then
						for _, v1947 in next, v1934.Parts do
							v1947:Destroy()
						end
						v_u_59[v1933] = nil
					else
						for _, v1948 in next, v1934.Parts do
							v1948.Transparency = v1946
						end
					end
				end
			end
			for v1949, v1950 in next, v_u_60 do
				local v1951 = (v1845 - v1950.start) / v1950.duration
				if v1951 > 0.99 then
					for _, v1952 in next, v1950.Parts do
						v1952.Part:Destroy()
					end
					v_u_60[v1949] = nil
				else
					local v1953 = 1 - v1951
					for _, v1954 in next, v1950.Parts do
						v1954.Part.Transparency = v1951
						v1954.Part.CFrame = v1954.CF * CFrame.new(v1951 * v1950.Speed, 0, 0)
						v1954.Mesh.Scale = v1954.Scale / 0.2 * v1953
					end
				end
			end
			for v1955, v1956 in next, v_u_30 do
				local v1957 = v1845 - v1956.start
				local v1958 = v1956.duration
				local v1959 = v1957 / v1956.duration
				if v1958 <= v1957 then
					for _, v1960 in next, v1956.rings do
						v1960.Part:Destroy()
					end
					v_u_30[v1955] = nil
				elseif v1958 * 0.75 <= v1957 then
					local v1961 = (v1957 - v1958 * 0.75) / (v1958 - v1958 * 0.75)
					for _, v1962 in next, v1956.rings do
						v1962.Part.Transparency = 0.1 + v1961
						v1962.Part.CFrame = v1962.CF * CFrame.Angles(v1962.Direction * v1956.speed * v1959, v1962.Direction * v1956.speed * v1959, v1962.Direction * v1956.speed * v1959)
						v1962.Part.Size = (Vector3.new(1.4, 1.4, 0.25) * v1956.startSize):lerp(Vector3.new(1.4, 1.4, 0.25) * v1956.endSize, v1959)
					end
				else
					for _, v1963 in next, v1956.rings do
						v1963.Part.CFrame = v1963.CF * CFrame.Angles(v1963.Direction * v1956.speed * v1959, v1963.Direction * v1956.speed * v1959, v1963.Direction * v1956.speed * v1959)
						v1963.Part.Size = (Vector3.new(1.4, 1.4, 0.25) * v1956.startSize):lerp(Vector3.new(1.4, 1.4, 0.25) * v1956.endSize, v1959)
					end
				end
			end
			for v1964, v1965 in next, v_u_33 do
				local v1966 = v1965.p
				local _ = v1965.m
				local v1967 = v1845 - v1965.start
				local v1968 = v1967 / v1965.duration
				if v1965.duration <= v1967 then
					v1966:Destroy()
					v_u_33[v1964] = nil
				else
					local v1969 = v1965.mesh.Scale / v1965.part.Size
					local v1970 = v1969.y
					local v1971 = 3.141592653589793 * v1968
					local v1972 = 2 + math.sin(v1971) ^ 0.3183 * v1969.x
					local v1973 = v1972 * 0.1
					v1966.Size = Vector3.new(v1972, v1972, v1973)
					v1966.CFrame = v1965.part.CFrame * CFrame.new(0, v1969.y / 2 - v1970 * v1968, 0) * CFrame.Angles(1.5707963267948966, 0, 0)
				end
			end
			for v1974, v1975 in next, v_u_29 do
				local v1976 = v1975.start
				local v1977 = v1975.duration
				local v1978 = v1845 - v1976
				local v1979 = v1978 / v1977
				if v1977 <= v1978 then
					v1975.p:Destroy()
					v_u_29[v1974] = nil
				elseif v1977 * 0.75 <= v1978 then
					local v1980 = (v1978 - v1977 * 0.75) / (v1977 - v1977 * 0.75)
					local v1981 = v1979 * 60
					v1975.p.Top.ImageLabel.ImageTransparency = v1980
					v1975.p.Bottom.ImageLabel.ImageTransparency = v1980
					v1975.p.Top.ImageLabel.Rotation = v1981 * 2
					v1975.p.Bottom.ImageLabel.Rotation = v1981 * 2
				else
					local v1982 = v1979 * 60
					v1975.p.Top.ImageLabel.ImageTransparency = 0
					v1975.p.Bottom.ImageLabel.ImageTransparency = 0
					v1975.p.Top.ImageLabel.Rotation = v1982 * 2
					v1975.p.Bottom.ImageLabel.Rotation = v1982 * 2
				end
			end
			for v1983, v_u_1984 in next, v_u_28 do
				local v1985 = tick() - v_u_1984.start
				local v_u_1986 = v1985 / v_u_1984.duration
				if v_u_1984.duration < v1985 then
					v_u_1984.clone:Destroy()
					table.remove(v_u_28, v1983)
				else
					pcall(function()
						-- upvalues: (copy) v_u_1984, (copy) v_u_1986
						v_u_1984.clone:Fade(v_u_1986)
					end)
				end
			end
			for v1987, v1988 in next, v_u_34 do
				local v1989 = tick() - v1988.start
				local _ = v1989 / v1988.duration
				if v1988.duration < v1989 then
					if v1988.duration * 1.25 < v1989 then
						for _, v1990 in next, v1988.parts do
							v1990:Destroy()
						end
						table.remove(v_u_34, v1987)
					else
						local v1991 = (v1989 - v1988.duration * 1.25) / (v1988.duration - v1988.duration * 1.25)
						local v1992 = math.clamp(v1991, 0, 1)
						v1988.obj:fade(1, 1 - v1992)
						for v1993, v1994 in next, v1988.parts do
							local v1995 = v1993 == 1 and 1 or -1
							v1994.CFrame = v1994.CFrame * CFrame.Angles(0, v1995 * -v1988.rotationIncrement, v1988.rotationIncrement)
						end
					end
				else
					for v1996, v1997 in next, v1988.parts do
						local v1998 = v1996 == 1 and 1 or -1
						v1997.CFrame = v1997.CFrame * CFrame.Angles(0, v1998 * -v1988.rotationIncrement, v1988.rotationIncrement)
					end
				end
			end
			for v1999, v2000 in next, v_u_1624 do
				local v2001 = v2000.Clone
				local v2002 = v2000.HRP
				local v2003 = v2000.cloneWelds
				local v2004 = v2000.playerWelds
				local v2005
				if v2002.Parent then
					v2005 = v2002.Parent:FindFirstChild("Humanoid")
				else
					v2005 = nil
				end
				if v2001.Parent and v2002.Parent then
					if v2005 then
						local _ = v2005.Health > 0
					end
					if v2000.Mimic then
						local v2006 = v2001:FindFirstChild("Humanoid")
						local v2007 = v2001:FindFirstChild("HumanoidRootPart")
						if v2006 and v2007 then
							for v2008, v2009 in next, v2003 do
								if v2004[v2008] then
									v2009.Transform = v2004[v2008].Transform
								end
							end
							local v2010 = workspace
							local v2011 = Ray.new
							local v2012 = v2007.Position
							local v2013 = -v2001:GetModelSize().Y / 2
							local v2014 = v2010:FindPartOnRayWithIgnoreList(v2011(v2012, (Vector3.new(0, v2013, 0))), { v2001, v_u_6 })
							local v2015 = v2002.Velocity.X
							local v2016 = v2002.Velocity.Z
							local v2017 = Vector3.new(v2015, 0, v2016).Magnitude > 2
							v2006.WalkSpeed = v2002.Parent.Humanoid.WalkSpeed
							if v2014 then
								if v2002.Velocity.Y > -1 then
									v2007.Velocity = v2002.Velocity
								end
							elseif v2002.Velocity.Y > 10 then
								v2007.Velocity = v2002.Velocity
							else
								local v2018 = v2002.Velocity * Vector3.new(1, 0, 1)
								local v2019 = v2007.Velocity.Y
								v2007.Velocity = v2018 + Vector3.new(0, v2019, 0)
							end
							v2007.CFrame = v2002.CFrame - v2002.CFrame.p + v2007.CFrame.p
							local v2020 = CFrame.new(v2007.Position, v2007.Position + v2002.CFrame.lookVector)
							local v2021 = (v2017 and 1 or 0) * -v2006.WalkSpeed
							v2006:MoveTo(v2020 * Vector3.new(0, 0, v2021))
						end
					end
				else
					if v2001 and v2001.Parent then
						v2001:Destroy()
					end
					table.remove(v_u_1624, v1999)
				end
			end
			for v2022, v2023 in next, v_u_1798 do
				if v2023.Humanoid.Parent then
					local v2024 = next
					local v2025, v2026 = v2023.Humanoid:GetChildren()
					for _, v2027 in v2024, v2025, v2026 do
						if v2027.ClassName:find("Value") then
							if not v2023[v2027] then
								v2023[v2027] = {
									["Object"] = v2027,
									["Value"] = v2027.Value
								}
							end
							local v2028 = v2023[v2027].Object
							local v2029 = v2023[v2027].Value
							local v2030 = v2023[v2027].Object.Value
							local v2031 = v1844 * 10
							v2028.Value = v2029 + (v2030 - v2029) * v2031
							v2023[v2027].Value = v2023[v2027].Object.Value
						end
					end
				else
					table.remove(v_u_1798, v2022)
				end
			end
			v_u_1842 = v1844
			v_u_1843 = tick()
		end
	end
	spawn(v_u_2032)
	spawn(function()
		-- upvalues: (ref) v_u_1843, (copy) v_u_2032
		wait(60)
		while wait(10) do
			if tick() - v_u_1843 > 30 then
				print("autofixing fx")
				v_u_1843 = tick()
				spawn(v_u_2032)
			end
		end
	end)
	game:GetService("RunService"):BindToRenderStep("FakeWelds", 10000, function(_)
		-- upvalues: (copy) v_u_167
		for v2033, v2034 in next, v_u_167 do
			if v2034[1] and (v2034[2] and (v2034[1].Parent and v2034[2].Parent)) then
				v2034[1].CFrame = v2034[2].CFrame * v2034[3]
			else
				table.remove(v_u_167, v2033)
			end
		end
	end)
end
