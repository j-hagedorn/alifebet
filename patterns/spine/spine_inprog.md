---
title: "Spine"
author: "J. Hagedorn"
output: 
  md_document:
    variant: gfm
  pdf_document:
    toc: true
---

SHH: The sonic hedgehog (SHH) signaling molecule assumes various roles in patterning the central nervous system (CNS) during vertebrate development. One of the most characterized functions of SHH is its role in the induction of the floor plate and diverse ventral cell types within the neural tube.[32] The notochord, a structure derived from the axial mesoderm, produces SHH, which travels extracellularly to the ventral region of the neural tube and instructs those cells to form the floor plate.[33] Another view for floor plate induction hypothesizes that some precursor cells located in the notochord are inserted into the neural plate before its formation, later giving rise to the floor plate.  Sonic hedgehog is secreted at the zone of polarizing activity, which is located on the posterior side of a limb bud in an embryo.

Print stanza patterns...

```r
spine_patterns <- get_patterns(gene_id = "SHH")
poem_pattern <- spine_patterns$couplet_pair$pattern
```

ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|cg|ta|at|cg|gc|cg|gc|gc|ta|cg|at|ta|cg|gc|at|gc|gc|at|gc|cg|at|cg|at|ta|gc|

Select word similarity patterns...

```r
a_words <- get_words(
  "letter_proportion", "vowel", 
  pattern_alias = "vowelicious",
  prop = 0.6, min_len = 4, max_len = 9 #, is_common = T
)
```

```r
t_words <- get_words(
  "letter_proportion", "consonant", 
  pattern_alias = "consonants",
  prop = 0.8, min_len = 5, max_len = 9, is_common = T
)
c_words <- get_words(
  "vocal_proportion", "frictionless", 
  pattern_alias = "frictionless",
  prop = 0.25, min_len = 4, max_len = 9#, is_common = T
)
g_words <- get_words(
  "vocal_proportion", "fricatives", 
  pattern_alias = "fricative",
  prop = 0.4, min_len = 4, max_len = 9, #is_common = T
)
```

---

# Legend

*Below are the first 100 lines of the poem's pattern, labelled:*


```
##   
## consonants  
## vowelicious  
## |  
## fricative  
## frictionless  
## |  
## frictionless  
## fricative  
## |  
## consonants  
## vowelicious  
## |  
## vowelicious  
## consonants  
## |  
## frictionless  
## fricative  
## |  
## fricative  
## frictionless  
## |  
## frictionless  
## fricative  
## |  
## fricative  
## frictionless  
## |  
## fricative  
## frictionless  
## |  
## consonants  
## vowelicious  
## |  
## frictionless  
## fricative  
## |  
## vowelicious  
## consonants  
## |  
## consonants  
## vowelicious  
## |  
## frictionless  
## fricative  
## |  
## fricative  
## frictionless  
## |  
## vowelicious  
## consonants  
## |  
## fricative  
## frictionless  
## |  
## fricative  
## frictionless  
## |  
## vowelicious  
## consonants  
## |  
## fricative  
## frictionless  
## |  
## frictionless  
## fricative  
## |  
## vowelicious  
## consonants  
## |  
## frictionless  
## fricative  
## |  
## vowelicious  
## consonants  
## |  
## consonants  
## vowelicious  
## |  
## fricative  
## frictionless  
## |  
## frictionless  
## fricative  
## |  
## consonants  
## vowelicious  
## |  
## vowelicious  
## consonants  
## |  
## frictionless  
## fricative  
## |  
## fricative  
## frictionless  
## |  
## frictionless  
## fricative  
## |  
## fricative
```


---

# Word options

## A

The pattern is: vowelicious

Words include:

enjoy away
aerial
alien alone
auroral
ahead
ready
anyone
raise
relay
oasis
okay
queue
unique


