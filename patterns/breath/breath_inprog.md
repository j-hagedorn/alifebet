``` r
searches <- list()

searches$breath_genes <-
  get_genes(
    go_ids = c(
      `neurological control of breathing` = "GO:0002087",
      `respiratory gaseous exchange` = "GO:0007585",
      `lung development` = "GO:0030324",
      `lung growth` = "GO:0060437"
    )
  )
```

Teashirt homolog 3 (TSHZ3) Transcriptional regulator involved in
developmental processes. Functions in association with APBB1, SET and
HDAC factors as a transcriptional repressor, that inhibits the
expression of CASP4. TSHZ3-mediated transcription repression involves
the recruitment of histone deacetylases HDAC1 and HDAC2. Associates with
chromatin in a region surrounding the CASP4 transcriptional start
site(s) (PubMed:19343227). Regulates the development of neurons involved
in both respiratory rhythm and airflow control. Promotes maintenance of
nucleus ambiguus (nA) motoneurons, which govern upper airway function,
and establishes a respiratory rhythm generator (RRG) activity compatible
with survival at birth. Involved in the differentiation of the proximal
uretic smooth muscle cells during developmental processes. Involved in
the up-regulation of myocardin, that directs the expression of smooth
muscle cells in the proximal ureter (By similarity). Involved in the
modulation of glutamatergic synaptic transmission and long-term synaptic
potentiation (By similarity)

TSHZ3 haploinsufficiency due to proximal chromosome 19q13.11 deletions
causes a neurodevelopmental disorder characterized by developmental
delay, absent or delayed speech, intellectual disability, and autistic
features. Some patients may have reanal tract abnormalities. Expressed
in brain; strongly reduced in post-mortem elderly subjects with
Alzheimer disease (PubMed:18776146, PubMed:19343227). Expressed in the
fetal neocortex (PubMed:27668656).

Print stanza patterns…

``` r
breath_patterns <- get_patterns(gene_id = "TSHZ3")
poem_pattern <- breath_patterns$couplet_pair$pattern
```

gc|at|gc|at|cg|ta|cg|gc|at|gc|ta|gc|ta|gc|cg|ta|gc|gc|cg|at|ta|ta|ta|cg|ta|gc|at|gc|at|cg|ta|cg|
gc|at|gc|ta|gc|ta|gc|cg|ta|gc|gc|cg|at|ta|ta|ta|

cg|ta|gc|at|gc|at|cg|ta|cg|gc|at|gc|ta|gc|ta|gc|
cg|ta|gc|gc|cg|at|ta|ta|ta|cg|ta|gc|at|gc|at|cg|ta|cg|gc|at
|gc|ta|gc|ta|gc|cg|ta|gc|gc|cg|at|ta|ta|ta|cg|ta|gc|at|gc|at|cg|ta|cg|gc|at|gc|ta|gc
|ta|gc|cg|ta|gc|gc|cg|at|ta|ta|ta|cg|ta|gc|at|gc|at|cg|ta|cg|gc|at|gc|ta

Select word similarity patterns…

``` r
a_words <- get_words(
  "letter_proportion", "i", 
  pattern_alias = "i",
  prop = 0.2, min_len = 4, max_len = 9 #, is_common = T
)
```
``` r
t_words <- get_words(
  "letter_proportion", "e", 
  pattern_alias = "e",
  prop = 0.25, min_len = 5, max_len = 9 #, is_common = T
)
c_words <- get_words(
  "letter_proportion", "o", 
  pattern_alias = "o",
  prop = 0.2, min_len = 5, max_len = 9 #, is_common = T
)
g_words <- get_words(
  "letter_proportion", "u", 
  pattern_alias = "u",
  prop = 0.2, min_len = 5, max_len = 9 #, is_common = T
)
```

-----

# Legend

*Below are the first 100 lines of the poem’s pattern, labelled:*

    ##   
    ## u  
    ## o  
    ## |  
    ## i  
    ## e  
    ## |  
    ## u  
    ## o  
    ## |  
    ## i  
    ## e  
    ## |  
    ## o  
    ## u  
    ## |  
    ## e  
    ## i  
    ## |  
    ## o  
    ## u  
    ## |  
    ## u  
    ## o  
    ## |  
    ## i  
    ## e  
    ## |  
    ## u  
    ## o  
    ## |  
    ## e  
    ## i  
    ## |  
    ## u  
    ## o  
    ## |  
    ## e  
    ## i  
    ## |  
    ## u  
    ## o  
    ## |  
    ## o  
    ## u  
    ## |  
    ## e  
    ## i  
    ## |  
    ## u  
    ## o  
    ## |  
    ## u  
    ## o  
    ## |  
    ## o  
    ## u  
    ## |  
    ## i  
    ## e  
    ## |  
    ## e  
    ## i  
    ## |  
    ## e  
    ## i  
    ## |  
    ## e  
    ## i  
    ## |  
    ## o  
    ## u  
    ## |  
    ## e  
    ## i  
    ## |  
    ## u  
    ## o  
    ## |  
    ## i  
    ## e  
    ## |  
    ## u  
    ## o  
    ## |  
    ## i  
    ## e  
    ## |  
    ## o  
    ## u  
    ## |  
    ## e  
    ## i  
    ## |  
    ## o  
    ## u  
    ## |  
    ## u  
    ## o  
    ## |  
    ## i

-----

# Word options

## A

The pattern is: i

Words include:

admit, again, artistic, basin, basis, begin, beginning, bids, blink, 
brilliant, bring, bringing, build, building, buildings, built, circuit, 
citizen, city, click, cliff, clinic, definite, different, difficult, 
digit, digital, dimension, directive, dirt, distinct, district, diversity, 
dividend, divine, diving, division, drill, drink, drinking, edit,
editing, efficient, emit, epic, exhibit, exist, existing, exit, explicit, 
fiction, fifth, fill, filling, finished,finishing, fishing, fist, fits, 
fitting, fixed, fixes, flip,
gift, given, gives, giving, grip, hint, image, imaging, incidence, infinite,
inherited, inner, inspired, intensive, intimate, inventive, limits, linking, 
liquid, list, listening, live, living, million, missing, mission, mixed, 
physician, pick, pill, pitch, pixel, print, quick, quilt, quit, recipient, 
revisions, rich,ridge, ring, risk, river, said, shift, sick, silk, since, 
sing, sink, sitting, skill, skin, slip, specific, spirit, split,
strip, swift, swim, swimming, swing, switching, thick, thin, thing, 
think, thinking, this, trip, twin, victim, visit, visited, which,
will,willing, wind, wing, wings, wins, wish,with, within, wrist

-----

## T

The pattern is: e

Words include:

aberdeen, absence, accepted, accessed, achieve, achieved, adequate,
adverse, affected, agencies, agree, agreed, agreement, agrees, alleged,
altered, amended, angeles, answered, anywhere, appeared, arrested,
assessed, athletes, attended, audience, avenue, average, awesome,
baseline, basement, basename, beaches, beatles, beaver, became, because,
become, becomes, before, beginner, belief, beliefs, believe, believed,
believes, belle, beneath, benefit, benefits, berkeley, beside, besides,
better, between, beverage, beverages, bleeding, blessed, bracelet,
breed, breeding, breeds, brunette, career, careers, cassette, celebrate,
celebs, cement, cemetery, center, centered, centers, centre, centres,
ceremony, cheaper, cheapest, checked, cheers, cheese, cheque, chester,
chinese, cleaner, cleaners, cleared, coffee, college, colleges,
commerce, compete, complete, concrete, coverage, covered, create,
created, creates, creative, creature, creek, deadline, dealer, dealers,
debate, decade, decades, december, decent, decide, decided, declare,
declared, decline, declined, decrease, decreased, deemed, deeper,
deeply, defeat, defects, defence, defend, defense, defensive, deferred,
define, defined, defines, degree, degrees, delaware, delayed, delete,
deleted, deliver, delivered, delivers, delivery, deluxe, denied, dense,
denver, depend, dependent, depends, derived, describe, desert, deserve,
designed, designer, desire, desired, desperate, despite, detailed,
detect, detected, detective, detector, determine, deutsche, devel,
develop, developed, developer, develops, device, devices, devoted,
diabetes, diameter, diesel, directed, disagree, discrete, disease,
diseases, diverse, dressed, dresses, eagle, eagles, earlier, earliest,
earned, easier, easter, eastern, eclipse, edges, edited, educated,
effect, effective, effects, either, elder, elderly, elect, elected,
election, electric, electro, electron, elegant, element, elements,
elephant, eleven, eligible, elite, ellen, elsewhere, embedded, emerald,
emergency, emerging, emirates, emperor, empire, employed, employee,
employees, employer, enable, enabled, enables, enclosed, ended, endless,
endorsed, enemies, enemy, energy, engage, engaged, engine, engineer,
engineers, engines, enhance, enhanced, enjoyed, enlarge, enrolled,
ensemble, ensure, ensures, enter, entered, entering, enters, entire,
entirely, entities, entitled, entrance, entries, envelope, enzyme,
episode, episodes, equipped, escape, essence, estate, estates, estimate,
eternal, ethernet, eugene, europe, european, evaluate, evening, event,
events, every, everyday, everyone, evidence, evident, examine, examined,
examines, example, examples, exceed, excel, excellent, except, excerpt,
excess, excessive, exchange, excited, exclude, excluded, excuse,
execute, executed, executive, exempt, exercise, exercises, existed,
existence, expanded, expect, expected, expects, expense, expenses,
expensive, expert, expertise, experts, expired, expires, explore,
explorer, exposed, exposure, express, expressed, extend, extended,
extends, extensive, extent, exterior, external, extreme, extremely,
feature, featured, features, federal, feedback, feeding, feeds, feeling,
feelings, feels, female, females, fence, fever, fewer, fifteen,
filename, fleece, fleet, flexible, florence, forever, freedom,
freelance, freely, freeze, frequent, gathered, gazette, gender, general,
generate, generated, generates, generic, generous, genes, genesis,
genetic, genetics, geneva, genome, genre, genres, gentle, genuine,
geometry, george, greater, greatest, greece, greek, green, greeting,
happened, headed, header, headers, headline, headset, heated, heater,
heather, heaven, hebrew, helen, helena, helmet, helped, hence, hereby,
herein, heritage, heroes, herself, homeless, however, hygiene, increase,
indeed, indexed, indexes, infected, inserted, integer, intended,
intense, interest, internet, japanese, jeremy, jersey, jesse, jewel,
jewellery, jewelry, juvenile, keeping, keeps, kennedy, kernel, labeled,
lawrence, leader, leaders, league, learned, learners, lease, leather,
leave, leaves, lecture, lectures, leeds, legend, legends, leisure,
lender, lenders, lenses, leone, lesser, letter, letters, level, levels,
licence, license, licensed, licenses, lifetime, likewise, lingerie,
measure, measured, measures, medicare, medicine, medieval, meeting,
meetings, meets, member, members, membrane, memories, merely, merge,
merger, message, messages, messenger, meter, meters, metres, mileage,
moderate, moreover, movement, nearest, necklace, needed, needle, needs,
negative, neither, nerve, nested, never, newer, newest, november,
nowhere, observe, observed, observer, offense, offered, opened, operate,
operated, operates, ordered, oriented, overcome, overhead, overseas,
overview, peace, peaceful, peeing, peers, people, peoples, pepper,
perceived, percent, perfect, perfume, peter, petite, piece, pieces,
pierce, pierre, pioneer, pipeline, please, pleased, pleasure, pledge,
powered, precise, prefer, preferred, prefers, premier, premiere,
premises, prepare, prepared, presence, present, presented, presents,
preserve, pressed, pressure, prevent, preview, previews, proceed,
proceeds, quebec, queen, queens, queries, queue, reached, reaches,
reader, readers, realize, realized, rebate, rebates, rebel, receipt,
receive, received, receiver, receivers, receives, recent, recently,
receptor, recipe, recipes, recorded, recorder, recover, recovered,
recovery, redeem, redhead, reduce, reduced, reduces, refer, reference,
referral, referred, refers, refine, refined, reflect, reflected,
reflects, refresh, refugees, refuse, refused, regarded, reggae, regime,
register, reject, rejected, relate, related, relates, relative, release,
released, releases, relevance, relevant, reliable, reliance, relief,
remained, remedies, remedy, remember, reminder, remote, remove, removed,
render, rendered, renew, renewable, renewal, repeat, repeated, replace,
replaced, replied, replies, reported, reporter, represent, request,
requested, requests, require, required, requires, rescue, research,
reseller, reserve, reserved, reserves, reset, residence, resident,
resolve, resolved, resource, respect, respected, response, restore,
restored, resulted, resume, resumes, retailer, retained, retired,
retreat, retrieve, retrieved, returned, reveal, revealed, reveals,
revenge, revenue, revenues, reverse, review, reviewed, reviewer,
reviews, revised, roulette, scene, scenes, schedule, scheme, schemes,
science, sciences, screen, screens, sealed, searched, searches, seattle,
secret, secrets, secure, secured, securely, seeds, seeing, seeker,
seekers, seeking, seeks, seemed, seems, segment, segments, select,
selected, selective, seller, sellers, semester, senate, sender, senegal,
sense, sentence, sentences, separate, september, sequence, sequences,
series, serve, served, server, servers, serves, service, services,
settle, settled, seven, seventh, several, severe, sheep, sheer, sheet,
sheets, shelter, shepherd, siemens, silence, sleep, sleeping, sleeps,
sleeve, someone, somerset, somewhere, speaker, speakers, species,
speech, speeches, speed, speeds, spencer, sphere, steel, steering,
stephen, stereo, steve, steven, street, streets, succeed, suffered,
supreme, sweden, sweet, talented, targeted, teacher, teachers, teaches,
teenage, teens, teeth, telephone, telescope, template, temple, tender,
tennessee, terrace, terrible, tested, textile, textiles, texture,
theater, theaters, theatre, theme, themes, theorem, theories, there,
thereby, therefore, thereof, these, threaded, three, together, traveler,
treasure, treated, trees, trustee, trustees, twelve, universe,
vegetable, vehicle, vehicles, velvet, venezuela, venice, venture,
ventures, venue, venues, verde, verified, verse, vertex, vessel,
vessels, veteran, veterans, viewed, viewer, viewers, violence, weather,
webster, weekend, weekends, weekly, weeks, weighted, welcome, welfare,
wellness, wesley, western, whatever, wheel, wheels, whenever, where,
whereas, wherever, whether, wireless, yemen, adelaide, chelsea, bennett,
essex, peterson

