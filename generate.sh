#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# ============================================================================
# === MAIN BRANCH - L'ascension et la chute d'un CEO disruptif ===
# ============================================================================

git commit --allow-empty -m "$(cat <<'EOF'
La levée. Le mail de Bpifrance arrive un jeudi à 16h02. « Votre dossier French Tech Seed a été accepté. Montant accordé : 800 000 €. » Tu relis le mail sept fois. Tu fais une capture d'écran. Tu l'envoies à ta mère qui répond « c'est bien mon chéri, tu veux venir dîner dimanche ? ». Tu l'envoies à ton groupe WhatsApp « Disruptors 🚀 » où tes potes de HEC répondent avec 47 emojis fusée.

Tu as 32 ans, un MBA, trois ans chez McKinsey, et une idée : « NexaFlow — la plateforme qui fluidifie les flux de valeur dans l'écosystème B2B grâce à l'IA prédictive. » Personne ne sait ce que ça veut dire. C'est exactement pour ça que ça a marché en comité de sélection.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le setup. Tu loues un bureau de 200m² à Station F. 6 800 € par mois. C'est cher, mais « l'adresse compte pour les investisseurs ». Tu commandes du mobilier chez USM — les étagères modulaires jaunes à 3 400 € pièce. Tu installes un néon « DISRUPT OR DIE » au-dessus de la porte d'entrée. Budget déco : 28 000 €.

La machine à café est une La Marzocca Linea Mini à 4 900 €. Tu justifies ça dans le board deck sous « Employee Experience & Retention ». Tu crées un Notion avec 47 pages dont « Vision 2030 », « Culture Manifesto », et « Idées de team building ». Les trois sont vides. Tu te sens prêt.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Interlude — Le Notion. Tu crées l'espace Notion de NexaFlow. En 72 heures, tu produis 94 pages. « Vision & Mission » (3 paragraphes de buzzwords), « Company Values » (Bold, Human, Relentless, Curious — les initiales forment BHRC, ce qui ne veut rien dire, mais tu trouves que ça sonne bien), « Roadmap Q1-Q4 » (un tableau vide avec des couleurs), « Meeting Notes Template » (personne ne l'utilisera jamais), et « Onboarding Playbook » (pour une équipe de 1 personne, toi).

Le joyau de la couronne : une page « Competitors Landscape » avec un graphique à 4 quadrants où NexaFlow est mystérieusement positionné en haut à droite — le quadrant des « leaders visionnaires ». Tu n'as ni produit, ni client, ni employé. Mais sur ce graphique, tu domines Salesforce, HubSpot, et Microsoft. Hugo dira plus tard que c'est « le plus beau slide de l'histoire de la French Tech ». Il n'a pas tort. C'est aussi le plus déconnecté de la réalité.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le recrutement. Tu publies cinq annonces sur Welcome to the Jungle. Titre du poste de CTO : « Architecte de l'Impossible — VP Engineering & Chief Technology Visionary ». Salaire : « Compétitif + equity significative ». Tu reçois 340 candidatures. Tu en élimines 300 parce qu'ils n'ont pas « l'energy ».

Tu recrutes Sébastien comme CTO (ex-Criteo, mass salariale : 95K + 3% equity), Amandine comme CPO (ex-BlaBlaCar, 82K + 2%), et Hugo comme « Head of Growth » (ex-rien du tout, mais il a 12 000 followers sur LinkedIn et il utilise le mot « scalable » dans chaque phrase). Tu te retrouves avec un burn rate de 45 000 €/mois avant même d'avoir écrit une ligne de code.
EOF
)"

# --- DIVERGE_KEYNOTE ---
# Le commit pose la tension : l'équipe est là, chacun a sa vision de ce qu'il faut faire en premier
git commit --allow-empty -m "$(cat <<'EOF'
L'équipe est au complet. Quatre personnes dans 200m² de Station F, avec un néon qui clignote et une machine à café à 4 900 €. Premier lundi matin. Sébastien veut un sprint planning et un choix de stack technique. Amandine veut un design sprint avec des interviews utilisateurs. Hugo veut un communiqué de presse et « faire du bruit tout de suite ». Nadia demande s'il y a un process d'onboarding (il n'y en a pas).

Tout le monde te regarde. Tu es le CEO. C'est ton moment fondateur. Le moment où tu imprimes ta marque, où tu montres à ces quatre personnes quel genre de leader tu vas être. Tu sens monter en toi une vision. Pas un sprint planning, pas un design sprint, pas un communiqué de presse. Quelque chose de plus grand. De plus... toi.
EOF
)"

DIVERGE_KEYNOTE=$(git rev-parse HEAD)

# --- DIVERGE_CULTURE ---
# Le commit pose la tension : la culture d'entreprise se forme, le rythme se définit
git commit --allow-empty -m "$(cat <<'EOF'
Le produit. Sébastien passe trois semaines à choisir la stack technique. Il opte pour du Rust au backend (« pour la performance »), du Svelte au frontend (« pour l'élégance »), une base de données CockroachDB (« pour la résilience »), le tout orchestré avec Kubernetes sur GCP. Pour un produit qui n'a pas encore d'utilisateurs.

Amandine crée un « Product Discovery Board » de 200 post-its sur un mur entier du bureau. Chaque post-it représente une « hypothèse à valider ». Aucune hypothèse ne sera validée. Les post-its tomberont un par un, victimes de la gravité et de l'indifférence. Hugo, pendant ce temps, optimise son profil LinkedIn et publie un post intitulé « Pourquoi j'ai quitté le confort du CDI pour l'aventure startup 🔥 ». Il a 847 likes. NexaFlow a zéro utilisateurs.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 2. L'ambiance se cherche. Les premiers signaux de culture émergent, et ils racontent déjà une histoire. Sébastien part à 18h30 pile tous les soirs — il a un gamin de 2 ans. Amandine fait ses horaires proprement. Hugo, lui, poste des stories depuis le bureau à 22h avec la légende « grind mode 💪 ». Et toi, tu lis Gary Vaynerchuk le soir dans ton lit, tu écoutes des podcasts sur la hustle culture au petit-déjeuner, et tu commences à te demander si 18h30 c'est pas un peu tôt quand « on construit le futur ».

Le premier Friday Drinks arrive. Tout le monde est détendu. Sébastien boit une bière, Amandine rit. C'est le dernier moment où l'équipe ressemble à une équipe normale. Parce que tu es en train de décider quel genre de culture tu veux imposer à ces gens. Et le mot « imposer » ne te paraît pas encore problématique.
EOF
)"

DIVERGE_CULTURE=$(git rev-parse HEAD)

# --- DIVERGE_PIVOT_METAVERSE ---
# Le commit pose la tension : zéro traction, une conférence qui approche
git commit --allow-empty -m "$(cat <<'EOF'
Le mur du mois 4. Zéro traction. Le produit existe techniquement — Sébastien a construit une architecture capable de supporter 10 millions d'utilisateurs, ce qui est impressionnant quand on en a 3 (toi, ta mère qui a installé l'app par erreur, et un bot russe). Le board commence à poser des questions. Le burn rate est à 45 000 € par mois. Il reste 620 000 € en banque. Ça semble beaucoup. Ça ne l'est pas.

Tu as un billet pour VivaTech la semaine prochaine. Amandine te supplie : « Concentre-toi sur le produit. On a besoin de tester des hypothèses, pas de nouvelles idées. » Sébastien te prévient : « Si on pivote encore, je refais tout from scratch et on perd 3 mois. » Mais la conférence approche, et toi, à chaque conférence, tu reviens avec une révélation. L'équipe le sait. Toi aussi. La question n'est pas si tu vas revenir avec une nouvelle obsession. La question, c'est laquelle.
EOF
)"

DIVERGE_PIVOT_METAVERSE=$(git rev-parse HEAD)

# --- DIVERGE_THOUGHT_LEADERSHIP & DIVERGE_ACQUIHIRE ---
# Le commit pose la tension : après le pivot, la crédibilité est en jeu
git commit --allow-empty -m "$(cat <<'EOF'
Le premier pivot. Tu reviens de VivaTech avec une révélation : « L'IA conversationnelle va tout changer. » Tu convoques un all-hands. « NexaFlow n'est plus une plateforme de flux B2B. NexaFlow est désormais un copilote IA pour les décideurs. » Sébastien te regarde avec l'expression d'un homme qui vient de voir trois semaines de travail Rust partir à la poubelle. Amandine décolle 200 post-its. Hugo rédige déjà le post LinkedIn.

Trois semaines plus tard, le pivot est acté mais la traction est toujours à zéro. Le problème a changé de nom, pas de nature. Et maintenant tu as un nouveau souci : ta crédibilité. L'écosystème te regarde. Les investisseurs attendent des signaux. Hugo te dit « il faut occuper le terrain médiatique ». Sébastien te dit « il faut que le produit marche avant de communiquer ». Un email de TechCrunch traîne dans ta boîte : un article sur les acqui-hires, ces rachats de startups pour récupérer les talents. Tu te demandes si c'est plus rapide de construire une équipe... ou d'en acheter une.
EOF
)"

DIVERGE_THOUGHT_LEADERSHIP=$(git rev-parse HEAD)
DIVERGE_ACQUIHIRE=$(git rev-parse HEAD)

# --- DIVERGE_RETRAITE ---
# Le commit pose la tension : les OKR révèlent le vide, besoin de se réaligner
git commit --allow-empty -m "$(cat <<'EOF'
Les OKR. Tu as lu « Measure What Matters » de John Doerr pendant un vol Paris-Lisbonne. Tu décides d'implémenter les OKR. Le résultat est un Google Sheet de 47 lignes avec des formules conditionnelles qui ne marchent pas. Objective 1 : « Devenir le leader européen du copilote IA B2B ». Key Result : « Atteindre 10 000 MAU d'ici Q3 ». Vous en êtes à 3.

Amandine demande timidement : « Est-ce qu'on pourrait d'abord définir ce que fait le produit avant de définir des KPI ? » Tu notes mentalement qu'elle « n'est pas assez ambitieuse ». L'équipe est perdue. Les objectifs ne veulent rien dire. Sébastien code dans le vide. Amandine n'arrive pas à prioriser. Hugo publie des posts LinkedIn sur une vision que personne ne comprend. Le décalage entre ce que tu crois être et ce que tu es réellement devient un gouffre. Tu sens qu'il faut un déclic, un moment de cohésion. Quelque chose pour « réaligner les troupes ». La question, c'est comment.
EOF
)"

DIVERGE_RETRAITE=$(git rev-parse HEAD)

