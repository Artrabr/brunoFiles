# THE BRUNO FILES

**DOCUMENTAÇÃO DO PRÉ-PROJETO | v0.1**  
**Autor:** Arthur Rabello  
**Data de referência:** 21 de setembro de 2026  
**Situação:** pré-produção; estrutura inicial do projeto criada, jogo ainda não iniciado como protótipo jogável.

> Este documento distingue três estados: **definido** (decisão de projeto), **existente** (artefato relatado no repositório) e **proposto/pendente** (ainda não implementado ou validado). Não representa uma auditoria atual do código.

## 1. Visão geral

*The Bruno Files* é um RPG 2D de humor absurdo e paródia, protagonizado por Mikael. Após se endividar e perder dinheiro em um investimento no fictício Banco Blaster, ele parte em busca de explicações e de recuperar o prejuízo. A história principal segue uma sequência central, mas decisões alteram relações, diálogos, conflitos, reputação e desfechos.

- **Gênero:** RPG 2D top-down, com exploração e combate em tempo real inspirado em jogos de ação no estilo Zelda. [Definido]
- **Identidade visual:** pixel art para a experiência principal; fotos reais, se utilizadas, limitadas a cutscenes. [Definido]
- **Motor e linguagem:** Godot 4 e GDScript. [Definido]
- **Tom:** comédia absurda, referências pessoais e paródia; personagens e instituições da história são ficcionais. [Definido]
- **Referências criativas:** Undertale, Deltarune e Pokémon, sem compromisso de replicar seus sistemas. [Definido]

## 2. Princípios e escopo

1. **Uma campanha principal:** não desenvolver três histórias independentes; criar uma linha central com consequências de escolhas. [Definido]
2. **Escolhas significativas:** negociação, combate, reputação e informações obtidas devem alterar cenas posteriores. [Definido como direção; regras pendentes]
3. **Primeiro um recorte jogável:** movimento, interação e um encontro simples antes de produzir todo o roteiro. [Proposto]
4. **Escopo 2D:** a alternativa 3D foi descartada nesta fase. [Definido]

### Fora do escopo da primeira versão jogável

Mundo completo, todos os chefes, finais alternativos completos, cutscenes elaboradas, arte definitiva e balanceamento final. Esses itens permanecem no planejamento; não devem bloquear o primeiro protótipo.

## 3. Sinopse e sequência narrativa — base v0.3

**Prólogo:** Mikael quer dinheiro para sair com uma garota. No bar associado a Henrique, paga bebida no crédito e fica com a conta negativa; tem uma reserva de R$ 5, aposta no “leãozinho” e se endivida. [Base narrativa; detalhes de cenas pendentes]

**Banco Blaster:** Arthur Rabelo, comerciante/corretor fictício, recomenda cotas do Banco Blaster. Mikael investe; o banco quebra e o protagonista passa a investigar e tentar recuperar o dinheiro. [Definido]

**Confronto com Arthur:** encontro intermediário com alternativa de negociação ou luta. O resultado deve repercutir em eventos futuros. [Definido como ramificação; consequências exatas pendentes]

**Ilhas Faios:** Mikael chega às ilhas; Rafael o trai e o prende. Igor participa de sua libertação, Borto torna-se aliado e XZ bloqueia a fuga em um confronto. [Base v0.3; encenação e ordem fina a validar]

**Bruno/Vorkaro:** antagonista posterior, com o poder chamado “peleleco”; o papel específico na quebra do banco e a estrutura da batalha final ainda exigem roteiro detalhado. [Antagonista definido; execução pendente]

**Henrique e Arquivo 77:** Henrique reaparece como figura de julgamento das decisões da campanha; um confronto direto com o juiz ocorre somente sob condição de reputação negativa suficientemente alta. [Conceito definido; limiar e mecânica pendentes]

**Romance:** o arco amoroso tem desfecho modesto, descrito na base de lore como um selinho. [Base v0.3; diálogos pendentes]

**Nota editorial:** a família “Bolsolouco” foi descartada. A grafia definitiva de Vorkaro/Vorcaro deve ser padronizada na bíblia de personagens.

