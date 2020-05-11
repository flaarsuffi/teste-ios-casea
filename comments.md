# Report

Esse desafio proposto realmente provou que eu muito pouco sei ainda, e que talvez se tiver alguma categoria abaixo de júnior (talvez baby?!) eu possivelmente estou nela. Realmente não tive muito tempo de tentar desenvolver algo durante a semana, muito em função do trabalho que está bem complexo e cansativo, quanto por não ter ideia de onde começar. 
Ao longo da semana conversei brevemente com dois amigos desenvolvedores; um dos meus professores e o meu “mentor” no trabalho, e expliquei para eles, sem dar muito detalhes, que estava fazendo uns estudos. Não enviei o link do GitHub, nem mostrei o plano da arquitetura, apenas perguntei dicas do que eu poderia fazer nesse projeto. E ambos me responderam de formas parecidas e superficiais. 

Vou aqui dividir meu relato então nos dois dias em que tentei produzir um código, o sábado, em que tentei seguir o me foi recomendado, e o domingo, em que decidi ir totalmente por outro caminho.

### Sábado: 
Fiz o fork, criei uma nova branch e comecei a desenvolver seguindo os conselhos. E o que fiz sábado o dia todo foi o seguinte. Eu trabalhei um tempo atrás com uma API que devolvia dados de usuários randômicos, dentro desses dados eu conseguia obter coordenadas geográficas. Então peguei parte do código que já tinha, importei o Alamofire, fiz a request e consegui puxar os dados que queria para o app. Como tudo é bem recente para mim no mundo de programação, ainda não tive a oportunidade de trabalhar com frameworks de logs. Pesquisei, pesquisei e pesquisei por alguma que me deixasse entregar um log da maneira em que o desafio propunha, mas percebi que só estava perdendo tempo. Segui o conselho e que me foi passado, usar o Core Data para persistência de dados. 
No fim do dia caí em duas dúvidas, fazer requisições na API usando o Time Interval, e fazer 3 requisições dos mesmos dados, além de uma maneira de fazer o log que não fosse o print(“”). Depois de horas desliguei a máquina, a ideia era que o domingo me daria mais tempo de pesquisa e desenvolvimento, deixei mais de 20 abas do navegador aberta em que estava estudando.

### Domingo:
Assim que voltei ao computador pela manhã me veio a cabeça de que o que eu tinha feito até então, estava totalmente fora da proposta. Não estava gostando nada. Até que me veio a cabeça pesquisar sobre como gerar um sinal aleatório, e foi aí que descobri a existência do iBeacon, e logo imaginei que seria uma abordagem mais próxima do proposto, afinal ia usar implementações de CoreLocation e CoreBluetooth (requisitos que foram perguntados nas minhas entrevistas). Resolvi apagar o fork, apagar a branch do sábado e recomeçar tudo do zero. Depois de mais de 8 horas revirando a internet atrás de documentação e de estudo para poder entender o que estava acontecendo, comecei a desenvolver. 
A primeira tentativa, na branch develop, foi um captor de sinal bem simples. Confisquei o ipad do meu pai, encontrei 3 aplicativos que poderiam simular um sinal para que pudesse captar com o que estava desenvolvendo. Pesquisei, fiz e refiz, e não deu certo. Instalei e desinstalei o app inúmeras vezes do meu device para teste, nada.
Resolvi então fazer um outro app do zero, criei outra branch, a develop 2 e fui tentar desenvolver um app que gerasse o sinal e, mas que também captasse, para daí sim poder testar usando outro iphone ao invés do ipad. 
Demorei mais algumas horas de pesquisa, mas no fim saiu um código, mesmo que alguns métodos estejam com o warning de deployment, nada “quebrou”. Mas dessa vez não consegui testar no device, pois atingi o limite de 10 apps que posso gerar com o meu id em 7 dias. 

Bom as três tentativas que fiz não cumprem os requisitos. Sinto uma falta ainda considerável de conhecimento, e de prática com as frameworks. Estou sendo bem sincera ao ponto de assumir isso, e talvez isso deponha contra mim nesse processo de seleção, mas não é nem um pouco simples encarar o mundo real de projetos, é bem diferente de todos os cursos que fiz da Udemy, bem diferente dos 5 meses que estudei na Digital House, onde tudo é dentro do caminho feliz. 

Mas mesmo que tenha passado bem longe do que foi proposto, e não ter atingido expectativas, resolvi enviar mesmo assim, em sinal de respeito e agradecimento pela oportunidade que me deram de me conhecer.

Não deveria ter apagado o que fiz no sábado, mas deixo aqui o link de um repositório meu que serviu de inspiração para a tentativa que fiz.
https://github.com/flaarsuffi/Contacts 


Mais uma vez, muito obrigada pela oportunidade.
Flavia