aaron, about, above, abuse, acute, adequate, adobe, aerial, again, agree, ahead, aimed, alias, alice, alien, alike, alive, alloy, alone, amino, anime, annie, anyone, anyway, aqua, aquarium, arabia, area, areas, arena, argue, arise, array, ascii, asia, asian, aside, audience, audio, audit, aurora, auto, autos, avenue, aviation, avoid, aware, away, bailey, beauty, booty, boutique, bureau, buyer, carey, cause, ciao, cookie, daily, dairy, daisy, delay, dialogue, diana, diane, diary, diego, eagle, early, ease, easier, easily, easy, ebony, elite, email, emily, employee, enemy, enjoy, equal, equality, equation, equity, essay, ethiopia, eugene, euro, europe, european, euros, evaluate, every, everyday, everyone, eyed, eyes, fairy, gauge, guide, guinea, guyana, hairy, haiti, hawaii, hawaiian, hayes, heavy, honey, house, idaho, idea, ideal, ideas, ieee, image, india, iowa, iraqi, isaac, issue, italy, ivory, joyce, juice, kenya, korea, laura, layer, layout, league, lease, leave, leone, loose, louis, louise, louisiana, lucia, maine, malaysia, maria, marie, maybe, mayor, media, miami, money, moore, mouse, movie, noise, oasis, ocean, ohio, okay, olive, omaha, omega, onion, opera, outer, oxide, ozone, papua, paraguay, patio, payday, peace, piano, piece, queen, query, queue, quiet, quite, quote, radio, raise, ratio, ready, relay, rouge, route, royal, samoa, sauce, saudi, suite, syria, today, tokyo, toyota, union, unique, unity, uruguay, usage, usual, value, venue, video, viii, voice, wayne, yahoo, yale, yeah, year, yearly, years, yeast, yemen, yield, yoga, young, your, yours, youth, yukon, indie, adelaide, tahoe, italia

---

## T

The pattern is: consonants

Words include:

bands, banks, batch, baths, belts, bench, bills, birds, birth, black, blacks, blank, blast, blend, bless, blind, blink, block, blocks, blond, bonds, branch, brand, brands, brass, brick, bright, bring, brings, brown, brush, bucks, bunch, burns, burst, butts, calls, camps, cards, catch, cells, cents, charm, charms, chart, charts, check, checks, chess, chest, chick, chicks, child, chips, christ, chuck, church, clark, class, clerk, click, clicks, cliff, climb, clips, clock, clocks, cloth, clubs, const, corps, costs, crack, craft, crafts, craps, crash, crest, crops, cross, crowd, crown, czech, depth, discs, disks, dolls, draft, drawn, draws, dress, drill, drink, drinks, drops, drugs, drums, drunk, dutch, facts, falls, farms, fifth, fight, films, finds, firms, first, flags, flash, flesh, flight, flights, flows, flush, folks, fonts, forms, forth, frank, french, fresh, front, frost, funds, ghost, gifts, girls, glass, grams, grand, grant, grants, graph, graphs, grass, grill, gross, grown, grows, growth, hands, helps, herbs, highs, hills, hints, holds, hosts, johns, kills, kinds, kings, knight, knights, knock, known, knows, lamps, lands, length, light, lights, links, lists, locks, lunch, march, marks, marsh, match, might, mills, minds, month, months, night, nights, north, packs, pants, parks, parts, patch, paths, picks, pills, pitch, plans, plant, plants, plots, polls, ports, posts, press, print, prints, prompt, pumps, punch, racks, ralph, ranch, ranks, rhythm, right, rights, rings, risks, rocks, rolls, scott, scratch, screw, script, scripts, scroll, sells, sends, shaft, shall, shark, sharp, shelf, shell, shift, ships, shirt, shirts, shock, shops, short, shorts, shots, shown, shows, sight, signs, singh, sixth, skill, skills, skins, skirt, skirts, slight, slots, small, smart, smell, smith, socks, songs, sorts, spank, specs, spell, spend, spent, sperm, split, sport, sports, spots, spring, springs, sprint, stack, staff, stamp, stamps, stand, stands, stars, start, starts, stats, steps, stick, sticks, still, stock, stocks, stops, storm, strand, strap, strength, strengths, stress, stretch, strict, string, strings, strip, strips, strong, struck, struct, stuck, stuff, swift, swing, swiss, switch, sword, talks, tanks, tasks, tells, terms, tests, texts, thank, thanks, thats, theft, thick, thing, things, think, thinks, third, thong, thongs, throw, thrown, throws, thumb, thumbs, tight, towns, track, tracks, tract, trans, trash, trend, trends, trick, tricks, trips, truck, trucks, trunk, trust, trusts, truth, turns, twins, twist, walks, walls, wants, watch, watts, wells, welsh, whats, which, whilst, width, winds, wings, witch, words, works, world, worlds, worst, worth, wright, wrist, wrong, perth

