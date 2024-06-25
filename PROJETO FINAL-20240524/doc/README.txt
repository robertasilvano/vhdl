QUESTÃO_10: 
Fato: decSeq10 == SEQ1 ("decSeq10.pdf" e "SEQ1.pdf" implementam a mesma tabela)
Porém, deveria ser: SEQ1 == decSeq00 ("GENIUS_alunos.pdf" mostra a relação visual entre "SEQ1" e "decSeq00")
Dúvida: "SEQ1.pdf" deveria estar ali na pasta doc?
Os corretos não seriam apenas "decSeqXX"? (Em ordem: 00, 01, 10, 11)
RQ_10:
	EXATO. CORRIGIDO EM QUESTÃO_04 

QUESTÃO_11:
O fio "SEQUSER" (GENIUS_alunos.pdf) não está presente no 
módulo Counter_User (Counter_User.pdf)
RQ_11:
	ANALISANDO A LÓGICA, A PRINCÍPIO NÃO EXISTE A NECESSIDADE DESSE SINAL.
	PODE DESCONSIDERAR POR ENQUANTO.

QUESTÃO_12:
"buttonsync.pdf" está como "dado", mas tive que 
criar um (GENIUS_alunos.pdf).
RQ_12:
CORRIGIDO EM QUESTÃO_04


QUESTÃO_13:
Valores de clock de "FSM_Clock.pdf" não batem com "GENIUS_alunos.pdf".
Considerei "FSM_Clock.pdf" pela divisão proporcional entre os clocks.
RQ_13:
	CONSIDERE OS CALCULOS EM FUNÇÃO DA FREQUÊNCIA DE 50MHz.
	VAMOS OPTAR PELAS FREQUÊNCIAS DE -> 0.25Hz, 0.5Hz, 1Hz e 2Hz
	SE NECESSÁRIO MUDAREMOS AS CONSTANTES.

QUESTÃO_14:
Avisos de outputs indefinidos do DATAPATH (fica assim mesmo?)
Warning (13024): Output pins are stuck at VCC or GND
Warning (13410): Pin "LEDR[4]" is stuck at GND
Warning (13410): Pin "LEDR[5]" is stuck at GND
RQ_14:
	ESTE AVISO "DIZ" QUE A LÓGICA LEDR[5] E LEDR[4] ESTÃO RECEBENDO 
	UMA CONSTANTE OU ZERO OU NÃO FORAM CONECTADOS. OLHA COM CALMA ONDE
	O SINAL ESTÁ "CHEGANDO".


QUESTÃO_15:

"LOGICA.pdf": o valor "j" do registrador não seria 
de 0 a 3? Está de 1 a 4.
RQ_15: