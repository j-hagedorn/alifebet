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

## AT

The pattern is: ie

Words include:

admit, again, artistic, absence, accepted, accessed, adequate, affected, 
amended, arrested,assessed, attended, 
basin, basis, begin, beginning, bids, blink, brilliant, bring, bringing, 
build, building, buildings, built, better, blessed,
cinch, circuit, citizen, city, click, cliff, clinic, cement, center, centered, checked,
definite, different, difficult, digit, digital, dimension, directive, dirt, 
distinct, district, diversity, dividend, divine, diving, division, drill, drink, 
drinking, dead, defend, defense, dense, depend, detect, dresses, 
edit, editing, efficient, emit, epic, exhibit, exist, existing, exit, explicit, 
eclipse, edges, edited, effect, elect, element, embedded, ended, enter, entered, 
entering, entrance, essence, event, evidence, evident, examine, examined, example, 
excel, excellent, except, excess, excessive, exempt, existed, existence, expect, 
expense, expenses, expensive, expert, express, expressed, extend, extended, extent,
fiction, fifth, fill, filling, finished,finishing, fishing, fist, fits, 
fitting, fixed, fixes, flip, fence, fewer,
gender, generic, genesis, genetic, gentle, gift, given, gives, giving, grip, 
hint, headed, header, heaven, hell, helmet, helped, hence, herself,
image, imaging, incidence, infinite, inherited, inner, inspired, intensive, 
intimate, inventive, indexed, infected, inserted, integer, intended,intense, interest, 
kernel, 
leather, legend, lenses, lesser, letter, level, limits, linking, liquid, 
list, listening, live, living, 
member, message, million, missing, mission, mixed, 
necklace, nested, never, newer, newest, 
pepper, perfect, pledge, prefer, premises, presence, present, pressed, prevent,
physician, pick, pill, pitch, pixel, print, 
quick, quilt, quit, 
reflect, refresh, resident, respect, recipient, revisions, rich,ridge, ring, risk, river, 
said, shift, sick, silk, since, sing, sink, sitting, skill, skin, slip, specific, segment, 
select, selective, sense, sentence, settle, shelter, shepherd, spirit, split, strip, 
swift, swim, swimming, swing, switching, 
temple, tender,terrace, terrible, tested, thick, thin, thing, think, thinking, this, trip, twin, 
velvet, vessel, viewer, victim, visit, visited, 
weather, wellness, whenever, wherever, whether, which, will,willing, wind, wing, 
wings, wins, wish,with, within, wrist

-----

## CG

The pattern is: ou

Words include:

above, adoption, alone, along, anonymous, arbor, armor, arrow, avoid, abuse, acute, aluminum, argue, 
balloon, blood, bloom, board, boats, bones, bonus, books, boost, boots, beautiful, blue,
bored, borough, bottom, broad, broke, brook, 
cargo, chose, clock, clone, close, cloth, coast, codes, colour, comfort, common, 
composed, compound, crude, cubed, curious, conscious, console, control, coral, cover, 
doors, drove, doubt, drums, drunk,
emotional, enjoy, enormous, float, flood, floor, flows, focal, focus, 
folks, follow, force, forge, forgot, forms, forth, forum, found, frost, fluid, fruit, future, 
ghost, globe, glorious, goals, gorgeous, gross, grove, grown, grows, group, 
holds, holes, hollow, homes, honor, hoped, horizon, hormone, horror, horse, hosts, humor,
joins, joint, jokes, juice,  known, knows, loads, loans, local, location,
logos, loved, loves, lower, modes, moral, moreover, motion, motor, mouth, mutual,
noble, nobody, nodes, noise, notes, notion, numerous, 
occur, ought, outer, obvious, occur, ocean, offer, offshore, often, older, olive, 
ongoing, opens, opposed, order, organ, other, ought, outdoors, outer, overcome, ozone,
phone, photo, poems, point, poison, portion, posts, probe, promote, propose, pound, pursue,
quote, ratio, roads, robot, rolls, roman, rooms, roots, roses, rough, rover, royal, rouge, ruled,
scope, score,shock, shoes, shoot, shore, short, shown, slope, smoke, smooth,
solar, solution, solve, someone, songs, souls, spoke, sponsors, stone, 
store, storm, story, sword, tattoo, throng, thorough, those, throw, tomorrow, tooth, touch, true, 
union, unusual, usual, vocal, whole, woods, would, wound, wrote, zones