# --- DIVERGE_IA_PARTOUT ---
# Le commit pose la tension : les all-hands sont un monologue, l'équipe décroche, un tournant tech arrive
git commit --allow-empty -m "$(cat <<'EOF'
L'all-hands. Tu instaures un all-hands hebdomadaire. Chaque lundi, 10h, une heure bloquée. En pratique, ça dure 1h47 en moyenne. Tu commences par un « CEO Update » de 40 minutes où tu partages ta vision, qui change chaque semaine en fonction du dernier podcast que tu as écouté. Cette semaine c'est « Product-Led Growth ». La semaine dernière c'était « Community-Led Growth ». Sébastien murmure à Amandine : « La semaine prochaine ce sera Luck-Led Growth. »

Et puis un lundi matin, ChatGPT sort en accès grand public. Ton feed LinkedIn explose. Ton feed Twitter explose. Tes groupes WhatsApp explosent. Tout le monde parle d'IA. Tout le monde dit que ça change tout. Tu passes le week-end à poser des questions à ChatGPT comme un enfant devant un jouet neuf. Lundi matin, tu arrives au bureau avec des yeux de visionnaire illuminé et une certitude : il faut réagir. Sébastien te voit arriver et dit à Amandine : « Il a la tête de quelqu'un qui va nous annoncer un nouveau pivot. » Amandine : « Ou pire. »
EOF
)"

DIVERGE_IA_PARTOUT=$(git rev-parse HEAD)

# --- DIVERGE_BOARD & DIVERGE_SHITSTORM ---
# Le commit pose la tension : la phrase "famille", la pression monte, la façade craque
git commit --allow-empty -m "$(cat <<'EOF'
« On est une famille ». Tu prononces la phrase interdite lors d'un Friday Drinks. « Chez NexaFlow, on n'est pas une entreprise, on est une famille. » Sébastien recrache sa bière artisanale. Amandine échange un regard avec Hugo. En pratique, « famille » signifie que tu envoies des messages Slack à 23h45, que tu t'attends à ce que les gens répondent le week-end, et que toute critique est perçue comme une « trahison ».

Mois 7. Les tensions sont partout. Amandine a mis à jour son CV. Sébastien code en silence avec un casque anti-bruit. Hugo sourit tout le temps mais ne produit rien. Nadia, l'office manager, prend des anxiolytiques. Et toi, tu ne vois rien. Tu es en guerre contre le monde extérieur — un twittos a critiqué NexaFlow hier soir, et ça te démange de répondre. En même temps, le board meeting trimestriel approche, et tu n'as aucun chiffre à montrer. Deux fronts. Deux menaces. Et toi au milieu, à te demander lequel éteindre en premier.
EOF
)"

DIVERGE_BOARD=$(git rev-parse HEAD)
DIVERGE_SHITSTORM=$(git rev-parse HEAD)

# --- DIVERGE_DEMO_DAY ---
# Le commit pose la tension : la presse a parlé, les investisseurs regardent, il faut prouver
git commit --allow-empty -m "$(cat <<'EOF'
La presse. L'article tombe dans Maddyness : « NexaFlow, la startup française qui veut réinventer l'IA décisionnelle ». Hugo a travaillé trois semaines pour obtenir cet article. Les retombées : 2 300 visites sur le site (temps moyen : 8 secondes), 14 inscriptions à la beta (dont 6 journalistes), et un mail de ta tante Martine : « C'est quoi exactement que tu fais ? »

Mais l'article a un effet secondaire inattendu : tu es sur le radar. Un fonds parisien t'invite à participer à un « Pitch & Demo Day » devant 30 investisseurs le mois prochain. Sébastien pâlit. Le produit tient avec du scotch et des prières. Une démo live serait du suicide technique. Mais refuser, c'est passer pour un lâche. Accepter, c'est risquer l'humiliation publique. Hugo veut foncer. Sébastien veut fuir. Margaux, la stagiaire, propose une vidéo pré-enregistrée en plan B. Toi, tu regardes ta photo dans Maddyness — col roulé, néon DISRUPT OR DIE en arrière-plan — et tu te demandes si tu es prêt à parier ta crédibilité sur une démo live.
EOF
)"

DIVERGE_DEMO_DAY=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Interlude — Le recrutement du stagiaire. Tu publies une offre de stage sur LinkedIn : « Stage de fin d'études — Startup IA en hypercroissance — Mission : tout. » Le « tout » est littéral. Tu reçois 89 candidatures. Tu recrutes Margaux, 23 ans, étudiante à Dauphine, parce qu'elle est la seule à avoir posé la question « Quel est votre business model ? » en entretien. Tu lui as répondu « On monétise l'engagement » et elle a hoché la tête comme si ça voulait dire quelque chose. Elle apprendra vite que ça ne veut rien dire.

Margaux est payée 600 €/mois. En deux semaines, elle fait plus de travail utile que le reste de l'équipe en deux mois. Elle parle aux utilisateurs (les 3 vrais), elle trouve 7 bugs critiques, et elle crée un dashboard Analytics fonctionnel pendant que Sébastien « refactorise le module d'ingestion ». Tu la mets sur chaque projet. Tu lui donnes le titre « Chief of Staff ». Elle a 23 ans et un stage de 6 mois. Tu la surcharges jusqu'à ce qu'elle pleure dans les toilettes un mardi. Tu ne le sauras jamais.
EOF
)"

# --- DIVERGE_CTO_DEMISSION ---
# Le commit pose la tension : les métriques vanity gonflent, le board est dupe, mais le CTO voit tout
git commit --allow-empty -m "$(cat <<'EOF'
Le mirage de la croissance. Mois 7. Hugo a trouvé un hack. En payant des micro-influenceurs LinkedIn à 50 € le post, il génère 500 inscriptions par semaine. Le problème : personne n'utilise le produit après l'inscription. Le taux de rétention à J+7 est de 0.8%. Mais le nombre d'inscrits, lui, monte en flèche. Le graphique est magnifique. Tu le présentes au board. « 12 000 inscrits en 3 mois ! » Personne ne demande le taux d'activation.

Mais Sébastien, lui, regarde les vrais chiffres. La base de données. Les logs. Les sessions de 4 secondes. Il sait que les 12 000 inscrits sont un château de sable. Il sait aussi que tu le sais. Et il sait que tu t'en fiches. Quelque chose se brise chez lui ce mardi soir, quand il te voit célébrer les métriques vanity au Friday Drinks (oui, c'est mardi, mais tu as avancé l'apéro pour fêter les « 12K »). Il rentre chez lui. Il ouvre son laptop. Il ne code pas. Il ouvre LinkedIn et tape « CTO startup SaaS Paris » dans la barre de recherche.
EOF
)"

DIVERGE_CTO_DEMISSION=$(git rev-parse HEAD)

# --- DIVERGE_RETOUR_REALITE ---
# Le commit pose la tension : Amandine est partie, tu es seul aux commandes du produit
git commit --allow-empty -m "$(cat <<'EOF'
Les premiers craquements. Mois 9. Amandine démissionne. Son mail est poli, professionnel, et dévastateur dans sa retenue : « Je quitte NexaFlow pour des raisons de divergence de vision produit. » En off, elle dit à Sébastien : « Je ne peux plus travailler pour quelqu'un qui change de vision tous les lundis matin. »

Tu remplaces Amandine par... personne. Tu décides de « reprendre le produit en main toi-même ». Tu crées un Notion intitulé « CEO-PM Playbook » avec une roadmap de 200 items. Tu priorises tout en P0. Sébastien te demande ce qui est vraiment urgent. Tu réponds : « Tout. » Le bureau se vide un peu plus chaque semaine. Nadia regarde des offres d'emploi pendant sa pause déjeuner. Hugo espace ses posts LinkedIn. Et toi, pour la première fois, tu te retrouves seul avec le silence. Ce silence que tu remplissais de keynotes, de visions, de pivots. Sauf que là, il n'y a plus d'audience. Juste toi et la question que tu évites depuis 9 mois : est-ce que ce truc peut être sauvé ?
EOF
)"

DIVERGE_RETOUR_REALITE=$(git rev-parse HEAD)

# --- DIVERGE_PIVOT_CONSULTING & DIVERGE_REVENTE ---
# Le commit pose la tension : le compte est presque vide, le board est glacial, fin de partie imminente
git commit --allow-empty -m "$(cat <<'EOF'
La réalité frappe. Mois 11. Le compte en banque affiche 127 000 €. Le burn rate est à 52 000 €/mois. Le runway est de 2 mois et demi. Le board meeting de novembre est glacial. L'associé VC pose enfin la question : « Quel est votre MRR ? » Tu déglutis. « 340 € par mois. Trois clients payants. »

La réunion dure encore 45 minutes. Elle aurait dû durer 5. En sortant, tu as le vertige. Pas celui de l'échec — celui du choix. Parce que pour la première fois depuis 11 mois, la réalité ne te laisse plus le luxe de rêver. Il faut agir. Et il y a exactement trois portes devant toi. Fermer proprement et écrire le mail de dissolution. Pivoter le business model vers quelque chose qui génère du cash immédiatement. Ou trouver un repreneur avant que le compte atteigne zéro. 127 000 €. 52 000 par mois. Le chronomètre tourne, et chaque option a un prix.
EOF
)"

DIVERGE_PIVOT_CONSULTING=$(git rev-parse HEAD)
DIVERGE_REVENTE=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
La descente. Mois 12. Hugo est parti. Il a trouvé un poste de « Head of Growth » dans une autre startup — celle-ci a des utilisateurs, un business model, et un CEO qui ne change pas de stratégie toutes les semaines. Son post LinkedIn de départ est un chef-d'œuvre de diplomatie : « Merci NexaFlow pour cette aventure incroyable. J'ai appris tellement. Next chapter! 🚀 ». Il a appris quoi exactement, il ne le précise pas.

Tu es à trois. Toi, Sébastien (qui code en silence et ne te regarde plus dans les yeux), et Nadia (qui n'a plus de vibe à manager). Le néon DISRUPT OR DIE clignote — l'alimentation est défaillante. Tu n'as pas le budget pour le réparer. La métaphore est tellement évidente qu'elle en devient gênante.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le mur. Mois 13. Il reste 38 000 € sur le compte. Assez pour un mois de salaires et la résiliation anticipée du bail de Station F. Tu convoques Sébastien et Nadia pour « un point ». Ils savent. Tout le monde sait.

Tu rédiges le mail de dissolution à 2h du matin, assis sur la chaise ergonomique à 699 € qui ne t'a jamais empêché d'avoir mal au dos. « Chers investisseurs, chers partenaires, c'est avec une profonde émotion... » Tu effaces. Tu recommences. « Après 14 mois d'aventure entrepreneuriale... » Tu effaces encore. Finalement tu écris la vérité : « NexaFlow n'a pas trouvé son marché. Nous cessons nos activités. » C'est la première fois que tu dis un truc simple et honnête depuis 14 mois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Épilogue — Le bilan. Le liquidateur t'annonce que les actifs de NexaFlow valent 4 200 € : le mobilier USM (déprécié), la Marzocca (occasion), et le néon DISRUPT OR DIE (racheté par un bar à cocktails de Bastille qui trouve ça « ironique »). Tu as brûlé 800 000 € d'argent public en 14 mois. Le produit final avait 3 clients payants et un taux de churn de 67%.

Tu mets à jour ton profil LinkedIn. Tu remplaces « CEO & Founder @ NexaFlow — Disrupting B2B with AI 🚀 » par « Entrepreneur | Ex-NexaFlow | Open to opportunities ». Tu reçois 43 messages de sympathie, 12 propositions de « prendre un café », et une offre de CDI chez Capgemini. Tu la refuses. Puis tu la reconsidères. Puis tu l'acceptes. Le premier jour, on te demande de remplir un formulaire en trois exemplaires pour obtenir un badge d'accès. Tu souris. C'est la première fois en 14 mois que quelqu'un te demande de faire quelque chose de simple et réalisable.
EOF
)"

