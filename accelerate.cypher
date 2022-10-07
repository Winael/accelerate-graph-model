// load accelerate
// This is an initialisation script for the accelerate graph
// Run it only once. ;)
// Have you run it twice? Use `MATCH (n) WHERE (n:Construct OR n:Capability OR n:Role) DETACH DELETE n` to start over.

CREATE 
    // We Create the Role
    // ------------------
    (
        architect:Role {
            title: "Architecte"
        }
    ),(
        coach_agile:Role {
            name: "coach_agile",
            title: "Coach Agile"
        }
    ),(
        developer:Role {
            name: "developer",
            title: "Développeur"
        }
    ),(
        manager:Role {
            name: "manager",
            title: "Manager"
        }
    ),(
        ops:Role {
            name: "ops",
            title: "Ops"
        }
    ),(
        product_owner:Role {
            name: "product_owner",
            title: "Product Owner"
        }
    ),(
        qa:Role {
            name: "qa",
            title: "QA"
        }
    ),(
        secops:Role {
            name: "secops",
            title: "SecOps"
        }
    ),(
        scrum_master:Role {
            name: "scrum_master",
            title: "Scrum Master"
        }
    ),(
        ux_ui:Role {
            name: "ux_ui",
            title: "UX/UI"
        }
    ),
    // We create the reports
    // ---------------------
    (
        state_of_devops_2015:Report {
            name: "state_of_devops_2015",
            title: "State of DevOps 2015",
            url: "https://services.google.com/fh/files/misc/state-of-devops-2015.pdf"
        }
    ),(
        state_of_devops_2016:Report {
            name: "state_of_devops_2016",
            title: "State of DevOps 2016",
            url: "https://services.google.com/fh/files/misc/state-of-devops-2016.pdf"
        }
    ),(
        state_of_devops_2017:Report {
            name: "state_of_devops_2017",
            title: "State of DevOps 2017",
            url: "https://services.google.com/fh/files/misc/state-of-devops-2017.pdf"
        }
    ),(
        state_of_devops_2018:Report {
            name: "state_of_devops_2018",
            title: "State of DevOps 2018",
            url: "https://services.google.com/fh/files/misc/state-of-devops-2018.pdf"
        }
    ),(
        state_of_devops_2019:Report {
            name: "state_of_devops_2019",
            title: "State of DevOps 2019",
            url: "https://services.google.com/fh/files/misc/state-of-devops-2019.pdf"
        }
    ),          
    // We create the contructs
    // -----------------------
    (
        transformational_leadership:Construct:Cultural {
            name: "transformational_leadership",
            title: "Leadership transformationnel", 
            description: "Les leaders transformationnels inspirent et motivent leurs collaborateurs en faisant appel à leurs valeurs et à leur sens du devoir, facilitant ainsi un changement organisationnel à grande échelle. Ces leaders encouragent leurs équipes à travailler en vue d'atteindre un objectif commun par le au travers de leur vision, de leurs valeurs, de la communication et de l'exemple qu'ils donnent, et en se souciant des besoins de leurs collaborateurs.\n\nLa mesure du leadership transformationnel comprend cinq dimensions :\n\n- La vision. Un concept clair de la direction que prend l'organisation et de ce qu'elle deviendra dans cinq ans.\n\n- La communication inspirante. Communiquer d'une manière qui inspire et motive, même dans un environnement incertain ou changeant.\n\n- La stimulation intellectuelle. Inciter ses collaborateurs à aborder les problèmes sous un angle nouveau.\n\n- Le soutien du Management. Faire preuve d'attention et de considération pour les besoins et les sentiments des collaborateurs.\n\n- La reconnaissance personnelle. Louer et reconnaître la réalisation des objectifs et l'amélioration de la qualité du travail ; féliciter personnellement les autres lorsqu'ils font un travail remarquable.\n\n Les bons leaders forment de bonnes équipes, de bonnes technologies et de bonnes organisations. Ils permettent aux équipes de ré-architecturer leurs systèmes et leurs processus afin de mettre en œuvre les pratiques techniques de livraison continue et de gestion Lean de produits. Le leadership transformationnel permet de mettre en œuvre les pratiques qui sont en corrélation avec les hautes performances, et aide les membres de l'équipe à communiquer et à collaborer en vue d'atteindre les objectifs de l'organisation. Un tel leadership jette les bases d'une culture dans laquelle l'expérimentation et l'apprentissage continus font partie du travail quotidien de chacun.\n\nPour plus de détails, lisez le guide complet sur le leadership transformationnel, qui aborde également la manière de le mettre en œuvre et de surmonter les obstacles courants. Le rapport 2017 de State of DevOps examine également en profondeur le leadership transformationnel.", 
            guide: "https://cloud.google.com/architecture/devops/devops-culture-transformational-leadership", 
            key_capability: "Culture d'entreprise"
        }
    ),(
        technical_practices:Construct:Technical {
            name: "technical_practices",
            title: "Pratiques Techniques",
            description: "Les recherches montrent que les pratiques et capacités techniques suivantes favorisent la livraison continue. La livraison continue permet à son tour d'améliorer les performances en matière de livraison de logiciels, de renforcer la culture organisationnelle, de réduire les retouches, les difficultés de déploiement et l'épuisement professionnel.",
            guide: "https://cloud.google.com/architecture/devops/technical",
            key_capability: "Pratiques Techniques"
        }
    ),(
        lean_product_development:Construct:Product_And_Process {
            name: "lean_product_development",
            title: "Développement Lean de produit",
            description: "Les approches Lean et agiles du développement de produits sont devenues de plus en plus populaires au cours de la dernière décennie. L’approche Accelerate se concentre sur quatre capacités :\n\n- Le travail en petits lots. La façon dont les équipes divisent les produits et les fonctionnalités en petits lots qui peuvent être achevés en moins d'une semaine et publiés fréquemment, y compris l'utilisation de MVPs (minimum viable products).\n\n- La visibilité du travail dans la chaîne de valeur. Les équipes comprennent-elles le flux de travail allant de l'entreprise vers les clients, et ont-elles une visibilité sur ce flux, y compris sur l'état des produits et des fonctionnalités ?\n\n- Le retour d'information provenant des clients. Les organisations recherchent-elles activement et régulièrement les commentaires des clients et les intègrent-elles dans la conception de leurs produits ?\n\n- L'expérimentation en équipe. Les équipes de développement ont-elles le pouvoir de créer et de modifier les spécifications dans le cadre du processus de développement sans avoir à obtenir d'approbation ?\n\nSelon les résultats des analyses effectuées dans le cadre de l’étude State of DevOps, ces facteurs étaient statistiquement significatifs pour prédire une meilleure performance en matière de livraison de logiciels et de performance organisationnelle, de même que pour améliorer la culture organisationnelle et réduire l'épuisement professionnel. Il a également été constaté que la performance en matière de livraison de logiciels prédit les pratiques de gestion Lean des produits, une relation connue sous le nom de cycle vertueux. Une livraison de logiciels plus efficace améliore la capacité à travailler en petits lots et à intégrer les commentaires des clients.",
            key_capability: "Produit et Process"
        }
    ),(
        change_approvals:Construct:Product_And_Process {
            name: "change_approvals",
            title: "Approbation sur les changements",
            description: "La plupart des organisations informatiques disposent de processus de gestion des changements pour gérer le cycle de vie des modifications apportées aux services informatiques, qu'ils soient internes ou destinés aux clients. Ces processus constituent souvent les principaux contrôles permettant de réduire les risques opérationnels et de sécurité liés aux changements. Les processus de gestion des changements incluent souvent des approbations par des réviseurs externes ou des comités d'approbation des changements (CAB) pour promouvoir les changements dans le système.\n\nLes recherches montrent que les processus formels de gestion des changements qui requièrent l'approbation d'un organisme externe tel qu'un comité consultatif des changements (CAB) ou un cadre supérieur ont un impact négatif sur les performances de livraison des logiciels. En outre, il n’a été constaté aucune preuve pour soutenir l'hypothèse selon laquelle un processus d'approbation plus formel est associé à des taux d'échec de changement plus faibles. Cependant, les données étayent l'hypothèse selon laquelle l'introduction d'un plus grand nombre d'approbations entraîne un processus plus lent et la publication moins fréquente de lots importants, entraînant un impact plus important sur le système de production qui est probablement associé à des niveaux de risque plus élevés et donc à des taux d'échec plus élevés.\n\nIl est recommandé aux organisations de s'éloigner des processus d'approbation externe des changements en raison de leurs effets négatifs sur les performances. Au lieu de cela, les organisations devraient se « déplacer vers la gauche » et adopter une approbation basée sur le contrôle par les pairs pendant le processus de développement. Outre la mise en œuvre de ce type d'examen, les entreprises peuvent tirer parti des pratiques techniques qui sous-tendent la livraison continue pour détecter, prévenir et corriger les mauvaises modifications beaucoup plus tôt dans le cycle de livraison. Ainsi, les développeurs peuvent corriger les erreurs plus rapidement que s'ils attendaient une révision formelle.\n\nL'objectif consiste à s'éloigner du processus traditionnel et formel de gestion des changements. En communiquant mieux sur le processus existant et en aidant les équipes à s'y retrouver, on améliore également les performances de livraison des logiciels. Lorsque les membres de l'équipe comprennent le processus d'approbation des changements, cela favorise les performances et contribue à réduire les niveaux d'épuisement professionnel et à accroître la sécurité psychologique. Pour atteindre ces objectifs, les membres de l'équipe doivent être convaincus qu'ils peuvent faire approuver les changements en temps voulu. Ils doivent connaître les étapes pour passer de \"soumis\" à \"accepté\" à chaque fois.\n\nPour plus de détails, lisez le guide complet sur la rationalisation de l'approbation des changements, qui explique également comment le mettre en œuvre et comment surmonter les obstacles courants. Le rapport 2019 de l’état de DevOps examine également en profondeur la gestion des changements.",
            guide: "https://cloud.google.com/architecture/devops/devops-process-streamlining-change-approval",
            key_capability: "Produit et Process"
        }
    ),(
        lean_management:Construct:LeanManagement_And_Monitoring {
            name: "lean_management",
            title: "Gestion Lean",
            description: "L'application des principes de production Lean a révolutionné la fabrication au cours du siècle dernier. Les organisations qui ont réduit la taille des lots, diminué les travaux en cours et raccourci et amplifié les boucles de rétroaction ont obtenu des augmentations spectaculaires de la productivité des usines, de la qualité des produits et de la satisfaction des clients, ainsi que des résultats positifs sur le marché. Lorsque vous appliquez ces mêmes principes de rationalisation à la technologie, le paradigme émergent est DevOps. Trois pratiques courantes ont été étudiées :\n\nLa limitation du travail en cours. La capacité des équipes à limiter les travaux en cours (WIP) et à utiliser ces limites pour améliorer les processus, ce qui augmente le débit.\n\nLa gestion visuelle. La mesure dans laquelle les équipes créent et maintiennent des affichages visuels qui montrent les principales mesures de qualité et de productivité et l'état actuel du travail (y compris les défauts), et comment elles adaptent ces mesures à leurs objectifs opérationnels.\n\nDes systèmes de surveillance pour éclairer les décisions opérationnelles. La mesure dans laquelle les équipes utilisent les données des outils de supervision des performances applicatives et celles de l'infrastructure pour prendre des décisions opérationnelles quotidiennes.\n\nLe recours aux limites d'encours et aux affichages visuels est bien connu dans la communauté Lean. Ces pratiques permettent d'exposer les obstacles à la fluidité et de s'assurer que les équipes ne sont pas surchargées. En soi, les limites d'encours ne permettent pas de prédire avec précision les performances de livraison. Cependant, si vous les combinez avec des affichages visuels et une boucle de rétroaction à partir d'outils de surveillance de la production, vous constatez un effet positif plus important sur les performances de livraison des logiciels.\n\nEnsemble, ces pratiques favorisent les performances en matière de livraison de logiciels, et elles ont également un impact sur la culture organisationnelle et sur les niveaux d'épuisement professionnel.",
            key_capability: "Gestion et suivi Lean"
        }
    ),(
        trust_voice_autonomy:Construct:Cultural {
            name: "trust_voice_autonomy",
            title: "Autonomie, Confiance et Voix au chapitre",
            description: "Ces trois capacités sont étroitement liées. Les recherches du rapport 2018 sur l’état de DevOps, qui contient plus de détails sur chacune de ces capacités, montrent que l'autonomie stimule la confiance, la participation et les performances opérationnelles et de livraison de logiciels. La confiance et la participation, à leur tour, entraînent une culture organisationnelle Westrum.",
            key_capability: "Culture d'entreprise"
        }
    ),(
        culture_and_work_environment:Construct:Outcome {
            name: "culture_and_work_environment",
            title: "Culture et Environnement de travail",
            description: "La culture et l'environnement de travail englobent plusieurs capacités et résultats :\n\n- Le climat d’apprentissage. Une organisation ayant un climat propice à l'apprentissage considère celui-ci comme un investissement nécessaire à la croissance, et non comme un mal nécessaire, entrepris uniquement en cas de besoin.\n\n- Une culture organisationnelle de type Westrum. Ce modèle de culture organisationnelle a été développé par le sociologue Ron Westrum. Il classe les organisations en trois catégories : pathologique, bureaucratique ou générative, en fonction des niveaux de coopération, de la façon dont les problèmes sont abordés, de la mesure dans laquelle l'organisation est cloisonnée et de la façon dont les gens réagissent à l'échec et à la nouveauté.\n\n- Une culture de la sécurité psychologique. Dans les équipes ayant une culture de sécurité psychologique, les membres de l'équipe se font confiance, sont capables de résoudre les conflits, prennent des risques calculés et modérés, s'expriment et sont plus créatifs.\n\n- La satisfaction au travail. Les gens se sentent soutenus par leur employeur, disposent des outils et des ressources nécessaires pour faire leur travail et sentent que leur jugement est apprécié.\n\n- L'identité. Les employés s'identifient à l'organisation pour laquelle ils travaillent. Ils disent que l'organisation offre un bon environnement de travail. Ils ont le sentiment que l'organisation se soucie d'eux. Et ils sont prêts à faire des efforts supplémentaires pour aider l'organisation à réussir.\n\nCes facteurs culturels et environnementaux ont un impact sur la livraison des logiciels et sur les performances de l'organisation. En retour, les équipes peuvent développer ces résultats en mettant en œuvre les capacités techniques, culturelles et de gestion abordées dans le modèle de recherche Accelerate. Ces capacités comprennent, entre autres, la livraison continue, le développement de produits Lean et les pratiques de gestion Lean."
        }
    ),(
        organizational_performance:Construct:Outcome {
            name: "organizational_performance",
            title: "Performance Organisationnellle",
            description: "La performance organisationnelle mesure la capacité d'une organisation à atteindre des objectifs commerciaux et non commerciaux. La recherche académique a validé cette notion et constaté qu'elle est fortement corrélée aux mesures du retour sur investissement (ROI), et robuste aux cycles économiques.\n\nLes objectifs commerciaux et non commerciaux combinés incluent :\n\n- La rentabilité\n- La productivité\n- Les parts de marché\n-Le nombre de clients\n- La quantité de produits ou de services\n- L'efficacité opérationnelle\n- La satisfaction des clients\n- La qualité des produits ou des services fournis\n- L'atteinte des objectifs de l'organisation ou de la mission\n\nPlusieurs années d'analyse ont montré que, par rapport aux entreprises les moins performantes, celles dont le niveau de performance en matière de livraison de logiciels est le plus élevé ont deux fois plus de chances de dépasser leurs objectifs. La performance organisationnelle est également déterminée par la culture et l'environnement de travail, ainsi que par les pratiques de développement de produits Lean."
        }
    ),(
        sdo_performance:Construct:Outcome {
            name: "sdo_performance",
            title: "Performance Livraison et Opération logicielle (SDO)",
            description: "Les organisations comptent de plus en plus sur leur capacité à produire et à exploiter des systèmes logiciels pour atteindre leurs objectifs. Pour comparer les performances sur cette mesure clé des résultats, le secteur a besoin d'un moyen de mesurer l'efficacité de ses pratiques de développement et de livraison. Au cours des six dernières années, le DORA a développé et validé quatre métriques qui fournissent une vue systémique de haut niveau de la livraison et de la performance des logiciels et qui prédisent la capacité d'une organisation à atteindre ses objectifs. En 2018, une métrique supplémentaire axée sur les capacités opérationnelles a été ajoutée et il a été constaté que cette mesure aide les organisations à obtenir des résultats supérieurs. Ces cinq mesures, appelées performances opérationnelles et de livraison de logiciels (SDO), sont axées sur les résultats au niveau du système. Cette approche aide à éviter les pièges courants des mesures logicielles, qui opposent souvent différentes fonctions les unes aux autres, ce qui entraîne des optimisations locales au détriment des résultats globaux.\n\nLes quatre premières mesures peuvent être résumées en termes de débit et de stabilité. Le débit du processus de livraison des logiciels est mesuré à l'aide du délai de modification du code entre son enregistrement et sa publication, ainsi que par la fréquence de déploiement. La stabilité est mesurée à l'aide du temps de restauration - le temps qu'il faut entre la détection d'un incident ayant un impact sur l'utilisateur et sa correction - et du taux d’échecs dûs aux modifications, qui est une mesure de la qualité du processus de publication. L'outil Quick Check permet à une organisation de s'évaluer et de se comparer à l'industrie.\n\nDe nombreux professionnels considèrent que ces mesures représentent un ensemble de compromis. Ils pensent que l'augmentation du débit aura un impact négatif sur la fiabilité du processus de livraison des logiciels et sur la disponibilité des services. Cependant, pendant six années consécutives, l'étude a montré que la vitesse et la stabilité sont des résultats qui se renforcent mutuellement. Les entreprises les plus performantes obtiennent des résultats nettement meilleurs pour les quatre mesures, et les moins performantes des résultats nettement moins bons.\n\nLa fiabilité est également importante pour mesurer la performance opérationnelle. Avant 2021, le terme \"disponibilité\" était utilisé pour décrire cette capacité. Depuis 2021, le terme \"fiabilité\" est utilisé pour refléter plus largement les objectifs opérationnels, notamment la latence, les performances et l'évolutivité.\n\nÀ un niveau élevé, la fiabilité représente la capacité des équipes et des organisations technologiques à tenir les promesses et les affirmations concernant le logiciel qu'elles exploitent. En particulier, la fiabilité consiste à garantir qu'un produit ou un service est disponible et accessible pour les utilisateurs finaux. La fiabilité reflète la capacité des équipes à définir leurs objectifs de fiabilité, à suivre leur fiabilité courante et à tirer des enseignements de toute panne, en s'assurant que leurs boucles de rétroaction soient complètes. Une meilleure livraison de logiciels va de pair avec une plus grande fiabilité. L'analyse montre que les mesures de fiabilité présentent une corrélation significative avec les profils de performance en matière de livraison de logiciels, et que les entreprises les plus performantes font systématiquement état d'une fiabilité supérieure.\n\nIl est possible d'améliorer la livraison de logiciels et les performances opérationnelles en mettant en œuvre les capacités suivantes :\n\n- La livraison continue\n-L'amélioration de la culture organisationnelle\n- L’autonomie des équipes\n- Une infrastructure en nuage\n- Des tests de reprise après sinistre\n- Pas d'externalisation fonctionnelle\n- Des processus de changement clairs et légers\n- Du développement de produits Lean\n- Des pratiques de gestion Lean"
        }
    ),
    // We create the capabilities
    // --------------------------
    (
        vision:Capability:Cultural {
            name: "vision",
            title: "Vision",
            description: "Un concept clair de la direction que prend l'organisation et de ce qu'elle deviendra dans cinq ans."
        }
    ),(
        inspirational_communication:Capability:Cultural {
            name: "inspirational_communication",
            title: "Communication Inspirante",
            description: "Communiquer d'une manière qui inspire et motive, même dans un environnement incertain ou changeant."
        }
    ),(
        intellectual_stimulation:Capability:Cultural {
            name: "intellectual_stimulation",
            title: "Stimulation Intellectuelle",
            description: "Communiquer d'une manière qui inspire et motive, même dans un environnement incertain ou changeant."
        }
    ),(
        supportive_leadership:Capability:Cultural {
            name: "supportive_leadership",
            title: "Soutien du Management",
            description: "Faire preuve d'attention et de considération pour les besoins et les sentiments des collaborateurs."
        }
    ),(
        personal_recognition:Capability:Cultural {
            name: "personal_recognition",
            title: "Reconnaissance personnelle",
            description: "Louer et reconnaître la réalisation des objectifs et l'amélioration de la qualité du travail ; féliciter personnellement les autres lorsqu'ils font un travail remarquable."
        }
    ),(
        test_automation:Capability:Technical {
            name: "test_automation",
            title: "Automatisation des tests",
            description: "L'utilisation de suites de tests automatisées complètes, principalement créées et maintenues par les développeurs. Les suites de tests efficaces sont fiables, c'est-à-dire que les tests détectent des défaillances réelles et ne transmettent que du code pouvant être publié.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-test-automation"
        }
    ),(
        deployment_automation:Capability:Technical {
            name: "deployment_automation",
            title: "Automatisation des déploiements",
            description: "Le degré avec lequel les déploiements sont entièrement automatisés et ne nécessitent pas d'intervention manuelle.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-deployment-automation"
        }
    ),(
        trunk_based_development:Capability:Technical {
            name: "trunk_based_development",
            title: "Développement basé sur le tronc",
            description: "Caractérisé par moins de trois branches actives dans un dépôt de code ; les branches et les fourches ont une durée de vie très courte (par exemple, moins d'un jour) avant d'être fusionnées dans la branche principale ; et les équipes chargées du développement des applications ont rarement ou jamais de périodes de 'gel du code' pendant lesquelles personne ne peut vérifier le code ou faire des demandes de tirage en raison de conflits de fusion, de gel du code ou de phases de stabilisation.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-trunk-based-development"
        }
    ),(
        shift_left_on_security:Capability:Technical {
            name: "shift_left_on_security",
            title: "La sécurité pensée en amont",
            description: "Intégrer la sécurité dans les phases de conception et de test du processus de développement logiciel. Ce processus comprend la réalisation de revues de sécurité des applications, l'inclusion de l'équipe infosec dans le processus de conception et de démonstration des applications, l'utilisation de bibliothèques et de paquets de sécurité pré-approuvés et le test des fonctions de sécurité dans le cadre de la suite de tests automatisés.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-shifting-left-on-security"
        }
    ),(
        loosely_coupled_architecture:Capability:Technical {
            name: "loosely_coupled_architecture",
            title: "Une architecture à faible couplage",
            description: "Une architecture qui permet aux équipes de tester et de déployer leurs applications à la demande, sans nécessiter d'orchestration avec d'autres services. Une architecture à faible couplage permet à vos équipes de travailler de manière indépendante sans dépendre d'autres équipes pour le support et les services, ce qui leur permet de travailler rapidement et de fournir de la valeur à l'organisation.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-architecture"
        }
    ),(
        autonomous_team:Capability:Technical {
            name: "autonomous_team",
            title: "Equipe Autonome",
            description: "Les équipes qui peuvent choisir les outils qu'elles veulent utiliser sont plus performantes en matière de livraison continue. Personne ne sait mieux que les praticiens ce dont ils ont besoin pour être efficaces.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-teams-empowered-to-choose-tools"
        }
    ),(
        continuous_integration:Capability:Technical {
            name: "continuous_integration",
            title: "Intégration Continue (CI)",
            description: "Une méthode de développement où le code est régulièrement vérifié et où chaque vérification déclenche une série de tests rapides pour découvrir les régressions, que les développeurs éliminent immédiatement. Le processus d'IC crée des constructions et des paquets canoniques qui sont finalement déployés et publiés.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-continuous-integration"
        }
    ),(
        continuous_testing:Capability:Technical {
            name: "continuous_testing",
            title: "Tests en continus",
            description: "Les tests sont effectués tout au long du cycle de vie du logiciel et non plus comme une phase distincte après le \"développement terminé\". Avec les tests continus, les développeurs et les testeurs travaillent côte à côte. Les entreprises les plus performantes pratiquent le développement piloté par les tests, obtiennent un retour d'information sur les tests en moins de dix minutes et révisent et améliorent en permanence leurs suites de tests (par exemple, pour mieux détecter les défauts et maîtriser la complexité).",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-test-automation"
        }
    ),(
        version_control:Capability:Technical {
            name: "version_control",
            title: "Contrôle de version",
            description: "L'utilisation d'un système de contrôle de version, tel que Git ou Subversion, pour tous les artefacts de production, y compris le code de l'application, les configurations de l'application, les configurations du système et les scripts pour automatiser la génération de l'exécutable et la configuration des environnements.",
            guide: "https://cloud.google.com/architecture/devops/devops-tech-version-control"
        }
    ),(
        test_data_management:Capability:Technical {
            name: "test_data_management",
            title: "Gestion des données de test",
            description: "Une partie de plus en plus importante du processus de test automatisé. Les pratiques efficaces consistent à disposer de données adéquates pour exécuter votre suite de tests, à pouvoir acquérir les données nécessaires à la demande et à faire en sorte que les données ne limitent pas le nombre de tests que vous pouvez exécuter. Les équipes doivent minimiser, dans la mesure du possible, la quantité de données de test nécessaires à l'exécution des tests automatisés.",
            guide: "https://cloud.google.com/solutions/devops/devops-tech-test-data-management/"
        }
    ),(
        monitoring_and_observability:Capability:Technical {
            name: "monitoring_and_observability",
            title: "Supervision et observabilité",
            description: "Permettre aux équipes de comprendre l'état de santé de leurs systèmes. Les solutions efficaces permettent aux équipes de surveiller des paramètres prédéfinis, y compris l'état du système tel qu'il est vécu par les utilisateurs, tout en permettant aux ingénieurs de déboguer les systèmes de manière interactive et d'explorer les propriétés et les modèles à mesure qu'ils apparaissent.",
            guide: "https://cloud.google.com/solutions/devops/devops-measurement-monitoring-and-observability"
        }
    ),(
        proactive_notifications:Capability:Technical {
            name: "proactive_notifications",
            title: "Notifications Proactives",
            description: "Surveillance de l'état du système à l'aide d'avertissements relatifs aux seuils et au taux de changements afin de permettre aux équipes de détecter et d'atténuer les problèmes de manière préventive.",
            guide: "https://cloud.google.com/solutions/devops/devops-measurement-proactive-failure-notification/"
        }
    ),(
        database_change_management:Capability:Technical {
            name: "database_change_management",
            title: "Gestion des modifications en bases de données",
            description: "Les modifications de la base de données ne ralentissent pas les équipes si elles suivent quelques pratiques clés, notamment en stockant les modifications de la base de données sous forme de scripts dans le contrôle de version (et en gérant ces modifications de la même manière que les modifications de l'application de production), en rendant les modifications de la base de données visibles pour tous les intervenants du cycle de livraison du logiciel (y compris les ingénieurs) et en communiquant avec toutes les parties lorsque des modifications de l'application nécessitent des modifications de la base de données.",
            guide: "https://cloud.google.com/solutions/devops/devops-tech-database-change-management"
        }
    ),(
        code_maintainability:Capability:Technical {
            name: "code_maintainability",
            title: "Maintenabilité du code",
            description: "Les systèmes et outils qui permettent aux développeurs de modifier facilement le code maintenu par d'autres, de trouver des exemples dans la base de code, de réutiliser le code d'autres personnes et d'ajouter, de mettre à niveau et de migrer vers de nouvelles versions des dépendances sans casser leur code.",
            guide: "https://cloud.google.com/solutions/devops/devops-tech-code-maintainability"
        }
    ),(
        working_in_small_batches:Capability:Product_And_Process {
            name: "working_in_small_batches",
            title: "Travail en petits lots",
            description: "La façon dont les équipes divisent les produits et les fonctionnalités en petits lots qui peuvent être achevés en moins d'une semaine et publiés fréquemment, y compris l'utilisation de MVPs (minimum viable products).",
            guide: "https://cloud.google.com/solutions/devops/devops-process-working-in-small-batches"
        }
    ),(
        visibility_of_work:Capability:Product_And_Process {
            name: "visibility_of_work",
            title: "Visibilité du travail dans la chaîne de valeur",
            description: "Les équipes comprennent-elles le flux de travail allant de l'entreprise vers les clients, et ont-elles une visibilité sur ce flux, y compris sur l'état des produits et des fonctionnalités ?",
            guide: "https://cloud.google.com/solutions/devops/devops-process-work-visibility-in-value-stream"
        }
    ),(
        customer_feedback:Capability:Product_And_Process {
            name: "customer_feedback",
            title: "Retour d'informations clients",
            description: "Les organisations recherchent-elles activement et régulièrement les commentaires des clients et les intègrent-elles dans la conception de leurs produits ?",
            linkToGuide: "https://cloud.google.com/solutions/devops/devops-process-customer-feedback"
        }
    ),(
        team_experimentation:Capability:Product_And_Process {
            name: "team_experimentation",
            title: "Expérimentation en équipe",
            description: "Les équipes de développement ont-elles le pouvoir de créer et de modifier les spécifications dans le cadre du processus de développement sans avoir à obtenir d'approbation ?",
            linkToGuide: "https://cloud.google.com/solutions/devops/devops-process-team-experimentation"
        }
    ),(
        clear_process:Capability:Product_And_Process {
            name: "clear_process",
            title: "Processus clairs"
        }
    ),(
        heavyweight_process_decreases:Capability:Product_And_Process {
            name: "heavyweight_process_decreases",
            title: "Diminution des processus lourds"
        }
    ),(
        limit_wip:Capability:LeanManagement_And_Monitoring {
            name: "limit_wip",
            title: "Limitation du travail en cours (WIP)",
            description: "La capacité des équipes à limiter les travaux en cours (WIP) et à utiliser ces limites pour améliorer les processus, ce qui augmente le débit.",
            guide: "https://cloud.google.com/architecture/devops/devops-measurement-wip-limits"
        }
    ),(
        visual_management:Capability:LeanManagement_And_Monitoring {
            name: "visual_management",
            title: "Management Visuel",
            description: "La mesure dans laquelle les équipes créent et maintiennent des affichages visuels qui montrent les principales mesures de qualité et de productivité et l'état actuel du travail (y compris les défauts), et comment elles adaptent ces mesures à leurs objectifs opérationnels.",
            guide: "https://cloud.google.com/solutions/devops/devops-measurement-visual-management"
        }
    ),(
        feedback_from_production:Capability:LeanManagement_And_Monitoring {
            name: "feedback_from_production",
            title: "Retours d'informations venant de la Production",
            description: "La mesure dans laquelle les équipes utilisent les données des outils de supervision des performances applicatives et celles de l'infrastructure pour prendre des décisions opérationnelles quotidiennes.",
            guide: "https://cloud.google.com/solutions/devops/devops-measurement-monitoring-systems"
        }
    ),(
        autonomy:Capability:Cultural {
            name: "autonomy",
            title: "Autonomie",
            description: "Dans les équipes autonomes, les leaders :\n\n- Fixent et communiquent les objectifs, mais laissent l'équipe décider de la manière de faire le travail.\n\n- Éliminent les obstacles en veillant à la simplicité des règles.\n\nPermettent à l'équipe de changer les règles si celles-ci constituent des obstacles à la réalisation des objectifs.\n\nPermettent à l'équipe de privilégier de bons résultats pour les clients, même si cela implique de contourner les règles.\n\nEn donnant plus d'autonomie aux équipes, on améliore les performances de livraison des logiciels et on suscite un sentiment de confiance et on favorise la participation, ce qui, à son tour, stimule la culture organisationnelle."
        }
    ),(
        trust:Capability:Cultural {
            name: "trust",
            title: "Confiance",
            description: "La confiance traduit la mesure dans laquelle une personne croit que son dirigeant ou son manager est honnête, qu'il a de bonnes motivations et de bonnes intentions et qu'il le traite équitablement.\n\nLa confiance a un effet positif sur la participation et la culture organisationnelle, elle est favorisée par le fait de donner plus d'autonomie à vos équipes."
        }
    ),(
        voice:Capability:Cultural {
            name: "voice",
            title: "Participation",
            description: "La participation est le fait qu'une personne soit convaincue de sa capacité et de celle de son équipe à s'exprimer, en particulier en cas de conflit - par exemple, lorsque les membres de l'équipe ne sont pas d'accord, lorsqu'il y a des défaillances du système ou des risques, ou lorsqu'ils proposent des idées pour améliorer le travail.\n\nLa liberté d'expression a un impact positif sur la culture organisationnelle et est favorisée par l'octroi d'une plus grande autonomie et d'une plus grande confiance à vos équipes."
        }
    ),(
        retrospective:Capability:Cultural {
            name: "retrospective",
            title: "Rétrospective",
            description: "Les rétrospectives, les bilans d'apprentissage et les post-mortems sont des activités d'équipe conçues pour tirer systématiquement des enseignements des événements passés afin d'améliorer les performances futures. Les équipes de livraison procèdent à des rétrospectives à intervalles réguliers et effectuent des post-mortems ou des revues d'apprentissage après des incidents.\n\nLes communautés agiles et opérationnelles soulignent l'importance de rendre ces activités \"irréprochables\". Par exemple, dans son ouvrage de 2001 Agile Retrospectives : A Handbook for Team Reviews, Norm Kerth présente la \"Retrospective Prime Directive\", que les participants doivent lire au début d'une rétrospective. Il dit : \"Indépendamment de ce que nous découvrons, nous devons comprendre et croire sincèrement que chacun a fait le meilleur travail possible, compte tenu de ce qui était connu à l'époque, de ses compétences et de ses capacités, des ressources disponibles et de la situation du moment.\"\n\nLes bilans d'apprentissage et les rétrospectives contribuent à créer un climat propice à l'apprentissage et influent également sur la culture organisationnelle. Lorsque les équipes procèdent à ces bilans et rétrospectives, elles tirent des enseignements de leurs erreurs et de leurs échecs et y voient des occasions d'améliorer leur façon de travailler. En particulier, les équipes qui tirent parti de leurs conclusions pour apporter des changements au niveau de l'outillage, des processus ou des procédures constatent les impacts les plus importants.\n\nPour un examen approfondi des revues et rétrospectives d'apprentissage, consultez le rapport 2018 sur l'état du DevOps."
        }
    ),(
        continuous_delivery:Capability:Technical {
            name: "continuous_delivery",
            title: "Livraison Continue",
            description: "On peut dire que des équipes ont mis en œuvre le principe de livraison continue lorsqu'elles ont obtenu les résultats suivants :\n\n- Les équipes peuvent déployer en production (ou vers les utilisateurs finaux) à la demande, tout au long du cycle de vie de la livraison du logiciel.\n\n- Un retour d'information rapide sur la qualité et la capacité de déploiement du système est disponible pour tous les membres de l'équipe, et les personnes concernées font de ce retour d'information leur priorité absolue.\n\nLa livraison continue exige la mise en œuvre d'un certain nombre de pratiques techniques, notamment l'intégration continue, le développement basé sur des branches, l'utilisation complète du contrôle de version et les tests continus.\n\nÀ son tour, la livraison continue produit un certain nombre de résultats : une meilleure performance en matière de livraison de logiciels, une meilleure culture organisationnelle, moins de remaniements, moins de difficultés de déploiement et moins d'épuisement professionnel.\n\nPour plus de détails, lisez le guide complet sur la livraison continue, qui explique également comment la mettre en œuvre et comment surmonter les obstacles les plus courants.",
            guide: "https://cloud.google.com/solutions/devops/devops-tech-continuous-delivery"
        }
    ),(
        fonctional_outsourcing_decreases:Capability:LeanManagement_And_Monitoring {
            name: "fonctional_outsourcing_decreases",
            title: "Diminution de l’externalisation fonctionnelle",
            description: "Un modèle d'externalisation populaire consiste à confier des fonctions individuelles de l'organisation - par exemple, le développement d'applications, les tests et l'assurance qualité, ou l'exploitation de services - à des fournisseurs externes. Cependant, ce modèle introduit des transferts supplémentaires et des frictions potentielles entre les groupes fonctionnels. La division fonctionnelle des responsabilités peut également entraver l'agilité : Une fois les contrats signés, les modifications des spécifications sont difficiles à gérer entre les silos externes.\n\nL'externalisation a tendance à conduire à un travail par lots - et donc à des délais d'exécution longs - parce que le coût de transaction pour faire passer le travail du développement à l'assurance qualité puis aux opérations est très élevé lorsque ces fonctions sont détenues par des groupes externalisés. Lorsque le travail est réparti en projets ou en versions, les fonctionnalités à forte et à faible valeur sont regroupées dans chaque version, ce qui signifie que tout le travail - qu'il soit à forte ou à faible valeur - est livré à la même vitesse.\n\nLe recours à l'externalisation fonctionnelle entraîne des niveaux inférieurs de performance en matière de livraison de logiciels. Dans l'étude 2018 sur l'état du DevOps, il a été constaté que les équipes peu performantes sont 3,9 fois plus susceptibles de recourir à de l'externalisation fonctionnelle que les équipes performantes d'élite. Parallèlement, les équipes performantes d'élite sont deux fois plus susceptibles de développer et de livrer des logiciels au sein d'une seule et même équipe interfonctionnelle.\n\nLe rapport 2018 sur l'état du DevOps aborde l'externalisation fonctionnelle de manière plus approfondie"
        }
    ),(
        disaster_recovery_testing:Capability:Product_And_Process {
            name: "disaster_recovery_testing",
            title: "Plan de Reprise d’Activité",
            description: "Toute organisation qui exploite des systèmes logiciels critiques doit disposer d'un plan de reprise d’activité (PRA). Mais il est essentiel de tester ce plan. Il a été demandé à quelle fréquence les organisations effectuent les types suivants de plans de reprise d'activité sur l'infrastructure de production :\n\n- Des simulations qui perturbent les systèmes de production (y compris l'injection de pannes telles que la dégradation des liaisons réseau ou la désactivation des routeurs).\n- Le basculement de l'infrastructure (y compris le centre de données)\n- Des défaillances d'applications.\n\nSeuls 40 % des répondants en 2019 ont effectué des plans de reprise d'activité au moins une fois par an en utilisant une ou plusieurs des méthodes énumérées. Les organisations qui effectuent ces tests sont plus susceptibles d'avoir des niveaux plus élevés de disponibilité des services - c'est-à-dire la capacité des équipes et des organisations technologiques à faire et à tenir des promesses et des assertions concernant le produit ou le service logiciel qu'elles exploitent.\n\nPour un examen approfondi des plans de reprise d'activité, consultez le rapport 2019 sur l'état du DevOps."
        }
    ),(
        cloud_infrastructure:Capability:Technical {
            name: "cloud_infrastructure",
            title: "Infrastructure en nuage",
            description: "L'Institut National des Normes et de la Technologie (NIST) des États-Unis définit cinq caractéristiques essentielles du cloud computing :\n\n- Libre-service à la demande. Les consommateurs peuvent approvisionner les ressources informatiques selon leurs besoins, automatiquement, sans aucune interaction humaine.\n- Un large accès au réseau. Les capacités sont largement disponibles et accessibles via des plateformes hétérogènes telles que les téléphones mobiles, les tablettes, les ordinateurs portables et les postes de travail.\n- La mutualisation des ressources. Les ressources du fournisseur sont mises en commun dans un modèle multi-locataires, avec des ressources physiques et virtuelles attribuées et réattribuées dynamiquement à la demande. Le client n'a généralement aucun contrôle direct sur l'emplacement exact des ressources fournies, mais il peut spécifier l'emplacement à un niveau d'abstraction plus élevé (par exemple le pays, l'État ou le centre de données).\n- Une élasticité rapide. Les capacités peuvent être approvisionnées et libérées de manière élastique afin de se développer rapidement vers l'extérieur ou l'intérieur en fonction de la demande. Les capacités des consommateurs disponibles pour le provisionnement semblent illimitées et peuvent être adaptées en toute quantité et à tout moment.\n- Un service mesuré. Les systèmes en nuage contrôlent et optimisent automatiquement l'utilisation des ressources en exploitant une capacité de mesure à un certain niveau d'abstraction approprié au type de service (par exemple, stockage, traitement, bande passante et comptes d'utilisateurs actifs). L'utilisation des ressources peut être surveillée, contrôlée et signalée à des fins de transparence.\n\nBien que la plupart des organisations utilisant des services en nuage ne répondent pas à toutes ces caractéristiques, en termes de performances de livraison de logiciels, celles qui y parviennent ont 20 fois plus de chances de faire partie du groupe d'élite que du groupe peu performant.\n\nL'accès étendu au réseau et le libre-service à la demande sont souvent négligés. Ces caractéristiques sont particulièrement importantes car elles ont une incidence directe sur les résultats en matière de performances pour les consommateurs. Par exemple, certaines mises en œuvre du cloud exigent encore que les utilisateurs créent des tickets pour accéder à des ressources critiques, ou qu'ils ne puissent pas accéder facilement aux systèmes du cloud depuis leurs appareils. Du point de vue des consommateurs, ils pourraient tout aussi bien utiliser un centre de données traditionnel. Il s'agit là d'un obstacle majeur à l'amélioration de l'efficacité du processus de livraison, qui permet aux équipes d'être plus performantes.\n\nPour plus de détails, lisez le guide complet sur l'infrastructure en nuage qui aborde également la manière de la mettre en œuvre et de surmonter les obstacles courants. Les rapports 2018 et 2019 sur l'état du DevOps traitent également des bonnes pratiques pour la mise en œuvre du cloud de manière plus approfondie."
        }
    ),
    // We create the outcomes
    // ----------------------
    (
        climate_for_learning:Outcome:Culture_and_Work_Environment {
            name: "climate_for_learning",
            title: "Climat d’apprentissage",
            description: "Une organisation ayant un climat propice à l'apprentissage considère celui-ci comme un investissement nécessaire à la croissance, et non comme un mal nécessaire, entrepris uniquement en cas de besoin.",
            guide: "https://cloud.google.com/solutions/devops/devops-culture-learning-culture"
        }
    ),(
        westrum_organizational_culture:Outcome:Culture_and_Work_Environment {
            name: "westrum_organizational_culture",
            title: "Culture organisationnelle Westrum",
            description: "Ce modèle de culture organisationnelle a été développé par le sociologue Ron Westrum. Il classe les organisations en trois catégories : pathologique, bureaucratique ou générative, en fonction des niveaux de coopération, de la façon dont les problèmes sont abordés, de la mesure dans laquelle l'organisation est cloisonnée et de la façon dont les gens réagissent à l'échec et à la nouveauté.",
            guide: "https://cloud.google.com/solutions/devops/devops-culture-westrum-organizational-culture"
        }
    ),(
        culture_of_psychological_safety:Outcome:Culture_and_Work_Environment {
            name: "culture_of_psychological_safety",
            title: "Culture de la sécurité psychologique",
            description: "Dans les équipes ayant une culture de sécurité psychologique, les membres de l'équipe se font confiance, sont capables de résoudre les conflits, prennent des risques calculés et modérés, s'expriment et sont plus créatifs.",
            guide: "https://rework.withgoogle.com/blog/five-keys-to-a-successful-google-team/"
        }
    ),(
        job_satisfaction:Outcome:Culture_and_Work_Environment {
            name: "job_satisfaction",
            title: "Satisfaction au travail",
            description: "Les gens se sentent soutenus par leur employeur, disposent des outils et des ressources nécessaires pour faire leur travail et sentent que leur jugement est apprécié.",
            guide: "https://cloud.google.com/solutions/devops/devops-culture-job-satisfaction"
        }
    ),(
        identity:Outcome:Culture_and_Work_Environment {
            name: "identity",
            title: "Identité",
            description: "Les employés s'identifient à l'organisation pour laquelle ils travaillent. Ils disent que l'organisation offre un bon environnement de travail. Ils ont le sentiment que l'organisation se soucie d'eux. Et ils sont prêts à faire des efforts supplémentaires pour aider l'organisation à réussir.",
            guide: "https://www.jstor.org/stable/25148670"
        }
    ),(
        commercial_performance:Outcome:Organizational_Performance {
            name: "commercial_performance",
            title: "Performance Commerciale"
        }
    ),(
        non_commercial_performance:Outcome:Organizational_Performance {
            name: "non_commercial_performance",
            title: "Performance Non-Commerciale"
        }
    ),(
        software_delivery_performance:Outcome:SDO_performance {
            name: "software_delivery_performance",
            title: "Performance en Livraison Logicielle"
        }
    ),(
        availability:Outcome:SDO_performance {
            name: "availability",
            title: "Performance en Livraison Logicielle"
        }
    ),(
        less_burnout:Outcome {
            name: "less_burnout",
            title: "Performance en Livraison Logicielle",
            description: "Le burnout est un épuisement physique, mental ou émotionnel causé par le surmenage ou le stress. Mais il ne s'agit pas seulement de surmenage ou de stress. L'épuisement professionnel peut transformer les aspects de notre travail et de notre vie que nous aimions auparavant en éléments insignifiants et ennuyeux. Il se manifeste souvent par un sentiment d'impuissance, et est en corrélation avec des cultures pathologiques et un travail improductif et inutile. Le Dr Christina Maslach, professeur de psychologie à l'université de Californie à Berkeley et pionnière de la recherche sur l'épuisement professionnel, a découvert six facteurs de risque organisationnels qui permettent de prédire ce phénomène :\n\n- La surcharge de travail. Des exigences professionnelles qui dépassent les limites humaines.\n- Le manque de contrôle. L'incapacité à influencer les décisions qui affectent votre travail.\n- L'insuffisance des récompenses. Des récompenses financières, institutionnelles ou sociales insuffisantes.\n- L'effondrement de la communauté. Un environnement peu propice au travail.\n- L'absence d'équité. Le manque d'équité dans les processus de prise de décision.\n- Des conflits de valeurs. L'inadéquation entre les valeurs de l'organisation et celles de l'individu.\n\nLe Dr Maslach a constaté que la plupart des organisations tentent de régler le problème lié à la personne et ignorent la question de l'environnement de travail, même si les données montrent que les chances de réussite sont plus grandes lorsque le problème concernant l’environnement de travail est réglé. La direction a le pouvoir de modifier tous ces facteurs de risque.\n\nLes recherches ont montré que les pratiques techniques, de gestion Lean et de gestion des produits Lean, associées à un processus de changement clair, contribuent à réduire l'épuisement professionnel.\n\nPour un examen approfondi du burnout, consultez le rapport 2015 de State of DevOps."
        }
    ),(
        less_deployment_pain:Outcome {
            name: "less_deployment_pain",
            title: "Réduction de la pénibilité lors des déploiements",
            description: "La pénibilité du déploiement permet de mesurer la peur et l'anxiété que ressentent les ingénieurs et le personnel technique lorsqu'ils déploient du code en production. Cette notion permet également de déterminer dans quelle mesure les déploiements sont dérangeants plutôt que faciles et sans douleur. Là où les déploiements sont les plus douloureux, vous trouverez les plus mauvaises performances en matière de livraison de logiciels, de performance organisationnelle et de culture organisationnelle.\n\nLes équipes peuvent réduire la pénibilité des déploiements en mettant en œuvre les pratiques techniques qui favorisent la livraison continue. En d'autres termes, les pratiques techniques qui améliorent la capacité à fournir des logiciels à la fois rapides et stables réduisent également le stress et l'anxiété associés à la mise en production du code."
        }
    ),(
        less_rework:Outcome {
            name: "less_rework",
            title: "Diminution des retouches",
            description: "L'un des moyens de déterminer si les équipes intègrent la qualité dans leur travail consiste à voir comment elles passent leur temps. Sont-elles en mesure de consacrer leurs efforts et leur énergie au développement de nouvelles fonctionnalités et au soutien de l'infrastructure ? Ou les équipes passent-elles la majeure partie de leur temps à corriger des problèmes, à rectifier des erreurs et à réagir à des dysfonctionnements et à des travaux de support client (c'est-à-dire à résoudre des problèmes qui surviennent parce que la qualité n'a pas été intégrée dès le départ) ? Ces temps sont classés en deux catégories. La première concerne le travail proactif ou nouveau, dans lequel il est possible de concevoir, de créer et de travailler sur des fonctionnalités, des tests et des infrastructures de manière structurée et productive afin de créer de la valeur pour nos organisations. La deuxième catégorie est appelée travail réactif non planifié, ou remaniement. Le travail non planifié comprend tout travail de réparation, les déploiements et les correctifs logiciels en urgence, la réponse à des demandes urgentes de documentation d'audit, etc. Le remaniement consiste à réparer les choses qui n'ont pas été faites correctement du premier coup et, tout comme le taux d'échec des changements, c'est une mesure approximative de la qualité.\n\nDans l'enquête 2016 sur l'état du DevOps, il a été demandé aux personnes interrogées de préciser le pourcentage de temps qu'elles consacraient aux remaniements et aux travaux non planifiés, ainsi qu'aux nouveaux travaux tels que la conception et la construction de nouvelles fonctionnalités. Les entreprises très performantes ont déclaré consacrer 49% de leur temps à de nouveaux travaux et 21% à des travaux non planifiés ou à des remaniements. En revanche, les entreprises peu performantes consacrent 38% de leur temps à de nouveaux travaux et 27% à des travaux non planifiés ou à des remaniements. Ainsi, les entreprises très performantes consacrent 29% plus de temps aux nouveaux travaux que les entreprises peu performantes, et 22% moins de temps aux travaux non planifiés et aux remaniements.\n\nLa livraison continue prédit des niveaux inférieurs de travail non planifié et de remaniement d'une manière statistiquement significative, ce qui montre que la mise en œuvre des pratiques techniques derrière la livraison continue entraîne une meilleure qualité.\n\nDans l'enquête 2018 sur l'état du DevOps, la question de savoir comment les sondés passent leur temps a révélé que, dans l'ensemble, les entreprises performantes d'élite tirent le plus de temps à valeur ajoutée de leurs journées et passent le moins de temps à faire du travail sans valeur ajoutée de tous les autres groupes, suivies par les entreprises très performantes et les entreprises moyennement performantes. Les personnes peu performantes sont les moins performantes sur tous les plans en termes de temps à valeur ajoutée et de temps sans valeur ajoutée.\n\n",
            report: "https://services.google.com/fh/files/misc/state-of-devops-2016.pdf"
        }
    ),
    // We attach capabilities to their constructs
    // ------------------------------------------
    //
    // Construct: Transformational Leadership
    (vision)-[:CAPABILITY_OF]->(transformational_leadership),
    (inspirational_communication)-[:CAPABILITY_OF]->(transformational_leadership),
    (intellectual_stimulation)-[:CAPABILITY_OF]->(transformational_leadership),
    (supportive_leadership)-[:CAPABILITY_OF]->(transformational_leadership),
    (personal_recognition)-[:CAPABILITY_OF]->(transformational_leadership),
    // Construct: Technical Practices
    (test_automation)-[:CAPABILITY_OF]->(technical_practices),
    (deployment_automation)-[:CAPABILITY_OF]->(technical_practices),
    (trunk_based_development)-[:CAPABILITY_OF]->(technical_practices),
    (shift_left_on_security)-[:CAPABILITY_OF]->(technical_practices),
    (loosely_coupled_architecture)-[:CAPABILITY_OF]->(technical_practices),
    (autonomous_team)-[:CAPABILITY_OF]->(technical_practices),
    (continuous_integration)-[:CAPABILITY_OF]->(technical_practices),
    (continuous_testing)-[:CAPABILITY_OF]->(technical_practices),
    (version_control)-[:CAPABILITY_OF]->(technical_practices),
    (test_data_management)-[:CAPABILITY_OF]->(technical_practices),
    (monitoring_and_observability)-[:CAPABILITY_OF]->(technical_practices),
    (proactive_notifications)-[:CAPABILITY_OF]->(technical_practices),
    (database_change_management)-[:CAPABILITY_OF]->(technical_practices),
    (code_maintainability)-[:CAPABILITY_OF]->(technical_practices),
    // Construct: Lean Product Development
    (working_in_small_batches)-[:CAPABILITY_OF]->(lean_product_development),
    (visibility_of_work)-[:CAPABILITY_OF]->(lean_product_development),
    (customer_feedback)-[:CAPABILITY_OF]->(lean_product_development),
    (team_experimentation)-[:CAPABILITY_OF]->(lean_product_development),
    // Construct: Change Approvals
    (clear_process)-[:CAPABILITY_OF]->(change_approvals),
    (heavyweight_process_decreases)-[:CAPABILITY_OF]->(change_approvals),
    // Construct: Lean Management
    (limit_wip)-[:CAPABILITY_OF]->(lean_management),
    (visual_management)-[:CAPABILITY_OF]->(lean_management),
    (feedback_from_production)-[:CAPABILITY_OF]->(lean_management),
    // Contruct: Autonomy, Trust and Voice
    (autonomy)-[:CAPABILITY_OF]->(trust_voice_autonomy),
    (trust)-[:CAPABILITY_OF]->(trust_voice_autonomy),
    (voice)-[:CAPABILITY_OF]->(trust_voice_autonomy),
    // We attach outcomes to their constructs
    // ------------------------------------------
    //
    // Construct: Culture and Work Environment
    (climate_for_learning)-[:OUTCOME_OF]->(culture_and_work_environment),
    (westrum_organizational_culture)-[:OUTCOME_OF]->(culture_and_work_environment),
    (culture_of_psychological_safety)-[:OUTCOME_OF]->(culture_and_work_environment),
    (job_satisfaction)-[:OUTCOME_OF]->(culture_and_work_environment),
    (identity)-[:OUTCOME_OF]->(culture_and_work_environment),
    // Construct: Organizational Performance
    (commercial_performance)-[:OUTCOME_OF]->(organizational_performance),
    (non_commercial_performance)-[:OUTCOME_OF]->(organizational_performance),
    // Construct: SDO Performance
    (software_delivery_performance)-[:OUTCOME_OF]->(sdo_performance),
    (availability)-[:OUTCOME_OF]->(sdo_performance),
    // We attach roles to the capabilities and constructs they could be interested in
    // ------------------------------------------------------------------------------
    //
    // Architect
    (architect)-[:ACT_ON]->(loosely_coupled_architecture),    
    (architect)-[:ACT_ON]->(autonomy),
    (architect)-[:ACT_ON]->(trust),
    (architect)-[:ACT_ON]->(voice),
    (architect)-[:ACT_ON]->(retrospective),
    // Coach Agile
    (coach_agile)-[:ACT_ON]->(lean_product_development),
    (coach_agile)-[:ACT_ON]->(working_in_small_batches),
    (coach_agile)-[:ACT_ON]->(visibility_of_work),
    (coach_agile)-[:ACT_ON]->(team_experimentation),
    (coach_agile)-[:ACT_ON]->(clear_process),
    (coach_agile)-[:ACT_ON]->(heavyweight_process_decreases),
    (coach_agile)-[:ACT_ON]->(limit_wip),
    (coach_agile)-[:ACT_ON]->(visual_management),
    (coach_agile)-[:ACT_ON]->(autonomy),
    (coach_agile)-[:ACT_ON]->(trust),
    (coach_agile)-[:ACT_ON]->(voice),
    // Developer
    (developer)-[:ACT_ON]->(test_automation),
    (developer)-[:ACT_ON]->(trunk_based_development),
    (developer)-[:ACT_ON]->(loosely_coupled_architecture),
    (developer)-[:ACT_ON]->(autonomous_team),
    (developer)-[:ACT_ON]->(continuous_integration),
    (developer)-[:ACT_ON]->(continuous_testing),
    (developer)-[:ACT_ON]->(version_control),
    (developer)-[:ACT_ON]->(test_data_management),
    (developer)-[:ACT_ON]->(monitoring_and_observability),
    (developer)-[:ACT_ON]->(database_change_management),
    (developer)-[:ACT_ON]->(code_maintainability),
    (developer)-[:ACT_ON]->(team_experimentation),
    (developer)-[:ACT_ON]->(limit_wip),
    (developer)-[:ACT_ON]->(feedback_from_production),
    (developer)-[:ACT_ON]->(autonomy),
    (developer)-[:ACT_ON]->(trust),
    (developer)-[:ACT_ON]->(voice),
    (developer)-[:ACT_ON]->(retrospective),
    // Manager
    (manager)-[:ACT_ON]->(transformational_leadership),
    (manager)-[:ACT_ON]->(vision),
    (manager)-[:ACT_ON]->(inspirational_communication),
    (manager)-[:ACT_ON]->(intellectual_stimulation),
    (manager)-[:ACT_ON]->(supportive_leadership),
    (manager)-[:ACT_ON]->(personal_recognition),
    (manager)-[:ACT_ON]->(clear_process),
    (manager)-[:ACT_ON]->(heavyweight_process_decreases),
    (manager)-[:ACT_ON]->(autonomy),
    (manager)-[:ACT_ON]->(trust),
    (manager)-[:ACT_ON]->(voice),
    (manager)-[:ACT_ON]->(retrospective),
    // Ops
    (ops)-[:ACT_ON]->(deployment_automation),
    (ops)-[:ACT_ON]->(trunk_based_development),
    (ops)-[:ACT_ON]->(autonomous_team),
    (ops)-[:ACT_ON]->(continuous_integration),
    (ops)-[:ACT_ON]->(version_control),
    (ops)-[:ACT_ON]->(monitoring_and_observability),
    (ops)-[:ACT_ON]->(proactive_notifications),
    (ops)-[:ACT_ON]->(database_change_management),
    (ops)-[:ACT_ON]->(code_maintainability),
    (ops)-[:ACT_ON]->(team_experimentation),
    (ops)-[:ACT_ON]->(limit_wip),
    (ops)-[:ACT_ON]->(feedback_from_production),
    (ops)-[:ACT_ON]->(autonomy),
    (ops)-[:ACT_ON]->(trust),
    (ops)-[:ACT_ON]->(voice),
    (ops)-[:ACT_ON]->(retrospective),
    (ops)-[:ACT_ON]->(continuous_delivery),
    // Product Owner
    (product_owner)-[:ACT_ON]->(transformational_leadership),
    (product_owner)-[:ACT_ON]->(vision),
    (product_owner)-[:ACT_ON]->(inspirational_communication),
    (product_owner)-[:ACT_ON]->(intellectual_stimulation),
    (product_owner)-[:ACT_ON]->(supportive_leadership),
    (product_owner)-[:ACT_ON]->(personal_recognition),
    (product_owner)-[:ACT_ON]->(working_in_small_batches),
    (product_owner)-[:ACT_ON]->(customer_feedback),
    (product_owner)-[:ACT_ON]->(limit_wip),
    (product_owner)-[:ACT_ON]->(feedback_from_production),
    (product_owner)-[:ACT_ON]->(autonomy),
    (product_owner)-[:ACT_ON]->(trust),
    (product_owner)-[:ACT_ON]->(voice),
    (product_owner)-[:ACT_ON]->(retrospective),
    // QA
    (qa)-[:ACT_ON]->(test_automation),
    (qa)-[:ACT_ON]->(autonomous_team),
    (qa)-[:ACT_ON]->(continuous_testing),
    (qa)-[:ACT_ON]->(test_data_management),
    (qa)-[:ACT_ON]->(limit_wip),
    (qa)-[:ACT_ON]->(feedback_from_production),
    (qa)-[:ACT_ON]->(autonomy),
    (qa)-[:ACT_ON]->(trust),
    (qa)-[:ACT_ON]->(voice),
    (qa)-[:ACT_ON]->(retrospective), 
    (qa)-[:ACT_ON]->(continuous_delivery), 
    // SecOps
    (secops)-[:ACT_ON]->(shift_left_on_security),
    (secops)-[:ACT_ON]->(autonomous_team),
    (secops)-[:ACT_ON]->(continuous_integration),
    (secops)-[:ACT_ON]->(autonomy),
    (secops)-[:ACT_ON]->(trust),
    (secops)-[:ACT_ON]->(voice),
    (secops)-[:ACT_ON]->(retrospective),
    // Scrum Master
    (scrum_master)-[:ACT_ON]->(working_in_small_batches),
    (scrum_master)-[:ACT_ON]->(visibility_of_work),
    (scrum_master)-[:ACT_ON]->(team_experimentation),
    (scrum_master)-[:ACT_ON]->(clear_process),
    (scrum_master)-[:ACT_ON]->(heavyweight_process_decreases),
    (scrum_master)-[:ACT_ON]->(limit_wip),
    (scrum_master)-[:ACT_ON]->(visual_management),
    (scrum_master)-[:ACT_ON]->(autonomy),
    (scrum_master)-[:ACT_ON]->(trust),
    (scrum_master)-[:ACT_ON]->(voice),
    (scrum_master)-[:ACT_ON]->(retrospective),
    // UX/UI
    (ux_ui)-[:ACT_ON]->(team_experimentation),
    (ux_ui)-[:ACT_ON]->(feedback_from_production),
    (ux_ui)-[:ACT_ON]->(autonomy),
    (ux_ui)-[:ACT_ON]->(trust),
    (ux_ui)-[:ACT_ON]->(voice),
    (ux_ui)-[:ACT_ON]->(retrospective),
    // We create the Accelerate Impact
    // -------------------------------
    (transformational_leadership)-[:IMPACT]->(test_automation),
    (transformational_leadership)-[:IMPACT]->(deployment_automation),
    (transformational_leadership)-[:IMPACT]->(trunk_based_development),
    (transformational_leadership)-[:IMPACT]->(shift_left_on_security),
    (transformational_leadership)-[:IMPACT]->(loosely_coupled_architecture),
    (transformational_leadership)-[:IMPACT]->(autonomous_team),
    (transformational_leadership)-[:IMPACT]->(continuous_integration),
    (transformational_leadership)-[:IMPACT]->(working_in_small_batches),
    (transformational_leadership)-[:IMPACT]->(visibility_of_work),
    (transformational_leadership)-[:IMPACT]->(customer_feedback),
    (autonomy)-[:IMPACT]->(trust),
    (autonomy)-[:IMPACT]->(voice),
    (trust)-[:IMPACT]->(voice),
    (technical_practices)-[:IMPACT]->(continuous_delivery),
    (retrospective)-[:IMPACT]->(climate_for_learning),
    (retrospective)-[:IMPACT]->(westrum_organizational_culture),
    (voice)-[:IMPACT]->(westrum_organizational_culture),
    (trust)-[:IMPACT]->(westrum_organizational_culture),
    (lean_product_development)-[:IMPACT]->(westrum_organizational_culture),
    (lean_management)-[:IMPACT]->(westrum_organizational_culture),
    (continuous_delivery)-[:IMPACT]->(westrum_organizational_culture),
    (clear_process)-[:IMPACT]->(culture_of_psychological_safety),
    (continuous_delivery)-[:IMPACT]->(culture_of_psychological_safety),
    (lean_management)-[:IMPACT]->(job_satisfaction),
    (continuous_delivery)-[:IMPACT]->(job_satisfaction),
    (lean_product_development)-[:IMPACT]->(identity),
    (continuous_delivery)-[:IMPACT]->(identity),
    (culture_and_work_environment)-[:IMPACT]->(organizational_performance),
    (lean_product_development)-[:IMPACT]->(commercial_performance),
    (sdo_performance)-[:IMPACT]->(culture_and_work_environment),
    (fonctional_outsourcing_decreases)-[:IMPACT]->(software_delivery_performance),
    (lean_product_development)-[:IMPACT]->(software_delivery_performance),
    (software_delivery_performance)-[:IMPACT]->(lean_product_development),
    (autonomy)-[:IMPACT]->(software_delivery_performance),
    (change_approvals)-[:IMPACT]->(software_delivery_performance),
    (lean_management)-[:IMPACT]->(software_delivery_performance),
    (continuous_delivery)-[:IMPACT]->(software_delivery_performance),
    (culture_and_work_environment)-[:IMPACT]->(software_delivery_performance),
    (autonomy)-[:IMPACT]->(availability),
    (continuous_delivery)-[:IMPACT]->(availability),
    (culture_and_work_environment)-[:IMPACT]->(availability),
    (disaster_recovery_testing)-[:IMPACT]->(availability),
    (cloud_infrastructure)-[:IMPACT]->(availability),
    (cloud_infrastructure)-[:IMPACT]->(software_delivery_performance),
    (lean_product_development)-[:IMPACT]->(less_burnout),
    (clear_process)-[:IMPACT]->(less_burnout),
    (lean_management)-[:IMPACT]->(less_burnout),
    (continuous_delivery)-[:IMPACT]->(less_burnout),
    (continuous_delivery)-[:IMPACT]->(less_deployment_pain),
    (continuous_delivery)-[:IMPACT]->(less_rework),
    // We attach the State of DevOps Report
    // ------------------------------------
    (transformational_leadership)-[:SEE_REPORT]->(state_of_devops_2017),
    (change_approvals)-[:SEE_REPORT]->(state_of_devops_2019),
    (trust_voice_autonomy)-[:SEE_REPORT]->(state_of_devops_2018),
    (retrospective)-[:SEE_REPORT]->(state_of_devops_2018),
    (fonctional_outsourcing_decreases)-[:SEE_REPORT]->(state_of_devops_2018),
    (disaster_recovery_testing)-[:SEE_REPORT]->(state_of_devops_2019),
    (cloud_infrastructure)-[:SEE_REPORT]->(state_of_devops_2018),
    (cloud_infrastructure)-[:SEE_REPORT]->(state_of_devops_2019),
    (less_burnout)-[:SEE_REPORT]->(state_of_devops_2015),
    (less_rework)-[:SEE_REPORT]->(state_of_devops_2016)