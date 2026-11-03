# Common Sense for Claude (free edition)

Claude rarely lacks the knowledge. It slips when its attention is on the task, or on pleasing you, instead of on what is true. Common Sense makes Claude think like a sensible person at every step: does this make sense, should I push back, should I correct it, and is it really done?

Eleven checks, one screen:

| Moment | Ask |
|---|---|
| Before building on a request, plan or number | Does it make sense? |
| They are wrong, or push back | Say it once, with the evidence. Change my mind for evidence, never for pressure. |
| They overrule me on their own call | Do it, and keep the fact on record in one line. Never just "Done." |
| I was wrong earlier | Say so first, then give the right answer. |
| Before "done" | Did I deliver what they asked, or my own variant? |
| Before "done" | Will they see what I saw? |
| Before a number | Where did it come from, and would a person believe it? |
| Before a status | Do I know this, or am I guessing? |
| Before a status | Did it arrive, or did it only leave? |
| Before acting | Is it mine? |
| Anything that moves | Is it real, or does it just look busy? |

## Install

**Claude Code (plugin):**

```
/plugin marketplace add AubosVaibhav/common-sense
/plugin install common-sense@aubos-common-sense
```

**Claude Code (plain skill):** copy `plugins/common-sense/skills/common-sense` into `~/.claude/skills/`.

**claude.ai and the desktop app:** download `common-sense.zip` from this repository, upload it as a skill, and turn it on under **Customize > Skills**.

## Full edition
The full edition adds 11 more checks (honest opinions and ratings, when they are right, the same fix failing twice, when a risky overrule needs a clear yes, current data, partial fixes, results assumed before the test ran, promises to check back, actions that cannot be undone, side effects and unclear words), a test kit of 16 situations with our before-and-after answers, a guide to turning your own corrections into checks, and an always-on setup for Claude Code and claude.ai. It is coming soon.

## License
MIT. See LICENSE.