# Store final main HEAD for reference
MAIN_HEAD=$(git rev-parse HEAD)

# ============================================================================
# === BRANCH: feature/keynote-interne ===
# === Diverge quand l'équipe attend une direction et le CEO choisit... une keynote ===
# ============================================================================

git checkout -b feature/keynote-interne $DIVERGE_KEYNOTE

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides de faire ta première keynote interne. Tu as regardé 47 vidéos de Steve Jobs sur YouTube. Tu as commandé un col roulé noir chez Uniqlo (29,90 €) et tu t'es entraîné devant ton miroir à dire « One more thing » avec le bon timing. La salle de réunion de Station F fait 40m². Ton audience : 4 personnes. Le ratio préparation/audience est de 12 heures pour 4 humains.

Tu baisses les lumières. Tu lances ta première slide : le logo NexaFlow, seul, sur fond noir. Silence de 8 secondes. « Aujourd'hui... nous allons changer... la typographie de notre logo. » Amandine regarde Sébastien. Sébastien regarde le plafond. Hugo prend une photo pour Instagram.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La keynote dure 45 minutes. 45 minutes pour annoncer trois choses : le logo passe de Montserrat à Inter (« plus lisible, plus humain, plus scalable »), la couleur primaire passe de #3B82F6 à #2563EB (« plus profond, plus confiant, plus disruptif »), et le slogan passe de « Fluidify your flows » à « Flow beyond limits ». Budget total du rebranding : 18 000 € payés à un studio de design de Shoreditch qui a mis 6 semaines à choisir entre deux nuances de bleu indiscernables à l'œil nu.

Tu termines par ton « One more thing ». Le moment que tu as répété 30 fois. « One more thing... » pause dramatique de 4 secondes « ...des stickers. » Tu dévoiles les nouveaux stickers NexaFlow. Nadia applaudit. Les autres sont déjà en train de répondre à leurs mails sous la table.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La keynote devient un rituel mensuel. Chaque premier lundi du mois, tu mobilises toute l'équipe pendant une heure pour des annonces de plus en plus déconnectées de la réalité. La keynote de mars annonce un « programme d'ambassador interne ». Vous êtes 6. La keynote d'avril révèle la « NexaFlow Design System v2.0 » — pour un produit qui a 3 utilisateurs. La keynote de mai introduit les « NexaFlow Values Cards », un jeu de cartes à distribuer aux employés avec des valeurs comme « Bold », « Human », et « Relentless ».

Sébastien craque à la keynote de juin. Tu annonces un « hackathon vision » de 48h. Il lève la main : « Est-ce qu'on pourrait utiliser ces 48 heures pour, je ne sais pas, corriger les 34 bugs critiques en production ? » Le silence est assourdissant. Tu le notes mentalement comme « résistant au changement ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La keynote de juillet est celle de trop. Tu as invité un « guest speaker » : un ami d'ami qui se présente comme « futurologue » et qui facture 2 000 € l'intervention. Il parle pendant 30 minutes de « la singularité technologique et l'émergence de la conscience post-humaine ». Amandine dessine des chats sur son cahier. Hugo filme. Sébastien est en remote et prétend que sa caméra est cassée (elle ne l'est pas).

Le futurologue conclut par : « Dans 5 ans, les entreprises seront dirigées par des IA. Les CEO humains seront obsolètes. » Tu applaudis avec enthousiasme, sans réaliser qu'il vient d'annoncer ta propre obsolescence devant ton équipe. Amandine murmure à Nadia : « On peut accélérer le processus ? » Le devis du futurologue arrive le lendemain : 2 000 € + frais de déplacement depuis Marseille (380 €) + « honoraires de suivi stratégique » de 500 €. Total : 2 880 € pour une demi-heure de science-fiction en PowerPoint.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La dernière keynote est la plus ambitieuse. Tu as loué un micro-casque sans fil (180 €/jour), installé un écran LED de 3 mètres (location : 2 400 €), et tu as fait imprimer des t-shirts « NexaFlow World Tour 2025 » pour 7 personnes. Le thème : « NexaFlow 2.0 — The Quantum Leap ». Tu marches sur scène — enfin, tu marches devant l'écran LED dans la salle de réunion — avec la playlist « Epic Motivation » de Spotify en fond sonore.

Tu annonces un pivot vers le « Quantum AI ». Personne ne sait ce que c'est. Toi non plus. Mais le slide est magnifique : un fond violet avec des particules qui bougent et le mot « QUANTUM » en lettres de 200 points. Sébastien se lève, dit « Non », et sort de la salle. C'est la première fois que quelqu'un dit non dans une de tes keynotes. C'est aussi la dernière keynote.
EOF
)"

# ============================================================================
# === BRANCH: feature/pivot-metaverse ===
# === Diverge quand le CEO revient de conférence avec une nouvelle obsession ===
# ============================================================================

git checkout -b feature/pivot-metaverse $DIVERGE_PIVOT_METAVERSE

git commit --allow-empty -m "$(cat <<'EOF'
Tu reviens du CES de Las Vegas avec une valise pleine de goodies tech et une conviction : le métaverse est l'avenir. Tu as essayé le Meta Quest Pro sur le stand de Meta. Tu as discuté 4 minutes avec un VP de chez Epic Games (il cherchait les toilettes, mais tu comptes ça comme du networking). Tu atterris à Roissy avec un plan : NexaFlow sera la première plateforme B2B dans le métaverse.

Tu commandes 8 casques Meta Quest 3 à 549 € pièce. Pour une équipe de 6 personnes. « Les deux extras, c'est pour les visiteurs et les investisseurs ». Tu fais installer une « Metaverse Room » dans un coin du bureau : un tapis de yoga pour délimiter la zone de jeu et un panneau « ENTREZ DANS LE FUTUR » imprimé chez Copees.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Première réunion dans le métaverse. Tu as créé un « NexaFlow Virtual HQ » dans Horizon Workrooms. C'est une salle de réunion virtuelle avec un tableau blanc virtuel et des avatars qui n'ont pas de jambes. Sébastien refuse de mettre le casque (« j'ai la nausée en 12 secondes »). Amandine essaie, se cogne dans le bureau réel, et renverse son café sur le clavier de Hugo. Hugo, lui, est ravi : il fait un TikTok de l'expérience.

La réunion dure 15 minutes au lieu de l'heure prévue. Les problèmes : le WiFi de Station F ne tient pas la charge, les avatars se figent toutes les 30 secondes, et tu n'arrives pas à partager ton écran virtuel. Tu finis par enlever le casque et faire la réunion normalement. Mais tu insistes : « C'est le futur, il faut juste que la tech suive. »
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 2 du pivot métaverse. Tu as dépensé 35 000 € pour faire développer un « showroom virtuel NexaFlow » par un studio 3D en Ukraine. Le showroom est magnifique : des murs en marbre virtuel, une fontaine digitale, et un hologramme de toi qui fait la visite guidée. Le problème : personne n'y va. En un mois, le showroom a reçu 4 visiteurs. Trois étaient des bots. Le quatrième était ta mère qui avait cliqué sur le mauvais lien.

Tu organises un « Metaverse Demo Day » pour les investisseurs. Sur 12 invités, 2 viennent. L'un n'a pas de casque et regarde sur son laptop (« c'est comme un jeu vidéo moche ? »). L'autre met le casque, fait trois pas, trébuche sur un câble, et demande un verre d'eau. Tu pivotes à nouveau le mois suivant. Les casques finissent dans un carton sous le bureau de Nadia. Elle les utilise pour caler la porte.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Post-mortem du pivot métaverse. Le bilan financier est douloureux : 4 392 € en casques VR (8 × 549 €), 35 000 € en développement 3D, 2 800 € en abonnements Spatial et Horizon Workrooms, et 1 200 € de réparation pour le laptop de Hugo (le café renversé par Amandine pendant la première réunion VR). Total : 43 392 € pour un projet qui a duré 2 mois et produit exactement 0 valeur business.

Sébastien ajoute une ligne dans le Notion « Pivots postmortems » (oui, il y a un Notion dédié aux postmortems de pivots, ce qui en dit long sur la fréquence des pivots). Colonne « Lessons learned » : « Ne pas pivoter la stratégie de l'entreprise après avoir essayé un gadget dans un salon. » Colonne « Action items » : « CEO interdit de CES, VivaTech, et tout événement avec des stands de démonstration. » Cette dernière colonne sera ignorée.
EOF
)"

# ============================================================================
# === BRANCH: feature/culture-hustle ===
# === Diverge quand le CEO décide du rythme de l'équipe ===
# ============================================================================

git checkout -b feature/culture-hustle $DIVERGE_CULTURE

git commit --allow-empty -m "$(cat <<'EOF'
Tu as écouté le podcast de Gary Vaynerchuk en boucle pendant un week-end. Lundi matin, tu arrives au bureau à 6h30. Tu postes une story Instagram depuis l'open space vide : « While they sleep, I build. #RiseAndGrind #StartupLife #NexaFlow ». Tu actives les notifications Slack sur ton téléphone pour vérifier que tout le monde est bien connecté avant 9h. Sébastien se connecte à 9h15. Tu lui envoies un message : « Hey ! On avait dit 9h sharp pour le standup 😊 ». Le smiley est passif-agressif et tout le monde le sait.

Tu crées un channel Slack #motivation-daily où tu postes chaque matin une citation inspirationnelle. Lundi : « Hard work beats talent when talent doesn't work hard. » Mardi : « The only way to do great work is to love what you do. » Mercredi : Sébastien mute le channel.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le rythme s'installe. Tu envoies des mails à 4h du matin — pas parce que tu travailles à 4h, mais parce que tu programmes l'envoi à 4h pour que les gens voient l'heure et soient impressionnés. Tu parles de « ownership » et de « going the extra mile » en boucle. Quand Amandine part à 18h30, tu lances : « Tu prends ton aprèm ? » C'est une blague. Personne ne rit.

