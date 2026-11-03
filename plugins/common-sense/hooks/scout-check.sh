#!/usr/bin/env bash
# Common Sense: when a request asks to make a crafted piece of work, name the best vetted
# specialist skill for it and the first move (see the skill's references/skill-scout.md).
# Prints nothing for other requests. Picks were checked on 2 Nov 2026; numbers are re-checked live.
input=$(cat)
make='\b(make|build|create|design|write|draft|generate|prepare|produce|redo|redesign|put together)\b'
echo "$input" | grep -Eiq "$make" || exit 0

kind=""
if   echo "$input" | grep -Eiq '\b(power ?point|pptx|slides?|slide deck|pitch deck|deck|presentation|keynote)\b'; then kind="deck"
elif echo "$input" | grep -Eiq '\b(website|web ?site|landing page|home ?page|web ?page)\b'; then kind="website"
elif echo "$input" | grep -Eiq '\b(spreadsheet|excel|xlsx|google sheets?|financial model)\b'; then kind="spreadsheet"
elif echo "$input" | grep -Eiq '\b(video|reel|explainer|animation)\b'; then kind="video"
elif echo "$input" | grep -Eiq '\b(app|web app|mobile app|dashboard)\b'; then kind="app"
elif echo "$input" | grep -Eiq '\b(pdf)\b'; then kind="pdf"
elif echo "$input" | grep -Eiq '\b(word document|docx|report|proposal|contract|resume)\b'; then kind="document"
fi
[ -z "$kind" ] && exit 0
art="a"; [ "$kind" = "app" ] && art="an"

anth="anthropics/skills"; terms="Anthropic's own terms: use it, never copy or change it; install it through the official document-skills plugin"
case "$kind" in
  website)     name="frontend-design"; src="$anth"; lic="Apache-2.0"; trac="1.1M installs on skills.sh"; aud="all 5 security audits pass" ;;
  deck)        name="pptx";            src="$anth"; lic="$terms";    trac="247.6K installs on skills.sh"; aud="audits pass, one warning" ;;
  spreadsheet) name="xlsx";            src="$anth"; lic="$terms";    trac="repo 187K stars"; aud="audits pass, one warning" ;;
  document)    name="docx";            src="$anth"; lic="$terms";    trac="repo 187K stars"; aud="audits pass, one warning" ;;
  pdf)         name="pdf";             src="$anth"; lic="$terms";    trac="repo 187K stars"; aud="audits pass, one warning" ;;
  video)       name="hyperframes";     src="heygen-com/hyperframes"; lic="Apache-2.0"; trac="78K stars, 1.4M installs"; aud="audits pass with two medium warnings" ;;
  *)           name="" ;;
esac

echo "Common sense: this request makes ${art} ${kind}. Get the best help before you build it."
echo "- If a skill already listed in this session, or a saved recipe-* skill, covers ${kind} work, use it and name it in one line."
if [ -n "$name" ]; then
  echo "- Otherwise the vetted pick is ${name} from ${src} (${lic}; ${trac}; ${aud}; checked 2 Nov 2026). Your first move, before building: fetch https://raw.githubusercontent.com/${src}/main/skills/${name}/SKILL.md and re-check https://skills.sh/api/v1/skills/audit/${src}/${name} (stop if any audit says fail). Then follow its guidance for this task together with common sense."
  echo "- In your reply, say you used it, with those numbers, and ask whether to install it for next time. Never install without a yes. Offer to save what worked as a recipe-${kind} skill."
else
  echo "- Otherwise search first: the skills.sh leaderboard, then GitHub. Use a skill only if it passes the floor: open licence on the skill itself, 1,000+ stars or 10,000+ installs, updated in the last 6 months, no failed audit at https://skills.sh/api/v1/skills/audit/<owner>/<repo>/<skill>, every file read. Never ClawHub."
  echo "- Tell the person what you found, with those numbers, and ask before installing. Meanwhile you may follow a vetted skill's guidance for this task. Offer to save what worked as a recipe-${kind} skill."
fi
echo "- Full method: the common-sense skill, references/skill-scout.md."