## 4. Personagens e função de design

- **Mikael:** protagonista; inexperiente, loiro, olhos azuis; suas decisões alimentam dinheiro, relações e reputação. [Definido]
- **Arthur Rabelo:** personagem comerciante/corretor; recomenda Banco Blaster e protagoniza encontro de negociação ou luta. Não confundir com o autor Arthur Rabello. [Definido]
- **Bruno / Vorkaro:** antagonista central posterior; habilidade “peleleco”. [Definido; motivações finais pendentes]
- **Henrique:** associado ao bar, investigador/julgador e figura do Arquivo 77; pode tornar-se confronto condicionado à reputação. [Base v0.3]
- **Rafael / Nego Rafa:** alívio cômico, aliado de Vorkaro, organiza festas; trai Mikael e atua como miniboss obrigatório. [Base narrativa]
- **Igor / Tirog / Simpático:** personagem tímido; liberta Mikael na versão v0.3, com papel de chefe ainda a detalhar. [Parcial]
- **XZ / Abos / JV / Lúcifer:** maromba exibido e miniboss, com proposta de segunda fase rítmica. [Conceito]
- **Rick / Bolinho:** caçador de recompensas que aparece em situações de reputação negativa alta. [Conceito]
- **Alberto / João / Presidente:** aliado; habilidade “informação privilegiada”, com dano moral. [Conceito]
- **Borto:** aliado durante a sequência das ilhas. [Base v0.3; habilidades pendentes]

## 5. Sistemas de jogo — design, não implementação confirmada

### 5.1 Exploração e combate

- Movimento top-down com personagem em uma cena reutilizável `Player`; colisões e câmera acompanham o avatar. [Arquitetura proposta]
- Ataque em tempo real e interação contextual para conversar ou negociar. [Proposto]
- Cada chefe deve possuir leitura visual clara; a fase rítmica de XZ é um conceito para etapa posterior. [Proposto]

### 5.2 Estado global e consequências

**Modelo proposto:** um Autoload `GameState` centralizaria `money`, `reputation` e `story_flags`. Isto **não confirma** que esses campos ou o Autoload já existam no repositório. Registre eventos por identificadores estáveis, por exemplo `arthur_negotiated`, `rafael_betrayal` e `judge_unlocked`; os exemplos ainda não são contratos definitivos de código.

- **Dinheiro:** custo de escolhas, negociação e progressão narrativa. [Direção definida; valores pendentes]
- **Reputação:** refletir decisões e condicionar consequências, como o confronto com Henrique ou a aparição de Rick. [Direção definida; fórmula pendente]
- **Flags de história:** preservar escolhas para alterar falas, aliados e eventos posteriores. [Proposto]
- **Persistência:** formato de salvamento e carregamento ainda não definido. [Pendente]

### 5.3 Fluxo mínimo de uma escolha

`Interagir → mostrar opção → validar requisitos → aplicar consequência → salvar flag → atualizar diálogo/evento futuro`.

No primeiro recorte, basta implementar uma decisão demonstrável com dois resultados diferentes; a árvore completa de rotas fica para outra etapa.

## 6. Estado técnico registrado até 21/09/2026

**Ambiente de trabalho:** CachyOS/Arch com Hyprland; VS Code. **Diretório local:** `~/brunoFiles`. **Repositório remoto informado:** `github.com/Artrabr/brunoFiles`. **Branch:** `main`.

### 6.1 Artefatos relatados como existentes

- Pastas: `assets/`, `autoload/`, `data/`, `scenes/` e `scripts/`.
- Arquivos de projeto/cena: `project.godot` e `player.tscn`.
- Scripts relatados: `scripts/script_player/player.gd`, `movementation.gd` e `Galinha.gd`.
- Controle de versão: commit `223ca84` (“Primeiro commit”), com 15 arquivos; pasta `.godot/` não versionada.
- Autenticação SSH do GitHub foi concluída; a confirmação do último `git push` não consta no registro consultado. **Não declarar que o remoto está sincronizado sem verificar.**

