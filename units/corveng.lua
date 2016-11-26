return {
	corveng = {
		acceleration = 0.83,
		airsightdistance = 700,
		brakerate = 0.065,
		buildcostenergy = 2800,
		buildcostmetal = 75,
		buildpic = "CORVENG.DDS",
		buildtime = 3333,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON VTOL ANTIFLAME ANTIEMG ANTILASER NOTLAND NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 110,
		description = "Fighter",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxdamage = 140,
		maxslope = 10,
		maxvelocity = 9.92,
		maxwaterdepth = 255,
		name = "Avenger",
		nochasecategory = "NOTAIR",
		objectname = "CORVENG",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGeneric",
		sightdistance = 200,
		turnrate = 839,
		blocking = false,
		customparams = {
			death_sounds = "generic",
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
		weapondefs = {
			corvtol_missile_a2a = {
				areaofeffect = 48,
				avoidfeature = false,
		    canattackground = false,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailtiny",
				explosiongenerator = "custom:genericshellexplosion-small-aa",
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "GuidedMissiles",
				noselfdamage = true,
				range = 770,
				reloadtime = 0.9,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "Rocklit3",
				startvelocity = 300,
				texture2 = "coresmoketrail",
				tolerance = 12000,
				tracks = true,
				turnrate = 14000,
				weaponacceleration = 270,
				weapontimer = 4.25,
				weapontype = "MissileLauncher",
				weaponvelocity = 777,
				damage = {
					bombers = 125,
					commanders = 5,
					default = 23,
					fighters = 200,
					subs = 5,
					vtol = 125,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "CORVTOL_MISSILE_A2A",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