Le vendredi soir, tu organises des « working apéros ». Le concept : on boit des bières artisanales (budget : 80 €/semaine) tout en « brainstormant sur la roadmap ». En pratique, c'est une réunion déguisée en moment convivial, et tout le monde est obligé de rester jusqu'à 21h sous peine de paraître « pas engagé ». Hugo adore. Sébastien commande un Uber à 19h01.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 5. Nadia craque la première. Elle vient te voir un mardi matin avec des cernes qui rivalisent avec les tiens. « Je fais des cauchemars où mon téléphone Slack vibre en permanence. Mon médecin dit que je suis en pré-burnout. » Tu réponds : « Je comprends totalement. Prends soin de toi. Mais tu sais, le sacrifice à court terme, c'est ce qui différencie les startups qui réussissent des autres. » Elle pose sa démission le lendemain.

Amandine la suit deux semaines plus tard. Puis le freelance backend. Tu te retrouves avec Sébastien et Hugo — le CTO qui ne dort plus et le Head of Growth qui a optimisé sa capacité à avoir l'air occupé sans rien produire. Tu postes un dernier message sur #motivation-daily : « Quand l'équipe rétrécit, la détermination grandit. » Sébastien ne mute même plus le channel. Il ne l'ouvre plus du tout.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le médecin du travail convoque une réunion exceptionnelle après le départ de Nadia. Le rapport mentionne « charge de travail excessive », « pression managériale implicite », et « culture organisationnelle incompatible avec l'équilibre vie pro/perso ». Tu lis le rapport comme si c'était écrit en mandarin. « Mais on est une startup, c'est normal que ce soit intense ! » Le médecin te regarde par-dessus ses lunettes avec la patience d'un homme qui a vu 200 CEO dire exactement la même chose.

Tu publies un post LinkedIn intitulé « Pourquoi la hustle culture est nécessaire dans l'écosystème startup français ». Il obtient 3 400 likes, 89 commentaires (dont 70 qui te traitent de sociopathe), et un DM d'un avocat spécialisé en droit du travail qui te propose ses services « à titre préventif ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Épilogue hustle. Le tribunal des prud'hommes de Paris rend sa décision 8 mois plus tard. Nadia obtient 12 000 € de dommages pour « conditions de travail dégradées et pression managériale abusive ». Le jugement cite spécifiquement les messages Slack envoyés après 23h comme preuve de « disponibilité permanente implicitement exigée ». Ton avocat te dit que c'est « un jugement clément ». Tu ne te sens pas clément.

L'article sur le jugement sort dans Capital — le même journal qui avait couvert NexaFlow avec enthousiasme 6 mois plus tôt. Le titre : « Quand la culture startup dérape : un CEO condamné aux prud'hommes pour harcèlement moral par le travail ». Ton post LinkedIn « Pourquoi la hustle culture est nécessaire » est cité in extenso comme pièce du dossier. L'ironie est si épaisse que tu pourrais la couper au couteau et la servir en entrée.
EOF
)"

# ============================================================================
# === BRANCH: feature/thought-leadership ===
# === Diverge quand le CEO doit choisir entre construire et communiquer ===
# ============================================================================

git checkout -b feature/thought-leadership $DIVERGE_THOUGHT_LEADERSHIP

git commit --allow-empty -m "$(cat <<'EOF'
Tu découvres LinkedIn. Enfin, tu le redécouvres. Pas comme un outil de recrutement — comme une scène. Tu publies ton premier post « thought leadership » un mardi à 8h02 (heure optimale selon un article de Buffer que tu as lu). Le post commence par « Il y a 6 mois, j'ai tout quitté. » (Tu as quitté McKinsey avec 18 mois d'indemnités et un réseau d'anciens consultants, mais ça fait moins bien.)

Le post fait 2 800 likes. C'est 2 800 fois plus que le nombre d'utilisateurs de NexaFlow. Tu découvres que raconter ta vie de CEO est infiniment plus gratifiant que de construire un produit. Le ratio effort/dopamine est imbattable. Tu publies trois fois par semaine. Puis tous les jours. Puis deux fois par jour. Hugo te dit que tu « construis une personal brand incroyable ». Sébastien te dit que tu « devrais peut-être regarder les tickets Jira une fois de temps en temps ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le TEDx arrive. TEDxSaclay. Le thème : « Oser l'impossible ». Tu prépares ton talk pendant trois semaines. Trois semaines pendant lesquelles tu ne regardes pas une seule métrique produit. Le titre : « Comment j'ai appris à désapprendre pour réapprendre à entreprendre ». C'est du français techniquement, mais ça ne veut rien dire.

Le talk dure 12 minutes. Tu racontes ton « parcours » — McKinsey, le déclic, la startup. Tu utilises des pauses dramatiques toutes les 90 secondes. Tu cites Steve Jobs deux fois, Elon Musk une fois (tu le regrettes immédiatement), et un proverbe africain dont tu n'es pas sûr de la source. L'audience applaudit poliment. La vidéo YouTube fait 4 200 vues en un mois. Ta mère l'a regardée 17 fois. Tu mets « TEDx Speaker » dans ta bio LinkedIn avant même que la vidéo soit en ligne.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les podcasts s'enchaînent. Tu passes dans « Génération Do It Yourself » (2h d'interview, tu parles de toi pendant 1h55 et du produit pendant 5 minutes), « Les Jeunes Pousses » (tu dis « pivot » 23 fois), et un podcast obscur sur Spotify avec 12 auditeurs intitulé « StartupVibes420 » dont l'animateur t'appelle « le Elon français » sans ironie.

Tu commences à écrire un livre. Titre provisoire : « Disrupter le disruptif — Comment penser au-delà de la pensée ». Tu as écrit 3 000 mots. Les 3 000 mots sont l'introduction. L'introduction parle de toi. Le livre n'ira pas plus loin parce qu'au chapitre 2 tu aurais dû parler de résultats concrets et tu n'en as pas. Le manuscrit restera à jamais dans un Google Doc intitulé « LIVRE — NE PAS TOUCHER ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le sommet de ta carrière médiatique arrive quand BFM Business t'invite pour un débat sur « L'IA va-t-elle remplacer les managers ? ». Tu es face à un prof de Polytechnique et une DRH du CAC40. Tu dis « disruption » trois fois en 2 minutes. Le prof te corrige poliment sur ta définition de l'IA générative (tu confonds GPT et deep learning, mais tu le dis avec tellement d'assurance que personne ne remarque). La DRH te regarde comme on regarde un enfant qui explique la physique quantique avec des Playmobil.

Le passage BFM te vaut 1 200 nouveaux followers LinkedIn. Et un appel de ton investisseur : « J'ai vu ton passage. C'était bien. Mais ton MRR est toujours à 340 € et tu as passé 3 semaines à préparer un TEDx au lieu de vendre. On peut en parler ? » Tu programmes un call. Tu le repousse trois fois. Tu publies un post LinkedIn intitulé « Pourquoi le personal branding est le meilleur investissement d'un CEO ».
EOF
)"

# ============================================================================
# === BRANCH: feature/acqui-hire-frénésie ===
# === Diverge quand le CEO choisit d'acheter des équipes plutôt que de construire ===
# ============================================================================

git checkout -b feature/acqui-hire-frenesie $DIVERGE_ACQUIHIRE

git commit --allow-empty -m "$(cat <<'EOF'
Tu lis un article de TechCrunch sur les « acqui-hires » — ces rachats de startups où on achète l'équipe, pas le produit. Tu as une révélation : pourquoi recruter un par un quand on peut racheter des équipes entières ? Tu annonces au board : « Notre stratégie M&A va accélérer notre time-to-market de manière exponentielle. » Le business angel demande : « On a un time-to-market ? » Tu ignores la question.

Ta première cible : une startup de 3 personnes basée à Bordeaux qui fait du « NLP appliqué au vin ». Ils ont un modèle qui analyse les descriptions de vin et prédit les notes Parker. C'est complètement hors sujet, mais ils ont un data scientist et tu en as besoin. Le prix : 80 000 € en cash + equity NexaFlow. Tu signes en 48h sans due diligence.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'intégration de l'équipe vin est un désastre. Le data scientist, Pierre-Louis, arrive à Station F avec son propre Mac configuré en Arch Linux et refuse d'utiliser Slack (« trop centraliste »). Il communique par IRC. En 2025. Les deux autres — une designeuse et un dev Ruby — découvrent que NexaFlow n'a pas de produit fonctionnel. La designeuse demande : « Sur quoi je suis censée travailler ? » Tu réponds : « Sur la vision. » Elle commence à chercher un autre job la même semaine.

Deuxième acquisition : une micro-startup parisienne de 2 personnes qui fait un « CRM augmenté par l'IA émotionnelle ». Coût : 50 000 €. Le produit est un Google Sheet avec des formules IF/THEN et un chatbot qui répond « Je comprends votre frustration » à tout. Tu rachètes quand même. Pour « les talents ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
En 3 mois, tu as racheté 4 micro-startups pour un total de 280 000 € — soit 35% de ta levée initiale. L'effectif passe de 6 à 17 personnes. Le bureau est bondé. Les équipes ne se parlent pas. Chaque « acqui-hire » a sa propre stack technique, son propre outil de gestion de projet, et sa propre définition de ce que fait NexaFlow.

Le standup du lundi ressemble à une réunion de l'ONU. Pierre-Louis parle de NLP. L'équipe CRM parle d'intelligence émotionnelle. La troisième acquisition (2 devs blockchain, 60K €) parle de « tokenisation des workflows ». La quatrième (un UX researcher solo, 40K €) demande si quelqu'un a déjà parlé à un utilisateur. Personne n'a parlé à un utilisateur. Tu as 17 employés, 0 product-market fit, et un burn rate de 120 000 €/mois. Le runway est de 4 mois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 4 post-acquisitions. Les départs commencent. Pierre-Louis part le premier — « l'environnement n'est pas propice à la recherche fondamentale » (il retourne faire du NLP sur le vin en freelance). La designeuse est partie depuis deux mois. Les deux devs blockchain ont monté leur propre projet en utilisant le code qu'ils ont écrit chez toi — le contrat de cession de PI, tu avais oublié de le faire signer.

Tu te retrouves avec 9 personnes au lieu de 17, un compte en banque allégé de 280K €, et exactement le même produit qu'avant les acquisitions. Sébastien résume la situation avec une métaphore culinaire : « Tu as acheté 4 restaurants pour récupérer les chefs, sauf que les chefs sont partis et il te reste 4 baux commerciaux. » Tu trouves la métaphore injuste. Mais précise.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le pire arrive par courrier recommandé. L'UX researcher — la quatrième acquisition, celle à 40K € — a consulté un avocat. Son contrat de travail originel, celui de sa startup, comportait une clause de non-concurrence avec indemnité compensatoire. En la rachetant et en ne renouvelant pas correctement le contrat, tu es devenu redevable de 6 mois d'indemnité compensatoire : 24 000 €. Pour une personne qui a travaillé chez toi 7 semaines.

L'expert-comptable ajoute les chiffres : 280K € d'acquisitions + 24K € d'indemnité + 15K € de frais juridiques pour les contrats de cession de PI que tu n'avais pas fait signer et qu'il faut maintenant négocier rétroactivement. Total : 319 000 €. Presque 40% de ta levée initiale, partie en fumée dans une stratégie M&A digne d'un jeu de Monopoly joué par un enfant de 8 ans sous Red Bull.
EOF
)"

