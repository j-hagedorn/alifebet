---
output:
  pdf_document: default
  html_document: default
---
The gene is involved in *"the process that gives rise to the vestibulocochlear nerve...this sensory nerve innervates the membranous labyrinth of the inner ear... that senses head position changes relative to gravity \[and\] is connected to the three bony ossicles which transduce sound waves into fluid movement"*

It is involved in the following:

-   hearing \[*auditory behavior, cochlea development, cochlea morphogenesis, inner ear development, inner ear morphogenesis, vestibulocochlear nerve formation*\]
-   speech \[*learned vocalization behavior*\]
-   balance \[*neuromuscular process controlling balance, negative regulation of relaxation of muscle, regulation of muscle organ development, thorax and anterior abdomen determination, vestibulocochlear nerve formation*\]
-   formation of the skull's echo chamber \[*craniofacial suture morphogenesis, hard palate morphogenesis*\]
-   hunger, eating \[*negative regulation of saliva secretion, peristalsis, mastication, trigeminal nerve development,negative regulation of relaxation of muscle*\]
-   hunger, sex \[*genitalia development, genitalia morphogenesis*\]

Print stanza patterns...

``` r
hearing_patterns <- get_patterns(gene_id = "DCANP1")
poem_pattern <- hearing_patterns$couplet_amino$pattern
```

gaac|cttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||gaa|ctt||ccc|ggg||tat|ata||ttg|aac||aat|tta||tgc|acg||agg|tcc||gct|cga||gga|cct||acc|tgg||cta|gat||ttt|aaa||gaa|ctt||ttg|aac||cag|gtc||ggc|ccg||tgg|acc||aac|ttg||cct|gga||att|taa||tga|act||att|taa||gca|cgt||ggg|ccc||ctg|gac||ccc|ggg||agc|tcg

Select word similarity patterns...

``` r
a_words <- get_words(
  "regex",
  # Words with vowels as first and last letter, with only consonants inbetween 
  "^[aeiou]([b-df-hj-np-tv-z])*[aiouy]$",
  pattern_alias = "central_consonant",
  min_len = 3, max_len = 9
) 
t_words <- get_words(
  "regex",
  # Words with consonants as first and last letter, with only vowels inbetween 
  "^[b-df-hj-np-tv-z]([aeiou])*[b-df-hj-np-tv-z]$",
  pattern_alias = "vowel_vessel",
  min_len = 3, max_len = 9
) 
c_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(ome$|omb$|one$|oam$).*$",
  pattern_alias = "ome_rhyme",
  min_len = 4, max_len = 9
) 
g_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(ound$|owned$|ount$|oud$|owed$|ond$|oun$|oned$|oaned$).*$",
  pattern_alias = "ound_rhyme",
  min_len = 4, max_len = 9
) 
```

------------------------------------------------------------------------

Legend
======