-----

## C

The pattern is: o

Words include:

aaron, abortion, about, above, actor, adobe, adopt, adoption, afternoon,
alcohol, allow, alloy, alone, along, amino, among, anonymous, antonio,
apollo, arbor, armor, arrow, astrology, astronomy, audio, autos, avoid,
bacon, balloon, bathroom, bathrooms, bedroom, bedrooms, below, bingo,
biology, block, blond, blood, bloom, board, boats, bobby, bonds, bones,
bonus, booking, bookings, bookmark, bookmarks, books, bookstore,
boolean, boost, booth, boots, booty, bored, borough, boston, bottom,
bound, boxed, boxes, broad, broke, brook, brooklyn, brooks, brown,
cameroon, canon, cargo, carlo, carol, cartoon, cartoons, chaos,
childhood, chocolate, choir, choose, choosing, chose, cisco, classroom,
clock, clone, close, cloth, cloud, coach, coalition, coast, codes,
cohen, coins, colin, collector, cologne, colombia, colon, colonial,
colony, color, colorado, colored, colors, colour, colours, combo, comes,
comfort, comic, commodity, common, commonly, commons, companion,
component, composed, composer, composite, compound, compounds, concord,
condition, condo, condos, confusion, congo, connector, conscious,
console, consoles, const, control, controls, cookbook, cooked, cookie,
cookies, cooking, cooler, cooling, cooper, coral, corporate, corps,
costa, costs, cotton, could, count, coupon, coupons, court, cover,
cowboy, crops, cross, crossword, crowd, crown, decor, depot, devon,
diego, disco, doctor, doctors, dodge, doing, dolls, donation, donations,
donna, donor, donors, doors, doubt, dover, download, downloads,
downtown, dozen, drops, drove, ebony, ecology, economic, economics,
economies, economy, emotional, emotions, enjoy, enormous, error, euros,
evolution, explosion, favor, float, flood, floor, flooring, floors,
flour, flows, focal, focus, folks, follow, followed, following, follows,
fonts, foods, footage, football, footwear, force, forge, forgot,
forgotten, formation, forms, forth, forty, forum, found, front, frost,
geology, ghost, globe, glory, gnome, goals, going, gonna, goods,
gorgeous, gotta, governor, groove, gross, group, grove, grown, grows,
handbook, hardwood, hello, hobby, holds, holes, hollow, holly,
hollywood, holocaust, homes, hometown, homework, honda, honey, honolulu,
honor, honors, hoped, hopes, horizon, hormone, horror, horse, hosts,
hotel, hours, house, household, houston, humor, icons, idaho, indoor,
intro, isolation, ivory, jacob, jason, johns, johnson, joins, joint,
jokes, jones, joyce, knock, known, knows, kodak, korea, labor, lemon,
leone, lions, liverpool, loads, loans, lobby, local, location,
locations, locator, locks, lodge, logan, logic, login, logos, london,
looked, looking, looks, lookup, loops, loose, lotus, louis, loved,
lover, loves, lower, macro, major, mambo, manor, marco, mason, mayor,
metro, micro, minor, model, modem, moderator, modes, monaco, money,
mongolia, monitor, monitored, monitors, monroe, monte, month, moore,
moral, moreover, morocco, moscow, moses, motel, motion, motor, motors,
mount, mouse, mouth, moved, moves, movie, nikon, noble, nobody, nodes,
noise, nonprofit, norfolk, north, notebook, notebooks, noted, notes,
notion, notre, novel, nylon, oasis, obvious, obviously, occasion,
occasions, occur, ocean, october, offer, offshore, often, oklahoma,
older, olive, omaha, omega, omissions, ongoing, onion, ontario, opens,
opera, operation, operator, operators, opinion, opinions, opponent,
opponents, opposed, opposite, option, optional, options, orbit, order,
oregon, organ, oscar, other, ought, outcome, outcomes, outdoor,
outdoors, outer, outlook, overcome, owned, owner, oxford, oxide, ozone,
pathology, patio, phone, photo, photos, piano, pilot, plots, poems,
point, poison, poker, polar, polls, pollution, pools, portfolio,
portion, portions, ports, position, positions, posts, potato, potatoes,
pound, power, prior, probe, processor, professor, projector, promo,
promote, promoted, promotes, promoting, promotion, proof, proposal,
proposals, propose, proposed, protocol, protocols, prototype, proud,
prove, provision, proxy, quote, radio, ratio, retro, roads, robin,
robinson, robot, robots, rocks, rocky, roger, roles, rolls, roman,
roommate, roommates, rooms, roots, roses, rotation, rouge, rough, round,
route, rover, royal, salon, samoa, school, schools, scoop, scope, score,
scott, scout, seafood, shock, shoes, shoot, shooting, shops, shore,
short, shots, shown, shows, simon, slope, slots, smoke, smooth,
sociology, socks, solar, solid, solomon, solution, solutions, solve,
somebody, somehow, someone, songs, sonic, soonest, sorry, sorts, souls,
sound, south, spoke, sponsor, sponsored, sponsors, sport, spots, stock,
stockholm, stone, stood, stops, store, storm, story, sword, tattoo,
textbook, textbooks, theology, thompson, thong, thorough, those, throw,
tobacco, today, token, tokyo, tomato, tomatoes, tommy, tomorrow, toner,
tones, toolbox, toolkit, tools, tooth, topic, toronto, total, touch,
tough, tours, tower, towns, toxic, toyota, troops, trout, tumor, turbo,
union, video, violation, vocal, voice, voted, votes, wagon, whole,
whose, woman, women, wooden, woods, words, workforce, workout, works,
workshop, workshops, world, worry, worse, worst, worth, would, wound,
wrong, wrote, xerox, yahoo, young, yours, youth, yukon, zones, tahoe