# ============================================================================
# === BRANCH: feature/retraite-strategique ===
# === Diverge quand l'équipe est perdue et le CEO cherche à "réaligner" ===
# ============================================================================

git checkout -b feature/retraite-strategique $DIVERGE_RETRAITE

git commit --allow-empty -m "$(cat <<'EOF'
Tu as lu dans Harvard Business Review que les « leadership offsites » sont essentiels pour « aligner la vision et renforcer la cohésion ». Tu décides d'organiser un séminaire stratégique de 3 jours. Budget : 45 000 €. Lieu : un château dans la Loire. Tu réserves le Château de Montfaucon — 15 chambres, salle de réception voûtée, parc de 12 hectares. Vous êtes 7.

Le programme est ambitieux : Day 1, « Vision & Ambition ». Day 2, « Culture & Values ». Day 3, « Execution & Accountability ». Tu as fait imprimer des carnets moleskine gravés « NexaFlow Offsite — Aligning for Greatness ». Chaque carnet coûte 28 €. Les carnets finiront dans des tiroirs de bureau, vierges, pour l'éternité.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Day 1. Le château est magnifique. L'équipe est impressionnée pendant exactement 20 minutes — le temps de prendre des photos pour Instagram. Puis tu lances la première session : « Visioning Exercise — Où sera NexaFlow dans 10 ans ? » Tu distribues des feuilles A3 et des feutres. « Dessinez votre vision. » Sébastien dessine un cercle et écrit « un produit qui marche ». Amandine dessine un organigramme avec des utilisateurs dedans. Hugo dessine le logo NexaFlow en très grand avec des flammes autour.

Le dîner est somptueux : 5 plats, 3 vins, fromages de la région. Le budget repas du séminaire est de 8 500 €. Tu te dis que c'est un investissement dans la « team cohesion ». Le sommelier explique les accords mets-vins. Sébastien calcule mentalement que le prix du dîner équivaut à 2 mois de serveur AWS.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Day 2. Tu as fait venir un « facilitateur de cohésion d'équipe » à 3 000 € la journée. Il s'appelle Grégoire. Il porte un pull en cachemire et des mocassins sans chaussettes. Sa méthode : « Le Leadership Somatique — écouter son corps pour mieux diriger. » La matinée commence par une heure de méditation guidée dans le parc. Sébastien s'endort. Hugo filme pour son Instagram.

L'après-midi, Grégoire propose un exercice de « vulnérabilité radicale ». Chacun doit partager « une peur professionnelle profonde ». Amandine dit qu'elle a peur que le produit ne trouve jamais son marché. Sébastien dit qu'il a peur de réécrire la codebase une troisième fois. Hugo dit qu'il a peur de ne pas atteindre 50K followers. Toi, tu dis que tu as peur « de ne pas être à la hauteur de ta propre vision ». Grégoire dit que c'est « magnifique ». Sébastien murmure « c'est surtout 45 000 € de budget pour dire des évidences dans un château ».
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Day 3. Le jour de l'exécution. Ironiquement, c'est le jour où rien ne se passe. Tu prévoyais une session « OKR Workshop » de 4 heures. Elle dure 45 minutes parce que tout le monde veut profiter de la piscine chauffée avant le checkout à 14h.

Le bilan du séminaire tient sur un post-it : « Être plus alignés. » C'est le seul livrable de 3 jours et 45 000 €. En revenant à Paris, Amandine calcule : 45 000 € divisé par 7 participants, divisé par 3 jours, ça fait 2 142 € par personne par jour. Pour écrire un post-it. Hugo poste un carrousel LinkedIn de 12 photos du château avec le caption : « 3 days of deep strategic alignment with my incredible team. This is what startup culture looks like. #Leadership #Offsite #Blessed ». Il a 4 700 likes. NexaFlow a toujours 3 utilisateurs.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Deux semaines après l'offsite. Tu organises un « Offsite Retro » pour évaluer l'offsite. La meta-réunion dure 1h30. Le feedback est unanime : « C'était cool mais on n'a rien produit. » Tu prends des notes et conclus : « Je pense qu'on devrait refaire un offsite pour implémenter les apprentissages de celui-ci. » Sébastien se lève et quitte la salle sans un mot. Amandine reste et te dit calmement : « Si tu organises un deuxième offsite, je démissionne. Ce n'est pas une menace, c'est un fait. »

Tu ranges le projet de deuxième offsite dans un dossier Notion intitulé « Offsite Q3 — En pause ». Le post-it « Être plus alignés » est toujours collé sur le mur de la salle de réunion. Il y restera 7 mois, jusqu'à ce que la climatisation le décolle et qu'il tombe dans la poubelle. Personne ne le ramasse. Personne ne remarque. C'est la fin la plus appropriée pour le seul livrable de 45 000 € d'investissement stratégique.
EOF
)"

# ============================================================================
# === BRANCH: feature/ia-partout ===
# === Diverge quand ChatGPT sort et le CEO veut tout changer ===
# ============================================================================

git checkout -b feature/ia-partout $DIVERGE_IA_PARTOUT

git commit --allow-empty -m "$(cat <<'EOF'
Tu arrives au bureau le lundi matin. « On met de l'IA partout. » Sébastien : « Partout où ? » Toi : « Partout partout. Le produit, le support, le marketing, les emails, les slides, le café. » Sébastien : « Le café ? » Toi : « C'est une métaphore. Quoique... une machine à café connectée avec recommandation IA... note ça. »

Tu rebaptises NexaFlow en « NexaFlow AI ». Tu ajoutes « Powered by AI » sur chaque page du site. Tu demandes à Sébastien d'intégrer l'API OpenAI dans le produit. Sébastien : « Pour faire quoi exactement ? » Toi : « Pour que ce soit IA. » Cette conversation dure 45 minutes et ne produit aucune spécification fonctionnelle.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Sébastien intègre GPT-4 dans le produit. Le résultat : un chatbot qui apparaît sur chaque page et répond à des questions que personne ne pose. « Bonjour, je suis NexaBot, votre copilote IA. Comment puis-je vous aider ? » Les 3 utilisateurs du produit cliquent sur le chatbot par curiosité. Il leur donne des réponses hallucinées sur des fonctionnalités qui n'existent pas. « Oui, NexaFlow peut tout à fait exporter vos données en format SAP ! » (Non.)

La facture OpenAI du premier mois : 3 200 €. Tu n'avais budgété que 200 €. Le chatbot a été déclenché 4 700 fois — dont 4 650 fois par des bots qui crawlent le site et engagent la conversation avec NexaBot. Tu as une IA qui parle à d'autres IA. C'est techniquement le futur, mais pas celui que tu avais imaginé.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides de « verticalisar l'IA ». Chaque feature du produit doit avoir son propre modèle. « AI-powered search », « AI-powered analytics », « AI-powered onboarding ». En réalité, c'est le même appel GPT-4 avec des prompts différents. Mais dans le pitch deck, ça donne 7 « modules IA propriétaires ». Le mot « propriétaire » est techniquement faux puisque c'est l'API d'OpenAI, mais les investisseurs ne posent pas la question.

Un VC de la place t'invite à déjeuner. Il est très intéressé par « la stack IA ». Tu parles pendant 90 minutes. Tu utilises les mots « LLM », « RAG », « fine-tuning », et « embeddings » sans les comprendre totalement. Le VC hoche la tête — il ne les comprend pas non plus. Vous êtes deux adultes qui font semblant de comprendre la même chose. C'est la base du venture capital.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La réalité frappe quand un prospect sérieux — une boîte du SBF120 — demande une démo. Tu fais la démo avec le chatbot IA. Le prospect pose une question métier précise. Le chatbot répond avec une hallucination spectaculaire : il invente un partenariat entre NexaFlow et Salesforce qui n'existe pas, cite des chiffres de performance totalement fictifs, et recommande au prospect de « contacter votre account manager dédié Jean-Philippe ». Il n'y a pas de Jean-Philippe chez NexaFlow. Il n'y a jamais eu de Jean-Philippe.

Le prospect raccroche poliment. Tu reçois un mail 20 minutes plus tard : « Merci pour la démo, nous ne donnerons pas suite. » Sébastien t'envoie un lien vers un article intitulé « Why AI Hallucinations Are Destroying B2B Trust ». Tu ne cliques pas. Tu cherches déjà le prochain buzzword.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le buzzword arrive un mardi : « AI Agents ». Tu lis un thread sur X qui explique que les agents IA autonomes vont remplacer les entreprises. Tu ne comprends pas exactement comment, mais tu sais que NexaFlow doit être « agent-first ». Tu demandes à Sébastien de « transformer le chatbot en agent autonome ». Sébastien : « Qu'est-ce qu'il est censé faire, cet agent ? » Toi : « Être autonome. » Sébastien : « Autonome pour faire quoi ? » Toi : « Pour agir. » Cette conversation tourne en boucle pendant 20 minutes.

Le résultat final : un chatbot qui, au lieu de répondre aux questions, envoie des emails automatiques aux clients pour « anticiper leurs besoins ». Le premier email automatique est envoyé à votre unique client payant sérieux — le directeur financier d'une PME lyonnaise — avec le contenu : « Bonjour, NexaBot a détecté que vous pourriez avoir besoin d'un audit de vos flux B2B. Souhaitez-vous planifier un call ? » Le client répond : « Merci de me désinscrire de votre spam. » Vous venez de perdre 33% de votre base clients payants. Par IA. Autonomement.
EOF
)"

# ============================================================================
# === BRANCH: hotfix/shitstorm-twitter ===
# === Diverge quand le CEO est sous pression et un twittos le provoque ===
# ============================================================================

git checkout -b hotfix/shitstorm-twitter $DIVERGE_SHITSTORM