Essas informações documentam o que foi relatado na conversa de estruturação; nomes, conteúdo e comportamento dos scripts precisam ser conferidos diretamente no projeto antes de publicar documentação técnica de API.

### 6.2 Implementação ainda não comprovada

Não há confirmação de uma cena jogável completa, combate funcional, diálogos, economia, reputação, menu, salvamento, IA de inimigos ou integração narrativa. O projeto encontra-se em preparação e estruturação, não em uma versão alfa.

### 6.3 Estrutura de diretórios de referência

```text
brunoFiles/
├── assets/            # imagens, áudio e demais recursos
├── autoload/          # estado global, quando implementado
├── data/              # dados de diálogos e configurações
├── scenes/            # cenas Godot
├── scripts/
│   └── script_player/ # scripts relatados do jogador
├── player.tscn        # cena relatada
└── project.godot      # configuração Godot
```

O diagrama é um inventário parcial baseado no registro, **não** uma árvore completa auditada; não criar nem mover arquivos apenas para fazê-lo corresponder ao desenho.

## 7. Plano de execução por marcos

**Marco 0 — Higiene do projeto [em andamento]:** conferir o repositório local, executar `git status`, confirmar `git remote -v` e verificar o push; manter `.godot/` fora do controle de versão e registrar convenções de nomes.

**Marco 1 — Movimento [próximo]:** abrir projeto na Godot 4; criar/validar cena do jogador, entrada de movimento, colisão e câmera; testar em uma sala mínima.

**Marco 2 — Interação:** adicionar um NPC, área de interação e diálogo curto com decisão binária.

**Marco 3 — Estado narrativo:** implementar um estado global mínimo, dinheiro e uma flag; demonstrar que a decisão muda um diálogo posterior.

**Marco 4 — Combate vertical:** adicionar ataque, inimigo simples, dano e condição de vitória/derrota; priorizar experiência do jogador antes de chefes complexos.

**Marco 5 — Prólogo jogável:** integrar o ciclo bar → Banco Blaster → perda do investimento → objetivo de Mikael, com apresentação e transição de cenas.

**Marco 6 — Expansão:** produzir encontro de Arthur, Ilhas Faios, chefes, consequências de reputação, Henrique e finais alternativos; validar roteiro e ritmo a cada incremento.

**Critério para chamar de “primeiro protótipo”:** é possível iniciar o projeto, controlar Mikael, interagir com pelo menos um NPC, tomar uma decisão persistente durante a sessão e completar um confronto simples.

## 8. Pendências a resolver antes de expandir

- Padronizar nomes de personagens e escrita de Vorkaro/Vorcaro; definir nome canônico de cada apelido.
- Escrever a cronologia cena a cena e justificar ligações entre Banco Blaster, Bruno e Arquivo 77.
- Definir consequências exatas de negociar/lutar com Arthur e valores de reputação para Rick e Henrique.
- Detalhar habilidades de Igor, Borto, Rafael e mecânica rítmica de XZ.
- Definir modelo de dano, vida, inventário (se houver), checkpoints e salvamento.
- Confirmar licença e origem de sprites, músicas, fotos, fontes e outros recursos antes de distribuição.
- Revisar as cenas, scripts e sincronização Git diretamente no repositório; não supor código pronto.

## 9. Organização sugerida da documentação

- `README.md`: proposta do jogo, requisitos para abrir, situação atual e primeiros passos.
- `docs/GDD.md`: mecânicas, sistemas, HUD, combate e critérios de aceitação.
- `docs/LORE.md`: cronologia, personagens, diálogos e estados das ramificações.
- `docs/ARCHITECTURE.md`: árvores de cenas, Autoloads e interfaces **após** confirmação no código.
- `docs/CHANGELOG.md`: mudanças por versão; separar propostas de funcionalidades entregues.

**Regra de atualização:** cada funcionalidade recebe estado **planejada → em desenvolvimento → testada**. Só promover para “testada” após execução real na Godot; registrar a data e o commit correspondente.

---

**Próxima ação objetiva:** confirmar o estado do Git e fazer Mikael mover-se em uma cena de teste. A documentação de código detalhada deve nascer da implementação efetiva, não apenas da arquitetura idealizada.