-----

## G

The pattern is: u

Words include:

about, abuse, acute, adult, album, aluminium, aluminum, aquarium, argue,
auburn, audio, audit, august, autos, autumn, awful, beautiful, begun,
blues, bonus, bound, bouquet, boutique, bruce, brush, bucks, buddy,
build, built, bunch, bunny, bureau, burke, burns, burst, buses, butts,
buyer, cause, chuck, cloud, clubs, columbus, could, count, court, crude,
cubic, cultural, culture, cultures, curious, curve, debug, debut, doubt,
drugs, drums, drunk, dutch, equal, euros, fabulous, fault, flour, fluid,
flush, focus, forum, found, fraud, fruit, fully, funds, funky, funny,
furniture, future, futures, fuzzy, gauge, group, guard, guess, guest,
guide, guild, hindu, honolulu, hours, house, human, humor, input, issue,
jesus, judge, juice, laugh, laura, lotus, louis, lucia, lucky, lunch,
luxury, menus, minus, mount, mouse, mouth, multi, museum, museums,
music, mutual, numerous, nurse, occur, ought, outer, output, outputs,
papua, pound, proud, pulse, pumps, punch, puppy, purse, pursuant,
pursue, pursuit, quantum, queen, query, quest, queue, quick, quiet,
quilt, quite, quote, rouge, rough, round, route, rugby, ruled, rules,
rural, sauce, saudi, scout, scuba, sculpture, serum, setup, souls,
sound, south, squad, structure, stuck, study, stuff, suburban, sudan,
sugar, suite, suits, sunny, super, surge, surplus, surround, susan,
suzuki, thesaurus, thumb, touch, tough, tours, trout, truck, truly,
trunk, trust, truth, tubes, tulsa, tumor, tuner, tunes, turbo, turns,
ultra, uncle, under, union, unique, units, unity, until, unusual, upper,
upset, urban, uruguay, usage, useful, users, using, usual, usually,
vacuum, value, vault, venue, virus, would, wound, young, yours, youth,
yukon