git commit --allow-empty -m "$(cat <<'EOF'
23h47, un mardi soir. Tu es dans ton lit, tu scrolles Twitter. Tu tombes sur un thread qui critique les startups françaises « qui lèvent des millions sans revenu ». Un twittos cite NexaFlow comme exemple : « 800K de la BPI pour un chatbot qui n'a même pas de clients lol. » Ça te pique. Tu as bu deux verres de Côtes-du-Rhône. Tu réponds.

« @TechCritique_FR Si critiquer les entrepreneurs était un business model, tu aurais déjà levé en Série B. Nous, on construit. Toi, tu commentes. La différence entre un CEO et un twittos, c'est que l'un prend des risques et l'autre prend des screenshots. 🎤⬇️ » Tu appuies sur Envoyer avec la satisfaction du guerrier qui vient de clouer le bec à son adversaire. Tu t'endors fier. C'est ta dernière bonne nuit de sommeil de la semaine.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
8h du matin. Tu te réveilles avec 247 notifications. Le tweet a été retweeté 1 400 fois. Pas parce que les gens sont d'accord avec toi — parce que tu es devenu un meme. Le screenshot de ton tweet circule avec des légendes comme « CEO d'une startup à 0 revenu qui se prend pour Elon Musk » et « Arrogance subventionnée ». Un compte parodique « @NexaFlowCEO » est créé dans la nuit. Sa bio : « Je brûle l'argent de vos impôts et je m'en vante. »

Hugo t'appelle à 8h30. Sa voix tremble. « Tu as vu Twitter ? » Tu ouvres l'app. Le hashtag #NexaFlowGate est en trending topic France. Un journaliste de Capital a retweeté ton tweet avec le commentaire : « 800 000 € de financement public. Zéro client. Et c'est la réponse du CEO quand on le questionne. 🧐 ». Ta mère t'envoie un SMS : « Tu as dit quoi sur internet ? Mamie a vu. »
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La cellule de crise se réunit à 9h. Par « cellule de crise », tu veux dire toi, Hugo, et Sébastien autour de la machine à café. Hugo propose : « On publie un thread d'excuses. Ton, humble, vulnérable, transparent. » Sébastien propose : « On supprime le tweet et on ne dit rien. » Tu proposes : « On double down et on assume. »

Tu publies un thread de 12 tweets. C'est un désastre en temps réel. Tweet 1 : « Je m'excuse si mon ton a pu blesser. » Tweet 3 : « Mais je maintiens que critiquer est facile. » Tweet 7 : « Les entrepreneurs prennent des risques que les observateurs ne comprendront jamais. » Tweet 12 : « NexaFlow continuera d'innover, quoi qu'en disent les détracteurs. » Le thread passe de l'excuse à l'arrogance en 12 étapes. C'est les 5 stades du deuil mais sur Twitter, en public, devant 45 000 personnes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Vendredi. Le bilan. L'article de Capital est sorti : « NexaFlow : quand une startup BPI finance ses néons plutôt que son produit. » Le journaliste a trouvé la photo du néon DISRUPT OR DIE sur l'Instagram de Hugo. Il a calculé : 28 000 € de déco, 4 900 € de machine à café, 18 000 € de rebranding, 0 € de revenu. L'article est partagé 8 000 fois.

La BPI envoie un mail poli mais ferme : « Suite aux récentes publications médiatiques, nous souhaitons programmer un point d'avancement sur votre projet. » Traduction : « Qu'est-ce que vous foutez avec notre argent ? ». Ton investisseur appelle : « Tu ne tweetes plus jamais sans que je relise. Plus jamais. » Tu désinstalles Twitter de ton téléphone. Tu le réinstalles 4 heures plus tard. Mais tu ne tweetes plus. Tu lurkes. Comme tout le monde aurait dû faire depuis le début.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Trois mois plus tard. Le shitstorm est officiellement fini. Internet a oublié. Un autre CEO a dit quelque chose de pire sur X (un fondateur crypto qui a comparé les impôts à « l'esclavage moderne ») et tu es passé de « CEO arrogant du moment » à « CEO arrogant du mois dernier ». Le cycle de la honte numérique t'a épargné. Mais les cicatrices restent.

Le rendez-vous BPI s'est bien passé — Michel, le représentant, est venu, a posé des questions, a regardé les chiffres (toujours catastrophiques), et a dit : « On va suivre le dossier de près. » Tu as recruté un community manager freelance à 400 €/mois pour gérer les réseaux sociaux. Son premier acte : supprimer le compte parodique @NexaFlowCEO en négociant directement avec son créateur (un étudiant en école de commerce à Lille qui voulait juste « un truc marrant pour son portfolio »). Coût de la négociation : deux stickers NexaFlow et un café. Le meilleur ROI de toute l'histoire de NexaFlow.
EOF
)"

# ============================================================================
# === BRANCH: hotfix/demo-day-catastrophe ===
# === Diverge quand le CEO doit choisir entre prudence et spectacle ===
# ============================================================================

git checkout -b hotfix/demo-day-catastrophe $DIVERGE_DEMO_DAY

git commit --allow-empty -m "$(cat <<'EOF'
Le demo day investisseurs. C'est le moment de vérité. Un fonds parisien organise un « Pitch & Demo Day » avec 8 startups devant 30 investisseurs. Tu as la slot de 14h40. Tu as préparé une démo live du produit. Sébastien t'a supplié de faire une vidéo pré-enregistrée. « Les démos live, c'est le mal. Murphy's Law. » Tu as refusé. « Les vrais entrepreneurs font des démos live. Steve Jobs faisait des démos live. » Sébastien : « Steve Jobs avait une équipe de 50 personnes pour préparer ses démos. Tu as moi, et je n'ai pas dormi depuis 36 heures. »

Tu montes sur scène. Col roulé noir. Slide 1 : « NexaFlow — The Future of AI-Powered Decision Making. » Tu cliques sur le lien de la démo. L'écran affiche une page de chargement. Il tourne. Et tourne. Et tourne.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
30 secondes de chargement. Tu fais une blague : « Même l'IA a besoin d'un café le matin ! » Rires polis. 60 secondes. Le spinner tourne toujours. Tu transpires. Le col roulé noir absorbe la sueur avec une efficacité remarquable. 90 secondes. Tu improvises : « Pendant que ça charge, laissez-moi vous parler de notre vision... » Tu récites le pitch. Deux minutes. Le site charge enfin.

Tu cliques sur « Dashboard ». Erreur 503 — Service Unavailable. Sébastien, dans le public, vérifie son téléphone. Il t'envoie un Slack : « Le pod Kubernetes a crashé. J'essaie de restart. Ne touche à rien. » Tu touches à quelque chose. Tu rafraîchis la page. Erreur 404. Tu as cassé le routing. Sébastien t'envoie un deuxième Slack, tout en majuscules : « J'AI DIT NE TOUCHE À RIEN. »
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu passes en mode survie. Tu ouvres les slides de backup — celles que Sébastien avait insisté pour préparer. Elles fonctionnent. Tu montres des screenshots du produit en disant « voici ce que vous auriez vu en live ». Le public est poli mais tu sens que l'énergie a quitté la salle comme l'air d'un ballon de baudruche.

Après le pitch, un investisseur vient te voir. Tu espères une question sur le produit. Il demande : « C'est quoi la marque du col roulé ? Ma femme cherche le même pour mon fils. » Un autre te tapote l'épaule : « Ça arrive à tout le monde, les démos qui plantent. » Puis il ajoute : « Mais en général, c'est pour les startups qui ont un produit derrière. Le vôtre avait l'air... tôt. » Tu traduis mentalement « tôt » par « inexistant » et tu sors fumer une cigarette sur le trottoir, toi qui ne fumes pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le lendemain, tu reçois les retours du demo day. Sur 30 investisseurs présents : 0 demande de follow-up. Zéro. Le record de la cohorte. La startup qui est passée juste après toi — une appli de gestion de poules pondeuses pour les éleveurs bio — a reçu 7 demandes de meeting. Des poules. Elles ont battu ton IA.

Tu te consoles en te disant que « les grands entrepreneurs ont tous connu des échecs publics ». Tu écris un post LinkedIn intitulé « Ce que mon demo day raté m'a appris sur la résilience ». 2 100 likes. Commentaire le plus liké : « J'étais dans la salle. Le pire c'était pas le crash technique, c'était le moment où tu as dit 'même l'IA a besoin d'un café' et que personne n'a ri la deuxième fois. » Tu supprimes le commentaire. Puis tu le restaures parce que « la transparence est une valeur NexaFlow ». Puis tu le resupprimes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Une semaine après le demo day. Margaux, la stagiaire, te montre quelque chose. « J'ai fait une vidéo de la démo qui marche. Pas en live — pré-enregistrée, montée proprement, avec des vrais use cases. » La vidéo dure 3 minutes. Elle est claire, concise, et montre le produit sous son meilleur angle. Tu la publies sur le site. Un des 30 investisseurs du demo day tombe dessus par hasard. Il t'envoie un mail : « C'est ça votre produit ? C'est mieux que ce que j'ai vu sur scène. On peut se voir ? »

Tu décroches un meeting. Puis un deuxième. Margaux assiste aux deux et répond aux questions techniques avec une aisance que tu lui envies. L'investisseur dit : « J'aime bien votre stagiaire. Elle est la seule à savoir de quoi elle parle. » Tu souris. Le sourire cache le fait que tu réalises que ta stagiaire à 600 € est meilleure que toi en pitch. Tu la proposes pour les prochaines démos. Elle accepte. Le monde n'est pas prêt pour le jour où Margaux découvrira combien elle vaut vraiment.
EOF
)"

# ============================================================================
# === BRANCH: hotfix/cto-demission ===
# === Diverge quand le CTO voit la vérité derrière les métriques vanity ===
# ============================================================================

git checkout -b hotfix/cto-demission $DIVERGE_CTO_DEMISSION

git commit --allow-empty -m "$(cat <<'EOF'
Le mail arrive à 7h du matin. Objet : « Démission — Sébastien Morel ». Pas de formules. Pas de « chère équipe ». Juste : « Je quitte NexaFlow. Mon préavis de 3 mois commence aujourd'hui. Je reste professionnel mais je ne participerai plus aux réunions stratégiques. Merci pour l'aventure. — Sébastien. » Tu relis le mail quatre fois. Tu l'appelles. Messagerie. Tu lui envoies un Slack. Vu, pas de réponse.

Sébastien arrive au bureau à 9h30, casque sur les oreilles, s'assoit, et commence à coder. Il code en silence pendant 3 jours. Quand tu essaies de lui parler, il enlève un écouteur : « Je fais mon préavis. Je code ce qui est dans le sprint. On n'a rien à se dire au-delà de ça. » C'est la conversation la plus professionnelle et la plus douloureuse de ta carrière.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Semaine 2 sans CTO fonctionnel. Tu découvres que Sébastien était le seul à connaître l'architecture technique. Le seul à avoir accès aux credentials AWS (il les a partagés, mais personne ne les a jamais utilisés). Le seul à comprendre pourquoi le déploiement se fait via un script bash de 400 lignes qu'il a écrit à 3h du matin.