*Below are the first 100 lines of the poem's pattern, labelled:*

    ##   
    ## ound_rhyme  
    ## central_consonant  
    ## central_consonant  
    ## ome_rhyme  
    ## |  
    ## ome_rhyme  
    ## vowel_vessel  
    ## vowel_vessel  
    ## ound_rhyme  
    ## |  
    ## |  
    ## ome_rhyme  
    ## ome_rhyme  
    ## vowel_vessel  
    ## |  
    ## ound_rhyme  
    ## ound_rhyme  
    ## central_consonant  
    ## |  
    ## |  
    ## central_consonant  
    ## vowel_vessel  
    ## vowel_vessel  
    ## |  
    ## vowel_vessel  
    ## central_consonant  
    ## central_consonant  
    ## |  
    ## |  
    ## vowel_vessel  
    ## ound_rhyme  
    ## central_consonant  
    ## |  
    ## central_consonant  
    ## ome_rhyme  
    ## vowel_vessel  
    ## |  
    ## |  
    ## central_consonant  
    ## vowel_vessel  
    ## vowel_vessel  
    ## |  
    ## vowel_vessel  
    ## central_consonant  
    ## central_consonant  
    ## |  
    ## |  
    ## ound_rhyme  
    ## ome_rhyme  
    ## central_consonant  
    ## |  
    ## ome_rhyme  
    ## ound_rhyme  
    ## vowel_vessel  
    ## |  
    ## |  
    ## ound_rhyme  
    ## ound_rhyme  
    ## ound_rhyme  
    ## |  
    ## ome_rhyme  
    ## ome_rhyme  
    ## ome_rhyme  
    ## |  
    ## |  
    ## ome_rhyme  
    ## vowel_vessel  
    ## ound_rhyme  
    ## |  
    ## ound_rhyme  
    ## central_consonant  
    ## ome_rhyme  
    ## |  
    ## |  
    ## ound_rhyme  
    ## central_consonant  
    ## central_consonant  
    ## |  
    ## ome_rhyme  
    ## vowel_vessel  
    ## vowel_vessel  
    ## |  
    ## |  
    ## ome_rhyme  
    ## ome_rhyme  
    ## ome_rhyme  
    ## |  
    ## ound_rhyme  
    ## ound_rhyme  
    ## ound_rhyme  
    ## |  
    ## |  
    ## vowel_vessel  
    ## central_consonant  
    ## vowel_vessel  
    ## |  
    ## central_consonant  
    ## vowel_vessel  
    ## central_consonant  
    ## |

------------------------------------------------------------------------

Word options
============

A
-

The pattern is: central\_consonant

Words include:

ago, alloy, alpha, also, alto, angry, anti, any, anyway, apply, aqua, army, array, audio, away, early, easy, echo, employ, empty, enjoy, entry, essay, extra, info, into, intro, okay, only, onto, ugly, undo, unto, ado, altho, aptly, embryo, oddly

------------------------------------------------------------------------

T
-

The pattern is: vowel\_vessel

Words include:

