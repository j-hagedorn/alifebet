``` r
skin_genes <-
  get_genes(
    go_ids = c(
      `establishment of skin barrier` = "GO:0061436"
    )
  )
```

KDF1; Overproliferation can lead to hyperplasia or tumor formation while premature differentiation can result in a depletion of proliferating cells and organ failure. Maintaining this balance is especially important in tissues that undergo rapid turnover like skin however, despite recent advances, the genetic mechanisms that balance cell differentiation and proliferation are still unclear. In an unbiased genetic screen to identify genes affecting early development, we identified an essential regulator of the proliferation-differentiation balance in epidermal progenitor cells, the Keratinocyte differentiation factor 1 (Kdf1; 1810019J16Rik) gene. Kdf1 is expressed in epidermal cells from early stages of epidermis formation through adulthood. Specifically, Kdf1 is expressed both in epidermal progenitor cells where it acts to curb the rate of proliferation as well as in their progeny where it is required to block proliferation and promote differentiation. <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3841015/>

Print stanza patterns...

``` r
skin_patterns <- get_patterns(gene_id = "KDF1")
poem_pattern <- skin_patterns$tercet_amino$pattern
```

at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||
gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|cg||cg|ta|ta||cg|ta|gc||gc|gc|at||gc|ta|gc||at|at|cg||cg|cg|ta||gc|at|cg||ta|cg|at||cg|cg|ta||ta|cg|ta||gc|gc|gc||at|gc|ta||gc|at|at||cg|cg|cg||ta|gc|at||cg|ta|cg||at|cg|cg||ta|ta|cg||ta|gc|gc||gc|at|gc||ta|gc|at||at|cg|cg||cg|ta|gc||at|cg|ta||cg|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||at|cg|ta||cg|ta|at||ta|gc|ta||ta|at|ta||gc|ta|ta||at|at|gc||at|gc|gc||gc|cg|cg||cg|at|cg||ta|cg|ta||at|ta|gc||ta|ta|at||ta|gc|ta||ta|at|at||gc|at|gc||gc|gc|cg||cg|cg|at||cg|ta|cg||ta|at|ta||gc|ta|ta||at|ta|gc||ta|ta|at||at|gc|at||gc|gc|gc||cg|cg|cg||

Select word similarity patterns...

``` r
a_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(ough$|to$|ew$|oo$|ue$).*$",
  pattern_alias = "through_rhyme",
  min_len = 3, max_len = 9, is_common = T
)
t_words <- get_words(
  "regex",
  # Words with same start and end letter
  "^([a-z]).*\\1$",
  pattern_alias = "circle",
  min_len = 5, max_len = 11, is_common = T #, stem = T
)
c_words <- get_words(
  "regex",
  "^(^(?!un|dis|mis|over|non|up.*$).*)(nst$|ends$|ens$|end$|en$).*$",
  pattern_alias = "against_rhyme",
  min_len = 3, max_len = 9, is_common = T
)
g_words <- get_words(
  "regex",
  # Words with only one kind of vowel 
  "^((?![eiouy]).)*$|^((?![aiouy]).)*$|^((?![aeouy]).)*$|^((?![aeiuy]).)*$|^((?![aeioy]).)*$|^((?![aeiou]).)*$",
  pattern_alias = "single_vowel",
  min_len = 5, max_len = 11, is_common = T #, stem = T
)
```

------------------------------------------------------------------------

Legend
======

*Below are the first 100 lines of the poem's pattern, labelled:*

    ##   
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## single_vowel  
    ## against_rhyme  
    ## |  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## through_rhyme  
    ## circle  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## |  
    ## against_rhyme  
    ## single_vowel  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## circle  
    ## through_rhyme  
    ## |  
    ## |

------------------------------------------------------------------------

Word options
============

A
-

The pattern is: through\_rhyme

Words include:

anew, argue, avenue, blue, continue, crew, dew, drew, due, few, grew, hebrew, interview, into, issue, knew, new, onto, preview, pursue, queue, renew, rescue, revenue, review, screw, sue, tattoo, thorough, through, tissue, too, true, value, view, virtue, zoo

------------------------------------------------------------------------

T
-

The pattern is: circle

Words include:

