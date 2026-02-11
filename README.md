# Relatório PAP 2024

## Curso Profissional Técnico de Gestão de Equipamentos Informáticos

**Prova de Aptidão Profissional**  
**Projeto:** Jogo 2D no Game Maker  

![cape-game-image](images/cape-game.png)

**Fig. 1 – Capa do Jogo**

---

## Índice

- [Resumo](#resumo)
- [Introdução](#introdução)
- [Desenvolvimento](#desenvolvimento)
  - Pesquisa sobre o projeto
  - Pontos importantes implementados no jogo
  - Sprites personalizados
  - Programação importante do projeto
- [Resolução de Problemas](#resolução-de-problemas)
- [Conclusão](#conclusão)
- [Melhorias Futuras](#melhorias-futuras)
- [Considerações Finais](#considerações-finais)
- [Mais Fotografias](#mais-fotografias)
- [Netgrafia](#netgrafia)

---

## Resumo

O presente trabalho de Prova de Aptidão Profissional (PAP) teve como objetivo desenvolver um jogo 2D utilizando a plataforma **Game Maker**. Este projeto surgiu do meu interesse por jogos e do desejo de aplicar os conhecimentos adquiridos no Curso Técnico de Gestão de Equipamentos Informáticos.

Ao longo do desenvolvimento, foram abordados vários aspetos essenciais para a criação de um jogo, desde o design e a programação até à implementação de funcionalidades interativas.

O processo incluiu a criação de personagens, cenários, mecânicas de jogo e um sistema robusto de **save/load**. Enfrentei diversos desafios técnicos que foram superados através de pesquisa e testes rigorosos.

O resultado final é um jogo 2D funcional que reflete as habilidades adquiridas ao longo do curso, destacando a importância da pesquisa contínua e da resolução de problemas no desenvolvimento de software.

---

## Introdução

Este trabalho de Prova de Aptidão Profissional (PAP) tem como foco o desenvolvimento de um jogo 2D utilizando a plataforma **Game Maker**.

A escolha deste tema foi impulsionada pelo meu gosto por jogos e pela vontade de aplicar os conhecimentos de programação adquiridos ao longo do curso.

Os jogos são uma forma de entretenimento amplamente difundida, podendo também ser ferramentas educativas. Contudo, a sua criação envolve desafios como planeamento, design, programação e testes.

Este projeto tem como objetivo criar um jogo envolvente e tecnicamente sólido, explorando as funcionalidades do Game Maker e analisando os resultados obtidos em termos de jogabilidade, desempenho e experiência do utilizador.

---

## Desenvolvimento

### Pesquisa sobre o projeto

Este projeto envolveu uma extensa pesquisa sobre os fundamentos do desenvolvimento de jogos 2D e as funcionalidades específicas do **Game Maker**.

Inicialmente, não possuía conhecimentos da linguagem utilizada, mas através de tutoriais, documentação oficial e exemplos práticos, consegui adquirir as competências necessárias.

O projeto incluiu a implementação de mecânicas variadas, inimigos com comportamentos distintos e obstáculos que aumentam a complexidade dos níveis.

---

### Pontos importantes implementados no jogo

Principais funcionalidades:

- **Sistema de Save e Load**  
  Salvamento e carregamento automático do progresso do jogador.
  ![save-menu-game-image](images/save-menu-game.png)
  
  *Fig. 2 – Sistema de save*

- **Liberdade de escolha de controlo**  
  Suporte para comandos Xbox, PS4 e genéricos.

- **Controles Intuitivos**  
  Jogabilidade fluida e fácil de usar.

- **Design de Níveis**  
  Níveis com dificuldade progressiva.

- **Elementos Gráficos**  
  Sprites personalizados e animações.

- **Áudio e Efeitos Sonoros**  
  Música de fundo e efeitos imersivos.

---

### Como foram feitos os sprites personalizados

Os sprites foram inteiramente criados por mim, com inspirações retiradas da internet.

Cada movimento foi desenhado manualmente, passando por um processo de tentativa e erro. O feedback de colegas foi essencial para melhorar os resultados.

![sprite-player-image](images/creating-sprites-game.png)

*Fig. 3 – Sprite do player*

![sprite-inimigo-image](images/eye-sprite-game.png)

*Fig. 4 – Sprite inimigo*

![sprite-inimigo-image](images/grey-monkey-sprite-game.png)

*Fig. 5 – Sprite player alternativo*

---

### Programação importante do projeto

#### Aceitação de dispositivos externos

Foi criado um objeto específico responsável por gerir os comandos externos.

![game-object-image](images/game-object.png)

*Fig. 6 – Objeto do jogo*

![code-detect-command-image](images/function-detect.png)

*Fig. 7 – Código de verificação do comando*

![function-detect-command](images/command-block.png)

*Fig. 8 – Função de deteção do comando*

Características:
- Objeto persistente
- Verificação contínua no evento `Step`
- Deadzone configurada para analógicos
- Atualização dinâmica dos ícones conforme o comando ligado

---

### Sistema de Save

#### Tipos de ficheiros salvos

- **Settings:** configurações do jogo
- **Level:** progresso do jogador

#### Save/Load automático das settings

- Funções específicas para salvar e carregar
- Criação automática do ficheiro
- Salvamento imediato após alterações

![script-save-load-image](images/save-load-script.png)

*Fig. 9 – Scripts de save/load*

#### Save manual

- Suporte para múltiplos slots
- Ativado pelo jogador

![save-load-manual-image](images/func-save-load-man.png)

*Fig. 10 – Save manual*

![save-load-menu-image](images/save-menu-game.png)

*Fig. 11 – Menu de save*

#### Save automático dos níveis

- Salvamento automático ao completar níveis
- Carregamento automático no início do jogo

![auto-save-game-image](images/func-save-auto.png)

*Fig. 12 – Save automático do level*

![auto-load-game-image](images/func-load-auto.png)

*Fig. 13 – Load automático do level*

---

### Player

#### Lógica inicial

Criação de um objeto base `obj_entidade`, pai de jogadores e inimigos.

![obj-entity-image](images/obj-entity.png)

*Fig. 14 – Objeto entidade*

![exp-obj-entity-image](images/exp-obj-entity.png)

*Fig. 15 – Explicação do objeto entidade*

Implementação de hitbox dividida em quatro partes:

![bbox-image](images/bbox.png)

*Fig. 16 – BBox*

![bbox-code-image](images/bbox-code.png)

*Fig. 17 – Código da BBox*

---

#### Lógica do player

O player utiliza uma **state machine**, dividindo o comportamento em estados.

![obj-player-image](images/obj-player.png)

*Fig. 18 – Objeto player*

![create-player-image](images/create-player.png)

*Fig. 19 – Create do player*

![state-machine-image](images/state-machine.png)

*Fig. 20 – State machine*

---

### Inimigos

Os inimigos utilizam a mesma lógica de state machine e herdam o sistema de colisões.

![obj-dad-enemy-image](images/obj-dad-enemy.png)

*Fig. 21 – Create obj_pai_inimigos*

![obj-pirate-image](images/obj-pirate.png)

*Fig. 22 – Objeto pirata*

![create-pirate-image](images/create-pirate.png)

*Fig. 23 – Create do pirata*

![step-pirate-image](images/step-pirate.png)

*Fig. 24 – Step do pirata*

Estados implementados:
- Free
- Dano
- Chase
- Ataque

![free-pirate-image](images/step-free-pirate.png)

*Fig. 25 – Free*

![damage-pirate-image](images/step-damage-pirate.png)

*Fig. 26 – Dano*

![chase-pirate-image](images/step-chase-pirate.png)

*Fig. 27 – Chase*

![attack-pirate-image](images/step-attack-pirate.png)

*Fig. 28 – Ataque*

![example-hitbox-image](images/ex-hitbox.png)

- *Fig. 29 – Hitbox*

---

## Resolução de Problemas

Durante o desenvolvimento, enfrentei vários problemas técnicos que foram resolvidos através de pesquisa, testes e persistência.

Este processo foi essencial para garantir a estabilidade e funcionamento correto do jogo.

---

## Conclusão

O desenvolvimento deste jogo 2D proporcionou uma experiência prática e enriquecedora em programação, design e gestão de projetos.

O projeto final demonstra as competências adquiridas e a capacidade de resolver problemas técnicos de forma eficaz.

---

## Melhorias Futuras

- Melhorar gráficos e animações
- Adicionar novos níveis e personagens
- Otimizar performance
- Incorporar feedback dos jogadores
- Lançamento mobile
- Sistema de estrelas por nível
- Sistema de recompensas
- Sons e músicas originais

---

## Considerações Finais

Este projeto representou uma evolução significativa das minhas competências técnicas e pessoais, servindo como base sólida para futuros projetos na área de desenvolvimento de jogos.

---

## Mais Fotografias

![select-level-image](images/level-selector.png)

*Fig. 30 – Seleção de níveis*

![config-game-image](images/options-game.png)

*Fig. 31 – Configurações do jogo*

---

## Netgrafia

### Canais YouTube
- https://www.youtube.com/@gui_oficial/videos
- https://www.youtube.com/c/PontoeV%C3%ADrgulaOficial/videos
- https://www.youtube.com/@noneclass/videos
- https://www.youtube.com/@Tari1/videos
- https://www.youtube.com/@BadGameDev/videos
- https://www.youtube.com/@GEMAPLYS/videos
- https://www.youtube.com/@livesdogemaplys/videos
- https://www.youtube.com/@GameMakerEngine/videos
- https://www.youtube.com/@ShaunJS/videos

### Sites
- Sons: https://freesound.org/
- Música:  
  - https://www.youtube.com/watch?v=TUxT9FP8PkQ  
  - https://www.youtube.com/watch?v=EOI42tiHOXQ
- Manual GameMaker: https://manual.gamemaker.io/