Tu essaies de recruter un nouveau CTO en urgence. Le premier candidat regarde le code pendant 2 heures et refuse le poste : « C'est... intéressant architecturalement. Mais je préfère passer. » Le deuxième demande 140K + 8% d'equity. Tu n'as ni l'un ni l'autre. Le troisième est un freelance à 800 €/jour qui commence par demander : « Il y a de la documentation ? » Tu ris. Puis tu te rends compte que c'était une vraie question.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le jour du départ de Sébastien. Il fait sa passation en 45 minutes. 45 minutes pour transférer 10 mois de connaissance technique. Il parle vite, montre des schémas sur un tableau blanc, et dit des choses comme « ce service-là, il ne faut JAMAIS le redémarrer le vendredi » et « si cette base de données dépasse 10 Go, il faut purger manuellement la table legacy_cache sinon tout crash ». Tu notes frénétiquement sur ton carnet Moleskine de l'offsite (première utilisation).

Il part à 18h. Il serre des mains. Pas d'accolade. Pas de discours. Pas de post LinkedIn. Il récupère sa tasse à café (une tasse « I don't fix bugs, I create features ») et sort. Le bureau est silencieux. Le serveur crash à 18h47. Personne ne sait le relancer. Tu appelles Sébastien. Messagerie. Tu lui envoies un SMS : « Le serveur est down. » Il répond à 22h : « La commande est dans le wiki. Page 3, section 2. » Il n'y a pas de wiki.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Sans CTO, NexaFlow dérive. Le freelance à 800 €/jour passe deux semaines à « comprendre la codebase » (il n'y arrive pas). Un bug critique en production reste non résolu pendant 9 jours — le chatbot IA répond en espagnol à tous les utilisateurs français. Personne ne s'en plaint parce que personne n'utilise le chatbot.

Tu postes une annonce urgente pour un CTO. Titre : « CTO / Cofondateur technique — Opportunité exceptionnelle de rejoindre une startup IA en forte croissance. » « Forte croissance » = zéro croissance. « Opportunité exceptionnelle » = on n'a plus de CTO et le serveur crash tous les jours. Tu reçois 12 candidatures. 8 sont des juniors qui veulent le titre de CTO. 3 sont trop chers. Le dernier est un ancien collègue de Sébastien qui t'appelle pour te dire : « Sébastien m'a prévenu. Bon courage. » Et il raccroche.
EOF
)"

# ============================================================================
# === BRANCH: feature/board-drama ===
# === Diverge quand le CEO est pris en étau entre le board et sa fierté ===
# ============================================================================

git checkout -b feature/board-drama $DIVERGE_BOARD

git commit --allow-empty -m "$(cat <<'EOF'
Le board meeting trimestriel. Autour de la table : toi, Gérard (business angel, 60 ans, ancien DG d'une PME industrielle, a mis 50K €), Stéphanie (associée chez le fonds VC qui a mis 200K en seed extension, 38 ans, ex-Goldman Sachs, porte toujours du Céline), et Michel (représentant BPI, 55 ans, a vu passer 400 dossiers et en a vu crasher 380).

Tu présentes tes slides. Slide 1 : la vision. Slide 2 : la vision reformulée. Slide 3 : encore la vision. Slide 4 : un graphique de « potential addressable market » qui montre un chiffre de 40 milliards. Stéphanie t'interrompt à la slide 5 : « C'est super la vision. Le MRR, il est où ? » Tu passes à la slide 18. Le MRR est un graphique qui monte de 0 à 340 €. L'axe Y va jusqu'à 1 million pour que la barre ait l'air microscopique plutôt qu'inexistante.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Stéphanie sort le tableur qu'elle a préparé. « À votre rythme de dépenses actuel, vous avez 5 mois de runway. Votre MRR est de 340 €. Votre coût d'acquisition est de 2 800 € par client payant. Vous en avez 3. Ça veut dire que chaque euro de revenu vous coûte 24 euros à générer. C'est le pire ratio que j'ai vu depuis 2019, et en 2019 il y avait WeWork. »

Gérard enchaîne : « Moi ce que je comprends pas, c'est pourquoi vous avez un bureau à Station F à 6 800 par mois avec 6 personnes. Moi quand j'ai monté ma boîte, j'étais dans mon garage. » Tu expliques que l'adresse est importante pour la crédibilité. Michel, le gars de la BPI, prend des notes sans rien dire. C'est pire que s'il parlait.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le board exige un plan de réduction des coûts sous 2 semaines. Stéphanie propose de « couper 40% des dépenses non essentielles ». Gérard propose de « virer le gars de LinkedIn qui sert à rien » (Hugo). Michel demande un rapport détaillé de l'utilisation des fonds BPI. Tu sens l'étau se resserrer.

Tu essaies de négocier : « Donnez-moi 6 mois. Si le MRR n'atteint pas 10K, je pivot ou je ferme. » Stéphanie : « Vous avez 5 mois de cash. Vous demandez 6 mois. Faites le calcul. » Gérard : « Moi, mes 50K, je veux les revoir. » Michel : « La BPI suivra les recommandations du board. » Tu sors de la réunion avec la sensation d'avoir été essoré par une machine à laver professionnelle. Le programme : cycle intensif, sans adoucissant.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les semaines suivantes sont une guerre froide entre toi et le board. Stéphanie t'envoie un mail par semaine avec un tableau de suivi des dépenses et une colonne « commentaires » remplie de remarques passives-agressives. « Abonnement Notion Team — 960 €/an — est-ce nécessaire pour 6 personnes ? » « Séminaire château Loire — 45 000 € — ROI ? » « Machine à café La Marzocca — amortissement sur combien d'années ? »

Tu te plains à Hugo : « Ils ne comprennent pas la vision. Les investisseurs veulent de la rentabilité, mais la rentabilité c'est la mort de l'innovation. » Hugo hoche la tête avec la conviction d'un homme qui sait que son poste est le premier sur la liste des coupes. Gérard t'appelle un dimanche : « Petit, tu me rappelles mon neveu. Beaucoup de grandes idées, aucun sens des réalités. Soit tu apprends, soit tu coules. » Tu raccroches. Tu ouvres LinkedIn. Tu ne publies rien. C'est un début.
EOF
)"

# ============================================================================
# === BRANCH: fix/retour-realite ===
# === Diverge quand le CEO est seul face au vide et doit choisir : continuer ou changer ===
# ============================================================================

git checkout -b fix/retour-realite $DIVERGE_RETOUR_REALITE

git commit --allow-empty -m "$(cat <<'EOF'
C'est Sébastien qui dit le truc. Pas au bureau — dans un bar, un jeudi soir, après deux pintes. « Tu sais ce qui ne va pas chez toi ? Tu veux être un grand CEO plus que tu veux construire un bon produit. Tu veux la keynote avant la feature. La couverture presse avant le client. Le TEDx avant le MRR. Tu fais du startup cosplay. »

Tu ouvres la bouche pour répondre. Tu la refermes. Tu ouvres une troisième pinte à la place. Le silence dure 4 minutes. C'est le plus long silence que tu aies supporté depuis que tu as fondé NexaFlow. D'habitude, tu remplis chaque silence avec un pitch, un framework, une citation de Peter Thiel. Là, tu ne dis rien. Et dans ce silence, quelque chose se fissure.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu prends rendez-vous avec un psy. Pas un coach, pas un mentor, pas un « sparring partner d'entrepreneur ». Un vrai psychologue, avec un diplôme et un divan. Son bureau est à Bastille, au 3ème étage sans ascenseur. Il s'appelle Dr. Marchetti. Il n'a jamais entendu parler de NexaFlow, de la BPI, ou du product-market fit. C'est exactement ce dont tu as besoin.

Première séance. Il te demande pourquoi tu es là. Tu commences à pitcher NexaFlow. Il t'arrête : « Je ne vous demande pas ce que fait votre entreprise. Je vous demande pourquoi vous êtes là, vous, dans ce fauteuil. » Tu te tais. Puis tu dis : « Parce que je crois que je fais semblant depuis 10 mois. » C'est la deuxième chose honnête que tu dis en 10 mois (la première étant le mail de dissolution que tu n'as pas encore envoyé).
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les séances avec Marchetti produisent des effets secondaires inattendus. Tu arrêtes de poster sur LinkedIn. Tu annules la keynote mensuelle. Tu supprimes le channel #motivation-daily. Tu convoques un vrai one-on-one avec Sébastien — pas un pitch, pas un brainstorm, un vrai dialogue. « Qu'est-ce qui ne marche pas ? Dis-moi tout. Pas la version polie. La vraie. »

Sébastien parle pendant 90 minutes. Le produit est over-engineered pour un marché qui n'existe pas. Les pivots ont détruit la confiance technique. Les OKR sont une fiction. La culture est une vitrine. Les utilisateurs sont des fantômes. Tu écoutes. Tu ne l'interromps pas. Tu ne proposes pas de solution. Tu ne dis pas « oui mais ». Tu écoutes. C'est la première réunion utile de l'histoire de NexaFlow.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 12. Tu fais quelque chose de radical : tu parles à des utilisateurs. Pas des « user interviews » avec un script Notion et un enregistrement Loom. Tu descends dans la rue — littéralement — avec un laptop et tu montres le produit à des gens. Des vrais gens. Des gens qui n'ont jamais entendu parler de NexaFlow et qui n'ont aucune raison d'être polis.

Le feedback est brutal et libérateur. « C'est quoi ce truc ? » « Pourquoi j'ai besoin de ça ? » « C'est comme Slack mais en pire ? » « Le chatbot m'a parlé en espagnol. » Et puis, une comptable de 45 ans du 11ème : « Attendez... si ça pouvait faire [chose très spécifique et très simple], là, oui, je paierais. » Tu notes. Tu rentres au bureau. Tu dis à Sébastien : « On construit ça. Juste ça. Rien d'autre. » Sébastien sourit pour la première fois depuis 4 mois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 14. NexaFlow a pivoté une dernière fois. Mais cette fois, c'est un vrai pivot — basé sur un vrai besoin, validé par de vrais utilisateurs, construit par un vrai développeur. Le produit fait une seule chose, et il la fait bien. C'est un petit outil de facturation IA pour les indépendants. Ce n'est pas « disruptif ». Ce n'est pas « game-changing ». C'est utile.

Tu as 140 utilisateurs payants à 9 €/mois. MRR : 1 260 €. C'est ridicule comparé aux 40 milliards de TAM que tu brandissais en board meeting. Mais c'est de l'argent réel gagné en échange d'une valeur réelle. Tu déménages de Station F dans un bureau partagé à Montreuil à 800 €/mois. Tu vends la Marzocca (1 200 € sur Leboncoin). Tu gardes le néon. Enfin, tu l'éteins. Mais tu le gardes. Pour te rappeler.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 18. Le MRR est à 4 800 €. 530 utilisateurs payants. Pas de levée de fonds. Pas d'article dans Maddyness. Pas de keynote. Pas de TEDx. Juste un produit, des clients, et un P&L qui tend vers l'équilibre. Tu recrutes une développeuse — Marie, 28 ans, pragmatique, qui pose des questions du genre « Combien de clients ont demandé cette feature ? » au lieu de « Est-ce que c'est disruptif ? ». C'est reposant.

Sébastien t'envoie un message LinkedIn. « J'ai vu que NexaFlow existe encore. Et qu'il y a des vrais avis clients sur le site. Bravo. C'est la première chose cohérente que tu fais depuis 18 mois. » Tu ris. Puis tu réalises que c'est le plus beau compliment que tu aies jamais reçu. Le Dr. Marchetti te dira en séance que « le jour où tu as préféré un compliment honnête à 10 000 likes LinkedIn, c'est le jour où tu as grandi ». Il n'a pas tort.
EOF
)"