back, bad, bag, bald, ball, ban, band, bang, bank, bar, barn, bass, bat, batch, bath, baths, beach, bead, beam, bean, bear, beast, beat, bed, beef, been, beer, bee, being, bell, belt, bench, bend, bent, best, bet, bias, bid, big, bill, bin, bind, biol, bio, bird, birth, bit, biz, black, blah, blank, blast, blend, bless, blind, blink, block, blond, blood, bloom, blow, blue, blvd, board, boat, bob, bold, bolt, bomb, bond, book, boom, boost, boot, booth, boo, born, boss, both, bought, bound, bow, bowl, box, brad, brain, branch, brand, bra, brass, breach, bread, break, breast, breath, breed, brick, brief, bright, bring, broad, brook, brought, brown, brush, buck, bug, build, built, bulk, bull, bunch, burn, burst, bus, bush, but, butt, buzz, cab, cad, cal, call, calm, cam, camp, can, cant, cap, car, card, cart, cash, cast, cat, catch, caught, cell, cent, chad, chain, chair, chaos, char, charm, chart, chat, cheap, cheat, check, cheer, chef, chem, chess, chest, ch, chick, chief, child, chip, choir, chuck, church, cir, claim, clan, class, clean, clear, clerk, click, client, cliff, climb, clip, clock, cloth, cloud, club, coach, coal, coast, coat, cod, coin, col, cold, com, comm, comp, con, cons, cook, cool, cop, cord, cork, corn, corp, corps, cos, co, cost, could, count, court, cow, crack, craft, craps, crap, crash, cream, creek, crest, crew, crop, cross, crowd, crown, cult, cup, cut, dad, dam, dark, dash, dawn, dead, deaf, deal, dealt, dean, an, dear, death, deaths, debt, deck, deep, deer, er, def, f, dell, den, d, pt, depth, desk, dial, dick, did, die, diet, diff, dig, dim, dip, dirt, dis, disc, c, dish, disk, dist, div, doc, dock, does, doe, dog, doing, do, doll, don, doom, door, dot, doubt, down, draft, drag, drain, draw, drawn, dream, dress, drew, dry, drill, drink, drop, drug, drum, drunk, dual, duck, dumb, dump, dust, dutch, fact, fail, fair, faith, fall, fan, far, farm, fast, fat, fault, fax, fear, feat, fed, feed, feel, fee, feet, fell, felt, few, field, fifth, fig, fight, fill, film, fin, find, firm, first, fish, fist, fit, fix, flag, flash, flat, fleet, flesh, flex, flight, flip, float, flood, floor, flour, flow, fluid, flush, flux, foam, fog, fold, folk, font, food, fool, foot, for, ford, fork, form, fort, fought, foul, found, four, fourth, fox, frank, fraud, freight, french, fresh, friend, frog, from, front, frost, fruit, fuel, full, fun, fund, funk, fur, fwd, gain, gang, gap, gas, gear, geek, gel, gem, g, get, ghost, giant, gift, gig, girl, glad, glass, glen, glow, goal, goat, god, goes, going, go, gold, golf, good, goods, got, grab, grad, grain, gram, grand, grant, graph, grass, great, green, grew, grid, grill, grip, gross, ground, group, grow, grown, growth, guard, guess, guest, guild, gulf, gun, hack, had, hair, half, hall, ham, hand, hang, hard, harm, hart, ha, hash, hat, hawk, head, health, heal, hear, heard, heart, heat, heath, heel, height, held, help, h, herb, high, highs, hill, him, hint, hip, hi, hist, hit, hold, hon, hood, hook, hop, horn, host, hot, hour, how, hr, hub, hull, hung, hunt, hurt, jack, jail, jam, jar, jazz, jean, jeans, jeep, jet, job, john, join, joint, josh, jump, jun, junk, just, keen, keep, ken, kept, kick, kid, kill, kind, kinds, king, k, kiss, kit, knew, knight, knit, knock, know, known, lab, lack, laid, lamb, lamp, land, lap, last, lat, laugh, launch, law, lawn, lb, lead, leaf, lean, learn, least, l, left, leg, length, lens, less, let, lib, lid, lie, lift, light, link, lion, lip, list, lit, load, loan, lock, log, long, look, loop, lord, loss, lost, lot, loud, low, luck, lunch, lung, mac, mad, mag, mail, main, mall, man, map, mar, march, mark, marsh, mart, ma, mask, mass, mat, match, max, meal, mean, meant, meat, me, meet, men, mesh, mess, met, mid, might, mil, mild, milk, mill, min, mind, mint, misc, miss, mix, mod, mold, mom, month, months, mood, moon, moss, most, mount, mouth, mpg, mph, much, mud, mug, must, nail, near, neck, need, neon, nest, n, net, new, news, next, nick, night, nil, non, noon, nor, norm, north, not, now, null, nut, pack, pad, paid, pain, paint, pair, pal, palm, pan, pant, par, park, part, pa, pass, past, pat, patch, path, paths, pct, peak, pearl, pea, peeing, peer, pee, pen, p, pest, pet, pic, pick, pig, pill, pin, ping, pink, pit, pitch, pix, plain, plan, plant, plot, plug, plus, pod, poem, poet, point, poll, pond, pool, poor, pop, pork, port, post, pot, pound, pour, ppm, prep, press, priest, pry, print, prior, prompt, proof, pro, proud, pub, pull, pump, punch, punk, push, put, quad, queen, quest, quick, quiet, quilt, quit, quiz, rack, raid, rail, rain, ram, ran, ranch, rand, rank, rap, rat, raw, reach, read, real, realm, rear, rec, red, re, ed, reef, reel, ref, reg, rent, rep, rest, rev, v, rich, rick, rid, right, rim, ring, rip, risk, road, rob, rock, rod, roll, roof, room, root, rough, round, row, rpm, rug, run, rush, sad, said, sail, saint, salt, sand, sans, sap, sat, saw, scan, school, scoop, scout, scratch, screen, screw, script, scroll, seal, search, sea, seat, sec, seed, seeing, seek, seem, seen, see, self, sell, s, send, sent, seq, set, shaft, shall, shark, sharp, shed, she, sheep, sheer, sheet, shelf, shell, shield, shift, ship, shirt, shock, shoe, shoot, shop, short, shot, should, show, shown, shut, sic, sick, sight, sign, silk, sim, sin, sing, sink, sip, sir, sit, six, sixth, skiing, ski, skill, skin, skip, skirt, sleep, slight, slim, slip, slot, slow, small, smart, smell, smith, smooth, snap, snow, soap, soc, sock, soft, soil, sol, sold, son, song, soon, sort, sought, soul, sound, soup, south, sou, span, spank, spa, speak, spear, spec, specs, speech, speed, spell, spend, spent, sperm, spy, spin, split, sport, spot, spread, spring, sprint, squad, stack, staff, stamp, stand, star, start, stat, std, steal, steam, steel, stem, step, stick, still, stock, stood, stop, storm, straight, strain, strand, strap, stream, street, strength, strengths, stress, stretch, strict, string, strip, strong, struck, stuck, stud, stuff, sub, such, suit, sum, sun, surf, swap, sweet, swift, swim, swing, switch, sword, tab, tag, tail, talk, tall, tan, tank, tap, tar, task, taught, tax, teach, team, tear, tech, ted, t, teen, tee, tel, tell, temp, ten, tend, tent, term, test, text, than, thank, that, theft, their, them, then, thick, thin, thing, the, think, third, this, thong, though, thought, thread, threat, throat, through, throw, thrown, thumb, thus, tie, tier, ti, tight, til, till, tin, tip, told, toll, tom, ton, took, tool, tooth, top, touch, tough, tour, town, track, tract, trail, train, trans, trap, trash, treat, tree, trek, trend, trial, trick, tried, try, trim, trip, triumph, troop, trout, truck, trunk, trust, truth, tub, turn, twin, twist, val, van, var, vast, vat, vault, view, void, vol, volt, wait, walk, wall, wan, want, war, ward, warm, was, wash, watch, watt, wax, weak, wealth, weal, wear, web, wed, w, weed, week, weight, weird, well, welsh, went, west, wet, what, wheat, wheel, when, which, whilst, whom, width, wild, will, win, wind, wing, wish, wit, witch, with, wolf, won, wood, woods, wool, word, work, works, world, worm, worn, worst, worth, would, wound, wow, wrap, wright, wrist, wrong, z, zinc, zip, zoom