antenna, ceramic, chronic, civic, classic, clinic, comic, cosmetic, cubic, damaged, dated, decided, declared, declined, decreased, dedicated, deemed, defend, deferred, defined, delayed, deleted, delivered, demand, denied, depend, derived, described, designed, desired, destroyed, detailed, detected, determined, developed, devoted, diamond, directed, disabled, discounted, discovered, discussed, dispatched, displayed, distributed, disturbed, divided, dividend, documented, download, dressed, dried, dropped, eagle, earthquake, eclipse, effective, eligible, eliminate, elite, elsewhere, empire, enable, enclosure, encourage, engage, engine, enhance, enlarge, ensemble, ensure, enterprise, entire, entrance, envelope, enzyme, episode, escape, essence, estate, estimate, evaluate, evanesce, everyone, everywhere, evidence, examine, example, excellence, excessive, exchange, exclude, excuse, execute, exercise, existence, expense, experience, expertise, explore, exposure, extreme, gambling, gaming, gardening, gathering, generating, getting, giving, going, governing, greeting, growing, health, heath, knock, label, legal, level, liberal, local, logical, mainstream, maximum, mechanism, medium, metabolism, millennium, minimum, momentum, nation, navigation, negotiation, nitrogen, nomination, notion, nutrition, partnership, radar, rather, reader, receiver, receptor, recorder, recover, refer, register, regular, remainder, remember, reminder, render, repair, reservoir, rider, river, rover, rubber, runner, saints, samples, saves, scales, scenes, scores, screens, scripts, searches, seasons, secrets, sections, seeds, seeks, seems, segments, sends, sensors, sentences, sequences, serious, shadows, shapes, shares, sheets, shirts, shoes, showers, shows, sides, signatures, signs, skins, sleeps, slides, sources, spaces, specifies, status, statutes, sticks, stones, stress, strips, structures, stylus,  substances, surfaces, symbols, symptoms, synopsis, synthesis, systems, tablet, talent, target, taught, tenant, terrorist, testament, theft, thought, threat, throat, throughout, ticket, tight, toilet, tonight, tourist, tournament, tract, transcript, transit, transmit, transparent, transport, treat, treatment, trout, trust, twist, willow, window, xerox

------------------------------------------------------------------------

C
-

The pattern is: against\_rhyme

Words include:

against, alien, amends, attends, been, bend, blend, broken, burdens, childrens, chosen, citizens, defends, dens, depends, dozens, driven, eden, ends, even, extends, fallen, forbidden, forgotten, friends, frozen, gardens, given, glens, golden, gotten, happens, havens, heavens, hidden, hydrogens, intends, kitchens, laden, legends, lens, nitrogens, often, opens, ovens, oxygens, pens, proven, recommends, sends, spends, tends, then, trend, when, women, wooden

------------------------------------------------------------------------

G
-

The pattern is: single\_vowel

Words include:

abstract, alarm, alpha, apart, atlas, attach, attack, attract, avatar, award, better, between, bidding, binding, blessed, blood, bloom, books, boost, booth, boots, bottom, breed, bringing, cement, center, centered, clicking, clinic, clinics, colors, combo, comfort, common, concord, control, crisis, criticism, critics, december, decent, deemed, deeper, defects, defence, defend, defense, deferred, degree, delete, dense, depend, dependence, dependent, desert, deserve, detect, digit, dining, distinct, district, diving, doctor, donor, doors, downtown, drama, dressed, drilling, drinking, driving, edges, effect, effects, elder, elect, elected, element, elsewhere, embedded, ended, endless, ensemble, enter, entered, essence, event, exceed, excel, excellence, except, excerpt, excess, exempt, expect, expected, expense, expert, express, extend, extended, extent, extreme, fatal, feeds, feels, fence, fever, fewer, filling, finding, finish, finishing,fishing, fitting, fleece, fleet, fleshes, flood, floor, follow, foods, forgot, freeze, gender, genes, genre, gentle, giving, goods,  grammar, greek, green, griffin, hazard, helmet, hence, herself, highlight, hollow, honor, horror, insight, jewel, keeps, kernel, kissing, knitting, legend, lenses, lesser, letter, level, lightning, limit, living, logos, looks, loops, meets, member, merger, messenger, meter, midnight, mining, missing, mixing, motor, needle, needs, nerve, nested, never, newer, paragraph, pepper, percent, perfect, photo, plasma, pledge, prefer, preference, presence, present, preserve, prevent, proof, radar, recent, redeem, refer, reference, referred, reflect, refresh, reject, remember, render, renew, represent, reserve, respect, revenge, reverse, rising, rooms, roots, scene, scheme, screen, secret, seeds, seeks, seems, segment, select,sense, sentence, serve, settle, severe, sheep, sheer, sheet, shelter, shoot, sleep, sleeve, speech, sphere, spirit,  standard, standards, steel, stood, streets, strengthen, teeth, temple, tender, tested, theme, themselves, there, these, timing, tomorrow, tools, tooth, verse, vertex, vessel, victim, virgin, visit, warrant, weekend, weeks, wellness, wheel, whenever, where, wherever, whether, willing, wishing, within, writing