# ============================================================================
# === BRANCH: fix/pivot-consulting ===
# === Diverge quand le CEO doit choisir comment survivre avec 127K en banque ===
# ============================================================================

git checkout -b fix/pivot-consulting $DIVERGE_PIVOT_CONSULTING

git commit --allow-empty -m "$(cat <<'EOF'
L'idée te vient un mercredi à 3h du matin. La startup ne marche pas. Le produit n'a pas de marché. Mais toi, tu as quelque chose : 14 mois d'erreurs parfaitement documentées, un réseau LinkedIn de 18 000 followers, un passage TEDx, et la capacité de parler pendant 2 heures de sujets que tu ne maîtrises pas. Tu es le candidat idéal pour devenir... consultant en transformation digitale.

Tu crées « NexaFlow Consulting ». Le site web est prêt en 48 heures (c'est le même que l'ancien, avec « Consulting » ajouté et les screenshots du produit remplacés par des photos de toi en train de parler devant un tableau blanc). Ta tagline : « De la vision à l'exécution — Accompagnez votre transformation avec un entrepreneur qui a vécu le terrain. » Le terrain en question étant un champ de mines, mais ça, tu ne le précises pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Premier client. Un grand groupe industriel du CAC40 te paye 1 200 €/jour pour « accompagner la transformation digitale de la direction innovation ». Ta mission : animer des workshops, produire des livrables, et « insuffler la culture startup ». Tu arrives dans leurs bureaux de La Défense en col roulé noir et baskets blanches. Ils sont 40 en costume-cravate. Tu commences par : « Qui ici a déjà utilisé ChatGPT ? » Trois mains se lèvent.

Tu animes un workshop de « Design Thinking » avec des post-its, un timer, et une playlist Spotify « Focus Flow ». Les directeurs de 55 ans dessinent des parcours utilisateurs pour la première fois de leur vie. L'un d'eux te prend à part à la pause café : « C'est très bien votre truc, mais concrètement, on lance quoi lundi ? » Tu n'as aucune idée. Tu réponds : « C'est exactement la bonne question. On va itérer dessus. » Il ne sait pas ce que « itérer » veut dire. C'est parfait.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le consulting marche. Pas parce que tu es bon — tu es moyen — mais parce que les grands groupes ont un budget « innovation » qu'ils doivent dépenser sous peine de le perdre l'année suivante, et un consultant ex-startup à 1 200 €/jour c'est moins cher qu'un McKinsey à 3 500 €. Tu deviens le McKinsey du pauvre. Tu factures 18 000 € par mois. C'est plus que le MRR cumulé de NexaFlow sur toute son existence.

Tu fais 3 clients en parallèle. Tu recycles les mêmes slides. Le framework « NexaFlow Innovation Canvas » — un template que tu as créé en 20 minutes sur Miro — est présenté à 3 entreprises du CAC40 comme une « méthodologie propriétaire issue de 18 mois de R&D terrain ». Les 18 mois de R&D terrain étant : brûler 800K € d'argent public et faire fuir 3 employés. Mais le canvas est joli, et dans le consulting, c'est ce qui compte.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un an plus tard. NexaFlow Consulting facture 280 000 € par an. Tu as recruté 2 consultants juniors à 38K. Tu fais des keynotes « Comment échouer pour mieux réussir » à 5 000 € la prestation. Tu as écrit un livre blanc de 40 pages intitulé « Le Guide de la Transformation Digitale par un Entrepreneur du Terrain » qui est en réalité un condensé de tes erreurs reformulées en « bonnes pratiques ».

Tu croises Sébastien à un meetup tech. Il est CTO chez une scale-up qui fait du SaaS B2B avec 2 millions de MRR. Il te demande ce que tu fais. Tu lui montres ton site de consulting. Il regarde. Il sourit. « Tu factures des boîtes du CAC40 pour leur apprendre à faire ce que tu n'as jamais réussi à faire toi-même ? » Pause. « C'est du génie. » Tu ne sais pas si c'est un compliment. Tu choisis de croire que oui.
EOF
)"

# ============================================================================
# === BRANCH: fix/revente-acquihire ===
# === Diverge quand le CEO cherche une porte de sortie avec 127K en banque ===
# ============================================================================

git checkout -b fix/revente-acquihire $DIVERGE_REVENTE

git commit --allow-empty -m "$(cat <<'EOF'
Le mail arrive de nulle part. Objet : « Opportunité — Discussion confidentielle ». L'expéditeur : DirectFlow, une boîte de 200 personnes spécialisée dans le CRM B2B qui vient de lever 30 millions en Série B. Leur VP Product veut « prendre un café ». Tu acceptes en 4 minutes. C'est le mail le plus excitant depuis celui de la BPI il y a 13 mois — et cette fois, tu as l'impression que quelqu'un veut te sauver plutôt que te financer.

Le café dure 2 heures. Le VP Product, Clémence, 35 ans, ex-Datadog, est directe : « Votre produit ne nous intéresse pas. Votre techno non plus. Ce qui nous intéresse, c'est vous et votre CTO. Enfin... votre ex-CTO. Sébastien Morel est encore sous engagement ? » Tu réalises que l'acqui-hire, ce n'est pas pour toi. C'est pour Sébastien. Et toi, tu es le bonus pack.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La négociation dure 3 semaines. L'offre de DirectFlow : rachat de NexaFlow pour 1 € symbolique, reprise du bail Station F (cadeau empoisonné qu'ils acceptent), embauche de toi comme « Head of Innovation » à 78K brut, et embauche de Sébastien comme « Staff Engineer » à 110K brut. Sébastien, qui a démissionné le mois dernier, est contacté séparément. Il accepte en 24 heures. Son salaire chez DirectFlow est 15K de plus que son salaire chez NexaFlow. L'ironie est palpable.

Ton avocat te conseille de négocier. Tu demandes 100K. Ils disent 78K. Tu demandes 85K. Ils disent 78K. Tu demandes le titre de « VP Innovation ». Ils disent « Head of Innovation ». Tu acceptes les 78K avec le titre de Head parce que, honnêtement, c'est 78K de plus que ce que NexaFlow allait te payer dans 2 mois.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jour 1 chez DirectFlow. Tu arrives dans leurs bureaux de la rue du Faubourg Saint-Honoré. Open space lumineux. 200 personnes. Un vrai produit avec de vrais clients qui paient de vraies factures. La machine à café est une Nespresso basique. Pas de néon. Pas de baby-foot. Pas de slogan sur les murs. Juste des gens qui travaillent.

On te donne un badge, un laptop, et un onboarding de 3 jours. Tu découvres un Notion structuré avec de la vraie documentation. Des OKR que les gens comprennent. Des sprints qui produisent des features. Des clients qu'on appelle des « clients » et pas des « early adopters ». Tu assistes à ton premier standup DirectFlow. Il dure 12 minutes. 12 vraies minutes. Tu as envie de pleurer de joie et de honte simultanément.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 6 chez DirectFlow. Tu es étonnamment utile. Toutes les erreurs que tu as faites — les pivots absurdes, les OKR incompréhensibles, le marketing vanity, la culture toxique — t'ont donné un sixième sens pour les détecter chez les autres. Quand le CEO de DirectFlow propose un pivot vers le métaverse pendant un all-hands, tu lèves la main : « J'ai essayé. Voici exactement comment ça va se passer. » Tu déroules le scénario. Le CEO retire sa proposition. Tu viens de sauver 200K € et 6 mois de temps perdu.

Tu croises Sébastien à la machine à café. Il code tranquillement, casque sur les oreilles. Il t'adresse un hochement de tête. « Ça va ? » « Ça va. » C'est votre conversation la plus longue depuis 2 mois. Mais c'est une bonne conversation. Tu bois ton Nespresso — pas aussi bon que la Marzocca, mais il coûte 0 € et personne ne l'a jamais mis dans un deck investisseur. C'est un progrès.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 12 chez DirectFlow. Évaluation annuelle. Ta manager — oui, tu as une manager maintenant, ça s'appelle Clémence et elle est VP Product — te donne un 3.5/5. « Bon travail, axes d'amélioration sur la communication et la tendance à vouloir tout changer en même temps. » Tu reçois ton évaluation comme une gifle douce. 3.5/5. Toi, le CEO visionnaire, le TEDx speaker, le thought leader. 3.5 sur 5.

Puis tu réalises : c'est la première fois en 2 ans que quelqu'un te donne un feedback honnête, structuré, et utile. Pas un investisseur qui te dit ce que tu veux entendre. Pas un employé qui a peur de toi. Pas un journaliste qui veut un angle. Juste une manager compétente qui te dit : « Tu es bon, mais tu peux être meilleur. Voici comment. » Tu prends des notes. Tu ne crées pas de Notion. Tu ne fais pas de keynote. Tu prends juste des notes, sur un bout de papier, comme un être humain normal. Et c'est le début de quelque chose.
EOF
)"

# ============================================================================
# Return to main
# ============================================================================
git checkout main

echo ""
echo "=== Génération terminée ==="
echo ""
echo "Branches créées :"
git branch -a
echo ""
echo "Nombre total de commits :"
git rev-list --all --count
echo ""
echo "Commits sur main :"
git rev-list main --count
echo ""
echo "Détail par branche :"
for branch in $(git branch --format='%(refname:short)'); do
    count=$(git rev-list "$branch" --count)
    own=$(git log "$branch" --oneline --not --remotes --not $(git branch --format='%(refname:short)' | grep -v "$branch" | head -1) 2>/dev/null | wc -l)
    echo "  $branch: $count commits total"
done