------------------------------------------------------------------------

C
-

The pattern is: ome\_rhyme

Words include:

"alone","become","bone","chrome","clone","come","dome","done","foam","genome","gone","home","lone","outcome","ozone","phone","rome"    "stone","syndrome","tone","zone", biome, comb, come, condone, cone, cyclone, lone, outdone, roam, shone, some, someone, welcome, welldone, womb

------------------------------------------------------------------------

G
-

The pattern is: ound\_rhyme

Words include:

abandoned, abound, abscond, account, aground, allowed, almond, aloud, amount, around, arrowed, astound, atoned, auctioned, avowed, backboned, ballooned, beckoned, bellowed, beyond, billowed, blazoned, blond, bond, borrowed, bound, bowed, browned, burgeoned, burrowed, buttoned, caissoned, cannoned, cantoned, captioned, cloud, compound, coned, confound, count, crooned, crowed, crowned, despond, diamond, droned, drowned, dumbfound, endowed, expound, fissioned, flowed, followed, fond, found, fount, furrowed, glowed, ground, honed, hound, intoned, ironed, sondry londs, loud, moaned, mound, mount, mowed, noun, owned, plowed, poisoned, pond, portioned, postponed, pound, prisoned, profound, proud, reasoned, reckoned, recount, resound, respond, round, seasoned, second, sectioned, shadowed, shroud, sinnowed, snowed, sound, spooned, stoned, stowed, surround, syphoned, tenoned, tensioned, throned, toned, towns, vowed, wound
