return {
	armmark = {
		acceleration = 0.045,
		activatewhenbuilt = true,
		brakerate = 0.054,
		buildcostenergy = 1229,
		buildcostmetal = 101,
		buildpic = "ARMMARK.DDS",
		buildtime = 3800,
		canattack = false,
		canmove = true,
		category = "KBOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "26 24 16",
		collisionvolumetype = "box",
		corpse = "dead",
		description = "Radar Kbot",
		energymake = 8,
		energyuse = 20,
		explodeas = "BIG_UNITEX",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 320,
		maxslope = 16,
		maxvelocity = 1.35,
		maxwaterdepth = 0,
		movementclass = "KBOT2",
		name = "Marky",
		objectname = "ARMMARK",
		onoffable = true,
		radardistance = 2200,
		selfdestructas = "BIG_UNIT",
		sightdistance = 900,
		sonardistance = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.891,
		turnrate = 505,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-2.9700012207 0.0 2.42810058594",
				collisionvolumescales = "23.0599975586 13.375 26.6004943848",
				collisionvolumetype = "Box",
				damage = 280,
				description = "Marky Wreckage",
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 76,
				object = "ARMMARK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 256,
				description = "Marky Heap",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 38,
				object = "2X2A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "akradsel",
			},
		},
	},
}
