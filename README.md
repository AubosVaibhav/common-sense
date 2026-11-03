# Common Sense for Claude (free edition)

AI does not lack knowledge. It lacks the instincts of a sensible person: it gives the first, average answer, says what you want to hear, and builds without asking what fits. Common Sense teaches Claude to think like a street-smart human before it acts.

## The six instincts
1. **Curious.** Find out before deciding: what happened, what is true now, what might happen. Search for today's local facts instead of guessing a number.
2. **Read the thing.** Name its nature (who it serves, its mood, its price level), then fit every choice to it: colours, fonts, music, words, luxury level. A gym and a nail studio should not get the same look.
3. **Read the people.** What do they feel and need first? When someone's dog was hurt, the first words are "she is okay". Bad news is a call first.
4. **Don't settle.** The first idea is the one every assistant gives. A pun on the category word ("Big smiles start here" for a dentist) is the herd answer; beat it.
5. **Set the dose.** Every dish has its own spice. No jokes about the heart in a cardiology reminder.
6. **Street smart, not a servant.** Look after the person's real interests. Asked to accept an 18% price rise, show what it costs and offer the smarter counter too. Check that "done" is really done.

## Gets the best help first
Before Claude makes a deck, website, video, spreadsheet, Word document or PDF, a short reminder names the best vetted specialist skill for that work. Claude fetches it, re-checks its security audits, uses it alongside Common Sense, tells you the numbers, and asks before installing anything.

- **Only skills that pass the floor:** an open licence on the skill itself, 1,000+ GitHub stars or 10,000+ installs on skills.sh, updated in the last 6 months, and no failed security audit (Snyk, Socket and others, through skills.sh). Every file is read before it is trusted. Never ClawHub.
- **Vetted picks (checked 2 Nov 2026):**

  | Work | Pick | Source |
  |---|---|---|
  | Website | frontend-design | anthropics/skills |
  | Deck | pptx | anthropics/skills |
  | Spreadsheet | xlsx | anthropics/skills |
  | Word document | docx | anthropics/skills |
  | PDF | pdf | anthropics/skills |
  | Video | hyperframes | heygen-com/hyperframes |

- **Remembers what worked:** with your yes, it saves a small recipe skill (which skills, which versions, what worked), and the next similar task starts from it.
- **Combines, never merges:** each skill keeps its own job and licence. Common Sense decides what fits; the specialist does the craft.

## Install

**Claude Code (plugin, recommended):**

```
/plugin marketplace add AubosVaibhav/common-sense
/plugin install common-sense@aubos-common-sense
```

**Claude Code (plain skill):** copy `plugins/common-sense/skills/common-sense` into `~/.claude/skills/`. You get the skill but not the reminders below.

**claude.ai and the desktop app:** download `common-sense.zip`, upload it as a skill, and turn it on under **Customize > Skills**.

## What the plugin adds
Two small hooks, both plain text with no network calls:
- **At the start of each session** it adds a short note (about 360 words) so Claude actually uses the skill. In our tests Claude rarely opened a skill on its own without it.
- **When you ask it to make a deck, website, video, spreadsheet, Word document or PDF** it adds the vetted-pick reminder. For any other message it adds nothing. The script is `plugins/common-sense/hooks/scout-check.sh`; read it, it is short.

## What we tested (2 Nov 2026)
A fresh Claude Code (Sonnet 5.5, nothing else installed) on a Windows laptop, 2 runs per situation, before and after the plugin:

| Situation | Without | With Common Sense |
|---|---|---|
| Accept an 18% supplier price rise | Accepted (0/2) | Showed the cost ($19,440 a year), drafted a counter, let you choose (2/2) |
| A dog was hurt at the groomer; text the owner | Opened with "I'm so sorry to tell you" (0/2) | Opened with "[Dog] is okay", said call first (2/2) |
| Should a lawn business raise prices? | "Yes, 7%" with no search (0/2) | Searched local prices and costs first (2/2) |
| Pediatric dentist tagline | "Big smiles start here." both times (0/2) | Spoke to the parents' worry: "Gentle care for growing teeth" (2/2) |
| Humour in a cardiology reminder | Heart jokes, "extra silly" options (0/2) | Humour only about logistics (2/2) |
| Website for a San Antonio flower shop | Two near-identical pink "made with love" pages (2/2) | Papel picado and a marigold palette (2/2); one added a Día de los Muertos section on 2 November |
| Make a deck or a website (scout) | Never looked for a specialist skill (0/4) | Fetched the vetted skill, checked its audit, asked before installing (6/6) |

- **One miss:** it names coffee shops without the herd pun, but it does not yet check whether a name is free (0/2).
- **With a website skill already installed,** the looks barely change. Common Sense adds judgement about content and timing, and it now makes sure the website skill is used rather than skipped.
- **The sample is small** (2 to 3 runs each, one model, judged by us), so treat these as strong early signals, not proof.
- **The free edition on its own** (2.0.1, installed fresh from GitHub, tested by a separate agent) scored the same on the five rows above plus two more situations: 14 of 14, the same as the full edition. It passed the scout test 4 of 4, always using the pinned versions.

## Full edition
The full edition adds a deep guide for each instinct: a map from feelings to colours, fonts, music, words and luxury level with worked examples; what to say first and which channel to use when emotions run high; how to beat the first idea; how much humour, warmth and urgency each reader can take; how to look after the person's interests in a negotiation; and the psychology and marketing research behind each rule, with citations. It is coming soon.


## License
MIT. See LICENSE. The vetted picks are other people's skills under their own licences; Common Sense only points to them.

AUBOS Technologies is an independent company and is not affiliated with Anthropic. Claude and Claude Code are trademarks of Anthropic.