---

## C

The pattern is: frictionless

Words include:

wherever
waking slow
void
owns
own warm
unjoin
know
give
grow away
love
over
nova
view
down


away, blow, blvd, bowl, cave, cove, crew, dave, dawn, dive, down, downtown, draw, drew, eval, even, ever, evil, fiji, five, flow, fuji, gave, give, glow, grew, grow, have, hawk, however, involve, involved, involves, iowa, jack, jade, jail, jake, jane, java, jazz, jean, jeep, jeff, jets, jewel, jewelry, jewish, jews, jill, joan, jobs, joel, john, join, joke, jose, josh, juan, judy, july, jump, june, junk, jury, just, juvenile, knew, know, lawn, laws, levy, live, love, lows, move, navy, news, nova, oval, oven, over, overview, owns, prev, preview, previews, review, reviewed, reviewer, reviews, rows, save, shaw, show, slow, snow, survival, survive, survivor, swap, swim, town, twelve, twin, univ, valve, valves, vary, vast, velvet, very, vice, view, viewed, viewer, viewers, viewing, views, viii, visa, void, volt, vote, wage, wait, waiver, wake, walk, wall, walt, want, ward, ware, warm, wars, wash, watt, wave, waves, ways, weak, wear, weed, week, well, went, were, west, what, whatever, when, whenever, wherever, whom, wide, wife, wild, will, willow, wind, window, windows, wine, wing, wins, wire, wise, wish, with, wives, wolf, wood, wool, word, work, worm, worn, wrap, avon, owen

---

## G

The pattern is: fricative

Words include:

finds
forms
says soft
faces
focus to flux
finds loss
flows & stays
stressed vessel
souls survive to size
sends self
grass hosts
possesses
shaft
lives
fossil-fresh facts

affairs, affects, asks, assess, assessed, assessing, asset, assets, assist, assists, assumes, axis, bases, basis, bass, bless, boss, boxes, brass, buses, buzz, cases, chassis, chess, class, classes, cliff, costs, cross, davis, diff, discs, discuss, discusses, disks, dress, dresses, effects, efforts, elvis, essay, essays, evans, exams, excess, excessive, exist, exists, express, faces, facts, fails, falls, false, fans, fares, farms, fast, fastest, favor, favors, fears, feeds, feels, fees, festivals, fever, fifth, fifty, files, films, finds, fires, firms, first, fish, fist, fitness, fits, five, fixed, fixes, flags, flash, flesh, flex, flows, flush, flux, focus, focuses, folks, fonts, foods, forests, forms, fossil, fresh, frost, funds, fuzzy, gifts, gives, glass, glasses, grass, gross, guess, hosts, issue, issues, jazz, jeff, jesse, jesus, kiss, less, lessons, lists, lives, loss, losses, loves, mass, massive, mess, miss, moses, moss, moves, oasis, offense, offensive, offer, offers, offices, offset, pass, passes, passive, pizza, possess, posts, press, puzzles, quizzes, risks, roses, ross, safe, safer, sales, sans, satisfy, save, saved, saver, saves, savings, says, seas, seasons, seats, seeds, seeks, seems, sees, self, sells, sends, sense, sensors, serve, servers, serves, session, sessions, sets, seven, shaft, shelf, sheriff, shift, ships, shoes, shops, shots, shows, sides, signs, sims, sisters, sites, sixth, size, sized, sizes, skins, slave, slots, socks, sofa, soft, solve, songs, sons, sorts, souls, spas, specs, spies, spots, staff, stars, stats, stays, steps, steve, stops, stress, stuff, stuffed, success, suffer, suits, surf, surveys, says, survivors, susan, sussex, swift, swiss, systems, tasks, taxes, tests, texas, texts, users, uses, valve, valves, vast, vegas, verse, versus, vessel, vessels, views, virus, viruses, visa, visit, visits, vista, votes, waves, wives, xerox, zones, essex
