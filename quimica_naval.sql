-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/05/2025 às 21:24
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quimica_naval`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dica`
--

CREATE TABLE `dica` (
  `idDica` int NOT NULL,
  `elemento` varchar(100) NOT NULL,
  `familia` varchar(50) NOT NULL,
  `descricaoDica` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `dica`
--

INSERT INTO `dica` (`idDica`, `elemento`, `familia`, `descricaoDica`) VALUES
(1, 'Hidrogênio', 'Não metal', 'Elemento com 1 elétron no subnível s; pertence ao grupo dos metais alcalinos, mas não é um metal.'),
(2, 'Hidrogênio', 'Não metal', 'É o elemento mais abundante do universo e o elemento básico de toda e qualquer estrela.'),
(3, 'Hidrogênio', 'Não metal', 'Em estado puro como um elemento químico gasoso, é inflamável, incolor, inodoro, não metálico e insolúvel em água.'),
(4, 'Hélio', 'Não metal', 'Este elemento é raro na atmosfera terrestre, pois sua densidade é muito leve e o permite escapar à gravidade da terra.'),
(5, 'Hélio', 'Gases nobres', 'Elemento do 1º período com subnível s completo; possui apenas 2 elétrons.'),
(6, 'Hélio', 'Gases nobres', 'É um gás inerte, ou seja, não sofre reação química.'),
(7, 'Hélio', 'Gases nobres', 'É um gás incolor e inodoro.'),
(8, 'Hélio', 'Gases nobres', 'Mesmo perto do zero absoluto o gás não se solidifica, apenas forma moléculas diatômicas instáveis.'),
(9, 'Lítio', 'Gases nobres', 'É utilizado numa mistura de ar para pressurização de foguetes, em cilindros de ar para mergulhadores, no enchimento de balões, em soldas elétricas e em criogenia para evitar o contato direto do oxigênio do ar com o metal frio.'),
(10, 'Lítio', 'Metais alcalinos', 'Elemento pertencente ao grupo dos metais alcalinos; está no segundo período da tabela periódica.'),
(11, 'Lítio', 'Metais alcalinos', 'É um dos quatro elementos teorizados que foram criados nos primeiros três minutos da origem do universo, através de um processo chamado “nucleossíntese do big bang”.'),
(12, 'Lítio', 'Metais alcalinos', 'O metal fresco tem uma cor prateada, mas rapidamente escurece em contato com o ar.'),
(13, 'Lítio', 'Metais alcalinos', 'Em sua forma pura, esse elemento é altamente inflamável e levemente explosivo quando exposto à água e ao ar.'),
(14, 'Lítio', 'Metais alcalinos', 'É usado na composição de baterias para celulares e tablets'),
(15, 'Berílio', 'Metais alcalinos', 'Bom condutor de eletricidade; extremamente reativo; bastante inflamável; metal de menor densidade, inclusive é menos denso do que a água.'),
(16, 'Berílio', 'Metais alcalino terrosos', 'Elemento pertencente ao grupo dos metais alcalinos terrosos; possui 2 elétrons no subnível s da camada de valência.'),
(17, 'Berílio', 'Metais alcalino terrosos', 'É um elemento altamente tóxico, sendo que se a pessoa aspirar os seus sais, ela poderá sentir calafrios, febre e tosse dolorosa.'),
(18, 'Berílio', 'Metais alcalino terrosos', 'É usado na produção de giroscópios e guias inerciais de mísseis e foguetes.'),
(19, 'Boro', 'Metais alcalino terrosos', 'Sua principal aplicação é na fabricação de ligas com o cobre, que são usadas em reatores nucleares.'),
(20, 'Boro', 'Semimetais', 'Elemento do 2º período com 1 elétron no subnível p; possui 3 elétrons na camada de valência.'),
(21, 'Boro', 'Semimetais', 'É um elemento relativamente raro, não é encontrado livre na natureza e pode ser obtido a partir de alguns minerais como: ulexita, tincal, turmalina e kernita.'),
(22, 'Boro', 'Semimetais', 'No organismo humano ele é extremamente tóxico sendo aceitas doses diárias de no máximo 1 mg.'),
(23, 'Carbono', 'Semimetais', 'Pode tomar a forma de um pó marrom, amorfo ou de um material cristalino de cor preta e extremamente duro. o elemento não é encontrado livre na natureza, mas ocorre em abundância no minério de bórax.'),
(24, 'Carbono', 'Não metal', 'Elemento do 2º período com 2 elétrons no subnível p; pode formar cadeias longas.'),
(25, 'Carbono', 'Não metal', 'É um dos elementos mais versáteis que encontramos na natureza, em razão de sua larga aplicação industrial e, principalmente, pela presença em composições celulares e compostos naturais.'),
(26, 'Carbono', 'Não metal', 'É o elemento base da química orgânica, sendo responsável pela maioria dos compostos existentes na natureza.'),
(27, 'Nitrogênio', 'Não metal', 'Está presente no grafite, carvão e diamante.'),
(28, 'Nitrogênio', 'Não metal', 'Elemento do 2º período com 3 elétrons no subnível p; forma moléculas diatômicas estáveis.'),
(29, 'Nitrogênio', 'Não metal', 'É o elemento que as plantas mais necessitam'),
(30, 'Nitrogênio', 'Não metal', 'Ele chega ao solo por meio da chuva e pelos restos de vegetais e animais, cujas substâncias excretadas são ureia e ácido úrico.'),
(31, 'Nitrogênio', 'Não metal', 'Existem espécies de plantas e bactérias que são capazes de fixar esse elemento do ar.'),
(32, 'Nitrogênio', 'Não metal', 'É um elemento primordial na formação de sais de nitrato e ureia, muito utilizados na produção de adubos.'),
(33, 'Oxigênio', 'Não metal', 'Utilizado na fabricação de aço inoxidável'),
(34, 'Oxigênio', 'Não metal', 'Elemento do 2º período com 4 elétrons no subnível p; essencial para a respiração.'),
(35, 'Oxigênio', 'Não metal', 'Em estado gasoso, é incolor — mas apresenta cor azulada em estado líquido e sólido. também é inodoro (sem cheiro) e insípido (sem gosto).'),
(36, 'Oxigênio', 'Não metal', 'É fundamental nas reações de combustão, sendo chamado de comburente.'),
(37, 'Oxigênio', 'Não metal', 'Esse elemento forma quase 21% da atmosfera terrestre e é o elemento mais abundante na crosta terrestre, principalmente na forma de óxidos, silicatos e carbonatos.'),
(38, 'Flúor', 'Não metal', 'É fundamental para a vida na terra, pois participa da respiração aeróbica das células.'),
(39, 'Flúor', 'Halogênios', 'Elemento do 2º período com 5 elétrons no subnível p; é o elemento mais eletronegativo.'),
(40, 'Flúor', 'Halogênios', 'É um mineral natural encontrado em toda a crosta terrestre e largamente distribuído pela natureza.'),
(41, 'Flúor', 'Halogênios', 'Esse elemento é geralmente adicionado à água potável para ajudar a reduzir a incidência de cáries nos dentes.'),
(42, 'Flúor', 'Halogênios', 'Ele está presente nos cfc’s (clorofluorcarbonetos) que são gases poluentes liberados principalmente pela indústria e que acabam por danificar a camada de ozônio e aumentar o efeito estufa.'),
(43, 'Neônio', 'Halogênios', 'Está presente na composição de cremes dentais e géis dentais para prevenção de cáries, na fabricação do teflon, de panelas, formas e utensílios em geral.'),
(44, 'Neônio', 'Gases nobres', 'Elemento do 2º período com subnível p completo; possui configuração eletrônica estável.'),
(45, 'Neônio', 'Gases nobres', 'É considerado o segundo gás nobre mais leve, e seu nome tem origem no termo grego néos, que significa \"novo\"\".\"'),
(46, 'Neônio', 'Gases nobres', 'Usado em iluminação, nas famosas lâmpadas neon, e em alguns tipos de lasers'),
(47, 'Sódio', 'Gases nobres', 'Em sua forma líquida pode ser usado como um substituto do hélio líquido em criogenia (refrigeração)'),
(48, 'Sódio', 'Metais alcalinos', 'Elemento pertencente ao 3º período da tabela com 1 elétron no subnível s.'),
(49, 'Sódio', 'Metais alcalinos', 'É um dos metais mais baratos e pode ser transportado em tanques, cilindros ou latas metálicas bem fechadas em atmosfera de nitrogênio gasoso.'),
(50, 'Sódio', 'Metais alcalinos', 'É um metal macio que, em contato com água, pode provocar uma reação explosiva.'),
(51, 'Sódio', 'Metais alcalinos', 'É altamente reativo, oxidando no ar e reagindo violentamente com água'),
(52, 'Magnésio', 'Metais alcalinos', 'Está presente no sal de cozinha'),
(53, 'Magnésio', 'Metais alcalino terrosos', 'Elemento pertencente ao 3º período com 2 elétrons no subnível s; importante em processos biológicos.'),
(54, 'Magnésio', 'Metais alcalino terrosos', 'É um metal bastante resistente e leve, aproximadamente 30% menos denso que o alumínio.'),
(55, 'Magnésio', 'Metais alcalino terrosos', 'Possui coloração prateada, perdendo seu brilho quando exposto ao ar.'),
(56, 'Magnésio', 'Metais alcalino terrosos', 'Quando pulverizado e exposto ao ar se inflama produzindo uma chama branca.'),
(57, 'Magnésio', 'Metais alcalino terrosos', 'É usado como material refratário em fornos para a produção de ferro e aço, metais não ferrosos, cristais e cimento. assim como na agricultura, indústrias químicas e de construção.'),
(58, 'Magnésio', 'Metais alcalino terrosos', ' O uso principal do metal é como elemento de liga com o alumínio, empregando a para a produção de recipientes de bebidas, componentes de automóveis como aros de roda e, maquinárias diversas. '),
(59, 'Alumínio', 'Metais alcalino terrosos', 'Em situações de cãibras, ou o conhecido “tremor de olho”, o mais certo é que o nível desse elemento no seu organismo seja baixo;'),
(60, 'Alumínio', 'Outros metais', 'Elemento do 3º período com 1 elétron no subnível p; é um metal representativo.'),
(61, 'Alumínio', 'Outros metais', 'É um metal sólido, de baixa densidade, macio e extremamente resistente.'),
(62, 'Alumínio', 'Outros metais', 'É um metal extremamente maleável (só perde para o ouro na capacidade de formar lâminas) e dúctil, apresentando também uma grande resistência à corrosão, devido mais uma vez à sua camada protetora de óxido.'),
(63, 'Alumínio', 'Outros metais', 'É altamente resistente ao calor, tendo sua aplicação comum em panelas de cozinha.'),
(64, 'Silício', 'Outros metais', 'É encontrado em alguns meios de transporte, como elemento estrutural de embarcações e veículos terrestres e aéreos, na construção civil, como meio estrutural de portas, esquadrias, janelas, portões, divisórias, entre outros e como bens de uso cotidiano, como embalagens domésticas e ferramentas diversas.'),
(65, 'Silício', 'Semimetais', 'Elemento do 3º período com 2 elétrons no subnível p; é um semicondutor importante.'),
(66, 'Silício', 'Semimetais', 'À temperatura ambiente, esse elemento encontra se no estado sólido.'),
(67, 'Silício', 'Semimetais', 'Ele é um sólido duro, cuja estrutura cristalina é parecida com a do diamante, que é formado somente por ligações entre carbonos.'),
(68, 'Silício', 'Semimetais', 'Esse sólido possui cor cinza e um brilho metálico, sendo que seu nome vem de sílex ou silicis, que significa “pedra dura”.'),
(69, 'Silício', 'Semimetais', 'Pode ser encontrado em todas as águas naturais, na atmosfera (como poeira), em muitas plantas e nos esqueletos, tecidos e fluidos orgânicos de alguns animais.'),
(70, 'Fósforo', 'Semimetais', 'Está presente em praticamente toda areia, rocha, barro e solo.'),
(71, 'Fósforo', 'Não metal', 'Elemento do 3º período com 3 elétrons no subnível p; possui diferentes formas alotrópicas.'),
(72, 'Fósforo', 'Não metal', 'Alimentos de origem vegetal: cereais, nozes e legumes têm níveis elevados desse elemento.'),
(73, 'Fósforo', 'Não metal', 'É um ametal mole, semitransparente, possui brilho no escuro, daí o termo fosforescente. possui alta reatividade principalmente com o ar, apresentando elevada tendência de oxidação.'),
(74, 'Fósforo', 'Não metal', 'É utilizado em artigos de pirotecnia, na indústria de fertilizantes e prevenir corrosão.'),
(75, 'Enxofre', 'Não metal', 'No cotidiano, é comercializado e está presente em quase todas as resistências, pois gera fogo de forma simples.'),
(76, 'Enxofre', 'Não metal', 'Elemento do 3º período com 4 elétrons no subnível p; possui diferentes estados de oxidação.'),
(77, 'Enxofre', 'Não metal', 'É encontrado na natureza de forma livre ou em compostos, como por exemplo em sulfatos e sulfetos.'),
(78, 'Enxofre', 'Não metal', 'É comumente encontrado nas regiões vulcânicas, e também pode ser encontrado em alguns vegetais como a cebola e a mostarda, nas proteínas e inclusive nos ovos.'),
(79, 'Enxofre', 'Não metal', 'Possui coloração amarelo forte;'),
(80, 'Enxofre', 'Não metal', 'Produz compostos extremamente voláteis;'),
(81, 'Enxofre', 'Não metal', 'É insípido e inodoro;'),
(82, 'Enxofre', 'Não metal', 'É um metal de baixa dureza;'),
(83, 'Enxofre', 'Não metal', 'É leve;'),
(84, 'Enxofre', 'Não metal', 'Não é bom condutor de eletricidade, pois é ametálico;'),
(85, 'Enxofre', 'Não metal', 'Possui odor semelhante a ovo podre;'),
(86, 'Enxofre', 'Não metal', 'Pode ser encontrado na natureza nas três formas físicas, dependendo do alótropo;'),
(87, 'Cloro', 'Não metal', 'É insolúvel em água.'),
(88, 'Cloro', 'Halogênios', 'Elemento do 3º período com 5 elétrons no subnível p; forma muitos compostos iônicos.'),
(89, 'Cloro', 'Halogênios', 'É o segundo halógeno mais leve, após o flúor.'),
(90, 'Cloro', 'Halogênios', 'Sob condições normais é um gás de coloração amarelo esverdeada, onde forma as moléculas diatômicas.'),
(91, 'Cloro', 'Halogênios', 'A alta reatividade desse elemento não permite que ele seja encontrado na natureza em estado elementar, porém é encontrado na forma de cloretos, cloratos, percloratos, cloritos e hipocloritos além de estar ligado covalentemente a outros não metais, além de estar ligado a compostos orgânicos formando haletos.'),
(92, 'Argônio', 'Halogênios', 'Esse elemento se liga com o sódio para gerar o sal de cozinha'),
(93, 'Argônio', 'Gases nobres', 'Elemento do 3º período com subnível p completo; é o gás nobre mais abundante na atmosfera.'),
(94, 'Argônio', 'Gases nobres', 'É encontrado no estado gasoso em temperatura ambiente.'),
(95, 'Argônio', 'Gases nobres', 'É o gás nobre mais abundante da terra, estima se que compreenda 0.93% do volume de gases presentes na atmosfera.'),
(96, 'Argônio', 'Gases nobres', 'Na fabricação de lâmpadas de iluminação é comum para impedir que o filamento seja oxidado.'),
(97, 'Argônio', 'Gases nobres', 'É isolante. preenche os vazios entre vidros duplos e triplos em virtude de sua baixa condutividade térmica.'),
(98, 'Potássio', 'Gases nobres', 'Sua obtenção como gás industrial, é através do processo de destilação do ar líquido, seguido de oxidação catalítica, para retirar todo o oxigênio e outros gases presentes, aumentando sua pureza, é transportado em caminhões sob refrigeração, próximas ao zero absoluto.'),
(99, 'Potássio', 'Metais alcalinos', 'Elemento pertencente ao 4º período da tabela com 1 elétron no subnível s.'),
(100, 'Potássio', 'Metais alcalinos', 'Este elemento químico é de extrema importância para o nosso organismo, principalmente na manutenção celular.'),
(101, 'Potássio', 'Metais alcalinos', 'É o segundo metal mais leve.'),
(102, 'Potássio', 'Metais alcalinos', 'É um elemento muito maleável   pode ser cortado facilmente com uma faca.'),
(103, 'Potássio', 'Metais alcalinos', 'Tem um ponto de fusão muito baixo, arde com chama violeta e apresenta uma coloração prateada nas superfícies não expostas ao ar, já que se oxida com rapidez.'),
(104, 'Potássio', 'Metais alcalinos', 'Reage violentamente com a água, desprendendo hidrogênio, podendo inflamar se espontaneamente em presença desta substância.'),
(105, 'Potássio', 'Metais alcalinos', 'É encontrado em alimentos, como a beterraba, banana, damasco, pêssego, couve flor, entre outros.'),
(106, 'Cálcio', 'Metais alcalinos', 'É o sétimo elemento mais abundante na crosta terrestre possui diversas aplicações na indústria, sendo elas: cremes de barbear, na fabricação de pólvora (na forma de nitrato), como fertilizante.'),
(107, 'Cálcio', 'Metais alcalino terrosos', 'Elemento pertencente ao 4º período com 2 elétrons no subnível s; essencial para ossos e dentes.'),
(108, 'Cálcio', 'Metais alcalino terrosos', 'Metal de baixa dureza, maleável e dúctil.'),
(109, 'Cálcio', 'Metais alcalino terrosos', 'Na forma pura, esse elemento se apresenta como um metal prateado que reage facilmente com o oxigênio, portanto, é muito reativo em contato com o ar e a água.'),
(110, 'Cálcio', 'Metais alcalino terrosos', 'É o quinto elemento mais abundante na crosta terrestre (3,6%, 4° em massa) e na costa da lua se faz presente na porcentagem de 8%.'),
(111, 'Cálcio', 'Metais alcalino terrosos', 'Este metal não é encontrado de forma pura na natureza, mas como constituinte de rochas ou minerais de grande interesse industrial, como: mármore, calcita, calcário e dolomita, através dos quais se obtém a cal viva e o cimento.'),
(112, 'Cálcio', 'Metais alcalino terrosos', 'É abundante nos ossos e pode ser obtido através de laticínios'),
(113, 'Escândio', 'Metais alcalino terrosos', 'Este elemento é importante para funções vitais como: contração muscular apropriada, batimentos cardíacos regulados e baixos níveis de colesterol.'),
(114, 'Escândio', 'Metais de transição', 'Elemento do 4º período com 1 elétron no subnível d; geralmente apresenta estado de oxidação +3.'),
(115, 'Escândio', 'Metais de transição', 'É um metal mole, muito leve, apresenta coloração branco prateado adquirindo uma coloração ligeiramente rosado quando exposto ao ar.'),
(116, 'Escândio', 'Metais de transição', 'Suas propriedades são parecidas com as do ítrio, actínio e os lantanídios, por isso, são incluídos frequentemente entre as terras raras, denominação errada porque não são tão raras assim.'),
(117, 'Escândio', 'Metais de transição', 'Devido à alta reatividade do metal e ao seu alto custo, não há usos substanciais para ele nem para seus compostos.'),
(118, 'Titânio', 'Metais de transição', 'O iodeto desse elemento é adicionado ao vapor de mercúrio para produzir uma fonte de luz que se assemelha a luz solar altamente eficiente. estas lâmpadas ajudar câmeras de televisão para reproduzir bem a cor quando as filmagens são feitas dentro de casa ou durante a noite.'),
(119, 'Titânio', 'Metais de transição', 'Elemento do 4º período com 2 elétrons no subnível d; forma óxidos importantes como o tio?.'),
(120, 'Titânio', 'Metais de transição', 'Metal leve de alta resistência, de coloração branca metálica que se encontra no estado sólido à temperatura ambiente, e é extraído de minerais.'),
(121, 'Titânio', 'Metais de transição', 'Não é oxidável, ou seja, possui resistência à corrosão.'),
(122, 'Titânio', 'Metais de transição', 'Não é um bom condutor térmico, mas possui uma alta condutividade elétrica. '),
(123, 'Titânio', 'Metais de transição', 'No estado puro, este metal é dúctil e, por isso, fica fácil de ser trabalhado.'),
(124, 'Titânio', 'Metais de transição', 'A maior vantagem desse elemento é que é tão forte quanto o aço, mas 45% mais leve.'),
(125, 'Vanádio', 'Metais de transição', 'Muito utilizado em ligas para aplicação na indústria aeronáutica e aeroespacial, e ainda possui a vantagem de suportar altas temperaturas, o que é ideal para mísseis e naves espaciais.'),
(126, 'Vanádio', 'Metais de transição', 'Elemento do 4º período com 3 elétrons no subnível d; utilizado na produção de aços especiais.'),
(127, 'Vanádio', 'Metais de transição', 'É um metal de transição mole, dúctil de cor cinzenta e brilhante.'),
(128, 'Vanádio', 'Metais de transição', 'Apresenta alta resistência ao ataque das base, ao ácido sulfúrico (h2so4) e ao ácido clorídrico (hcl).'),
(129, 'Vanádio', 'Metais de transição', 'É obtido a partir de diversos minerais, até do petróleo. também pode ser obtido da recuperação do óxido de vanádio em pó procedente de processos de combustão.'),
(130, 'Vanádio', 'Metais de transição', 'Tem algumas aplicações nucleares devido a sua baixa captura de nêutrons.'),
(131, 'Vanádio', 'Metais de transição', 'É um elemento químico essencial em alguns seres vivos, embora não seja conhecida exatamente a sua função.'),
(132, 'Cromo', 'Metais de transição', 'É usado para a produção de aços inoxidáveis para instrumentos cirúrgicos e ferramentas, em aços resistentes a corrosão e, misturado com alumínio em ligas de titânio, é empregado em motores a reação.'),
(133, 'Cromo', 'Metais de transição', 'Elemento do 4º período com configuração eletrônica anômala (4s¹ 3d?); apresenta múltiplos estados de oxidação.'),
(134, 'Cromo', 'Metais de transição', 'É um metal de transição, duro, frágil, de coloração cinza semelhante ao aço e muito resistente à corrosão.'),
(135, 'Cromo', 'Metais de transição', 'É empregado principalmente em metalurgia para aumentar a resistência à corrosão e dar um acabamento brilhante.'),
(136, 'Manganês', 'Metais de transição', 'É utilizado em processos de cromagem, que consiste em depositar sobre uma peça uma capa protetora desse elemento através da eletrodeposição. também é utilizado em anodizado de alumínio.'),
(137, 'Manganês', 'Metais de transição', 'Elemento do 4º período com 5 elétrons no subnível d; essencial em processos biológicos e industriais.'),
(138, 'Manganês', 'Metais de transição', 'É um dos elementos mais abundantes na crosta terrestre e encontra se largamente distribuído em solos, sedimentos, rochas, água e materiais biológicos.'),
(139, 'Manganês', 'Metais de transição', 'Se apresenta como um metal cinza brilhante e ocorre na forma de minerais;'),
(140, 'Manganês', 'Metais de transição', 'É usado na fabricação de aços especiais, porque melhora propriedades de forjamento, resistência, rigidez e resistência ao desgaste. também na obtenção de alguns aços inoxidáveis de baixo custo;'),
(141, 'Manganês', 'Metais de transição', 'É considerado um elemento estratégico na economia mundial, pois tem amplo uso comercial.'),
(142, 'Ferro', 'Metais de transição', 'Usado para descolorir vidros e para dar coloração violeta, porque em altas concentrações dá uma coloração roxa semelhante à ametista, que por sua vez tem essa cor devido a este elemento presente em sua estrutura.'),
(143, 'Ferro', 'Metais de transição', 'Elemento do 4º período com 6 elétrons no subnível d; principal componente do aço.'),
(144, 'Ferro', 'Metais de transição', 'É um metal maleável, tenaz, de coloração cinza prateado apresentando propriedades magnéticas; é ferromagnético a temperatura ambiente, assim como o níquel e o cobalto.'),
(145, 'Ferro', 'Metais de transição', 'É encontrado na natureza fazendo parte da composição de diversos minerais, entre eles muitos óxidos.'),
(146, 'Ferro', 'Metais de transição', 'Para obter se esse elemento no estado elementar, os óxidos são reduzidos com carbono, e imediatamente são submetidos a um processo de refinação para retirar as impurezas presentes.'),
(147, 'Ferro', 'Metais de transição', 'É um metal muito utilizado pelas indústrias.'),
(148, 'Ferro', 'Metais de transição', 'É encontrado na natureza na forma de minério.'),
(149, 'Ferro', 'Metais de transição', 'É hoje o metal mais usado em todo mundo sendo responsável por 95% da produção mundial de metal.'),
(150, 'Ferro', 'Metais de transição', 'É especialmente empregado na fabricação de automóveis, barcos, componentes estruturais de edifícios, pontes etc.'),
(151, 'Ferro', 'Metais de transição', 'O ser humano começou a dominar a metalurgia desse elemento no período pré histórico conhecido como idade do ferro (início em, aproximadamente, 1.200 a.c. na europa ocidental).'),
(152, 'Cobalto', 'Metais de transição', 'O minério desse elemento é uma das principais commodities produzidas e exportadas pelo brasil.'),
(153, 'Cobalto', 'Metais de transição', 'Elemento do 4º período com 7 elétrons no subnível d; utilizado em ligas e catalisadores.'),
(154, 'Cobalto', 'Metais de transição', 'Apresentando dureza acentuada, constituição quebradiça e cor cinza aço, esse elemento é semelhante e constantemente confundido com o ferro.'),
(155, 'Cobalto', 'Metais de transição', 'As características físicas desse metal, como a densidade, têm grandes variações, pois ele frequentemente apresenta se como uma mistura alotrópica.'),
(156, 'Cobalto', 'Metais de transição', 'Na natureza, o cobalto é encontrado como um sulfoarsenieto.'),
(157, 'Cobalto', 'Metais de transição', 'Naturalmente incrustado em outros minerais, ele é obtido por meio da extração, tornando se principalmente um subproduto da prata, do níquel, do ferro, do chumbo ou do cobre. apesar disso, esse material pode aparecer na cobaltita, na eritrina, na cobaltocalcita e na skutterudita.'),
(158, 'Cobalto', 'Metais de transição', 'É encontrado dentro do solo, do mar ou como parte substancial do metabolismo animal, no caso da vitamina b12.'),
(159, 'Cobalto', 'Metais de transição', 'Esse metal também pode estar presente em algumas estrelas e meteoritos.'),
(160, 'Níquel', 'Metais de transição', 'Tendo posição econômica fortíssima, a produção mundial desse elemento gira em torno de 17.000 toneladas anualmente.'),
(161, 'Níquel', 'Metais de transição', 'Elemento do 4º período com 8 elétrons no subnível d; importante em revestimentos e baterias.'),
(162, 'Níquel', 'Metais de transição', 'É um metal de transição de coloração branco prateado, condutor de eletricidade e calor, dúctil e maleável, porém não pode ser laminado, polido ou forjado facilmente, apresentando certo caráter ferromagnético.'),
(163, 'Níquel', 'Metais de transição', 'É encontrado em diversos minerais, em meteoritos (formando liga metálica com o ferro) e, em princípio, esse elemento existe no núcleo da terra.'),
(164, 'Níquel', 'Metais de transição', 'É resistente a corrosão, e só pode ser utilizado como revestimento por eletrodeposição. '),
(165, 'Cobre', 'Metais de transição', 'O monel é uma liga desse elemento junto com o cobre que é extremamente resistente à corrosão, em especial na água salgada sendo por isso utilizada na indústria naval e petrolífera.'),
(166, 'Cobre', 'Metais de transição', 'Elemento do 4º período com configuração eletrônica anômala (4s¹ 3d¹?); excelente condutor de eletricidade.'),
(167, 'Cobre', 'Metais de transição', 'À temperatura ambiente este elemento encontra se no estado sólido.'),
(168, 'Cobre', 'Metais de transição', 'Este elemento em conjunto com o estanho forma o bronze.'),
(169, 'Cobre', 'Metais de transição', 'Dois terços desse elemento terra são encontrados em rochas vulcânicas, em toda a terra. cerca de um quarto, em rochas sedimentares.'),
(170, 'Cobre', 'Metais de transição', 'É utilizado na fabricação de moedas e medalhas, em fios para instalações elétricas e motores e na arquitetura para fabricação de telhados e detalhes.'),
(171, 'Zinco', 'Metais de transição', 'A estátua da liberdade é feita desse elemento.'),
(172, 'Zinco', 'Metais de transição', 'Elemento do 4º período com subnível d completo; geralmente apresenta estado de oxidação +2.'),
(173, 'Zinco', 'Metais de transição', 'Um mineral essencial, necessário a todas as células do corpo, este elemento está concentrado nos músculos, ossos, pele, rins, fígado, pâncreas, olhos e próstata. ele desempenha uma função essencial em centenas de processos corporais.'),
(174, 'Zinco', 'Metais de transição', 'É bastante utilizado na galvanização do aço ou ferro, protegendo esses metais contra a corrosão.'),
(175, 'Zinco', 'Metais de transição', 'É um metal de coloração branco azulada.'),
(176, 'Zinco', 'Metais de transição', 'É um metal que não sofre corrosão.'),
(177, 'Gálio', 'Metais de transição', 'Os países mais com as maiores reservas desse elemento são: peru, china, austrália, estados unidos e canadá.'),
(178, 'Gálio', 'Outros metais', 'Elemento do 4º período com 1 elétron no subnível p; possui elétrons nos subníveis s, p e d.'),
(179, 'Gálio', 'Outros metais', 'Possui a coloração prateada brilhante quando sólido.'),
(180, 'Gálio', 'Outros metais', 'Esse elemento é facilmente transformado em líquido.'),
(181, 'Gálio', 'Outros metais', 'É um semicondutor de eletricidade e conduz o calor 2 vezes menos que o ferro.'),
(182, 'Germânio', 'Outros metais', 'É utilizado na fabricação de espelhos.'),
(183, 'Germânio', 'Semimetais', 'Elemento do 4º período com 2 elétrons no subnível p; possui propriedades metálicas e não metálicas.'),
(184, 'Germânio', 'Semimetais', 'À temperatura ambiente, este elemento encontra se no estado sólido.'),
(185, 'Germânio', 'Semimetais', 'É um semimetal sólido, duro, cristalino, de coloração branco acinzentada, lustroso, quebradiço, que conserva o brilho em temperaturas ordinárias.'),
(186, 'Germânio', 'Semimetais', 'É um importante material semicondutor utilizado em transístores e fotodetectores.'),
(187, 'Germânio', 'Semimetais', 'É utilizado na fabricação de radares, amplificadores de guitarras elétricas, ligas metálicas de sige em circuitos integrados de alta velocidade, lentes, com alto índice de refração, de ângulo amplo e para microscópios.'),
(188, 'Arsênio', 'Semimetais', 'É usado na fabricação da fibra óptica'),
(189, 'Arsênio', 'Semimetais', 'Elemento do 4º período com 3 elétrons no subnível p; é um metaloide.'),
(190, 'Arsênio', 'Semimetais', 'É considerado tóxico por ser um semimetal pesado.'),
(191, 'Arsênio', 'Semimetais', 'Esse elemento pode ser liberado na natureza através do contato da água de rios (nascentes) com rochas que apresentam elevada concentração desse metal, está presente também em meteoritos, o que significa que é um elemento comum no universo.'),
(192, 'Arsênio', 'Semimetais', 'Este elemento e muitos de seus compostos são altamente venenosos (provocam a morte por falência múltipla dos órgãos) e cancerígenos.'),
(193, 'Arsênio', 'Semimetais', 'Esse elemento tem aparência de aço e perde a cor em contato com o ar'),
(194, 'Selênio', 'Semimetais', 'Esse elemento apresenta três formas alotrópicas: amarela, preta e cinza. a forma cinzenta metálica é a mais comum.'),
(195, 'Selênio', 'Não metal', 'Elemento do 4º período com 4 elétrons no subnível p; é um semicondutor fotossensível.'),
(196, 'Selênio', 'Não metal', 'É um elemento bastante reativo.'),
(197, 'Selênio', 'Não metal', 'Esse elemento é frequentemente utilizado na fabricação de transistores para computadores, telefones celulares e jogos eletrônicos portáteis.'),
(198, 'Selênio', 'Não metal', 'Esse elemento é usado para fazer pigmentos para produtos cerâmicos, tintas e plásticos.'),
(199, 'Selênio', 'Não metal', 'Esse elemento é insolúvel em água e álcool, ligeiramente solúvel em dissulfeto de carbono e solúvel em éter.'),
(200, 'Selênio', 'Não metal', 'Os sulfetos desse elemento são usados em medicina veterinária e shampoos anticaspa.'),
(201, 'Bromo', 'Não metal', 'Esse elemento em conjunto com o sódio é utilizado como inseticida, em medicina para o controle de enfermidades de animais e, igual ao arsênio, na fabricação de vidros para eliminar a coloração verde causada pelas impurezas de ferro.'),
(202, 'Bromo', 'Halogênios', 'Elemento do 4º período com 5 elétrons no subnível p; é um líquido volátil à temperatura ambiente.'),
(203, 'Bromo', 'Halogênios', 'À temperatura ambiente, este elemento encontra se no estado líquido.'),
(204, 'Bromo', 'Halogênios', 'Esse elemento possui coloração vermelha, é volátil e denso.'),
(205, 'Bromo', 'Halogênios', 'Sua reatividade é intermediária entre a do cloro e a do iodo.'),
(206, 'Bromo', 'Halogênios', 'Não é encontrado no estado elementar na natureza, mas sim na forma de sais, sendo extraído comercialmente dos oceanos.'),
(207, 'Criptônio', 'Halogênios', 'Esse elemento é utilizado em sistemas de purificação de água e na limpeza de piscinas.'),
(208, 'Criptônio', 'Gases nobres', 'Elemento do 4º período com subnível p completo; pode formar alguns compostos com flúor e oxigênio.'),
(209, 'Criptônio', 'Gases nobres', 'À temperatura ambiente, esse elemento encontra se no estado gasoso.'),
(210, 'Criptônio', 'Gases nobres', 'Esse elemento pode ser extraído do ar líquido pela técnica conhecida como destilação fraccionada.'),
(211, 'Criptônio', 'Gases nobres', 'Este elemento é caracterizado por uma assinatura espectral verde e laranja brilhante. é um dos produtos da fissão nuclear do urânio.'),
(212, 'Criptônio', 'Gases nobres', 'Esse elemento é frequentemente usado com outros gases raros em lâmpadas fluorescentes.'),
(213, 'Criptônio', 'Gases nobres', 'Em virtude de proporcionar atmosfera inerte, esse elemento é utilizado na obtenção de cristais de germânio e silício, usado como gás de alta temperatura na obtenção de zircônio e titânio.'),
(214, 'Criptônio', 'Gases nobres', 'Pesquisas revelam a existência desse elemento no planeta marte, na proporção de 0,03 p.p.m.'),
(215, 'Rubídio', 'Gases nobres', 'É um gás monoatômico, que dificilmente se liquefaz.'),
(216, 'Rubídio', 'Metais alcalinos', 'Elemento pertencente ao 5º período da tabela com 1 elétron no subnível s.'),
(217, 'Rubídio', 'Metais alcalinos', 'Esse elemento possui coloração branca prateada brilhante, mas perde seu brilho ao contato com o ar.'),
(218, 'Rubídio', 'Metais alcalinos', 'Esse elemento é muito reativo, sendo o 3º elemento alcalino mais eletropositivo.'),
(219, 'Rubídio', 'Metais alcalinos', 'É encontrado líquido à temperatura ambiente e reage violentamente com a água desprendendo hidrogênio.'),
(220, 'Rubídio', 'Metais alcalinos', 'Forma amálgamas com o mercúrio e pode formar ligas com o ouro, com os demais metais alcalinos, metais alcalinos terrosos, antimônio e bismuto.'),
(221, 'Rubídio', 'Metais alcalinos', 'Esse elemento pode ionizar se com facilidade, por isso está estudando se o seu uso em motores iônicos para naves espaciais, ainda que o xenônio e o césio tenham demonstrado uma maior eficiência para este propósito.'),
(222, 'Rubídio', 'Metais alcalinos', 'É utilizado principalmente na fabricação de cristais especiais para sistemas de telecomunicação de fibra óptica e equipamentos de visão noturna.'),
(223, 'Rubídio', 'Metais alcalinos', 'É o 23° elemento mais abundante na crosta terrestre;'),
(224, 'Estrôncio', 'Metais alcalinos', 'E utilizado para exames dos músculos do coração, localização de tumores cerebrais etc.'),
(225, 'Estrôncio', 'Metais alcalino terrosos', 'Elemento pertencente ao 5º período com 2 elétrons no subnível s; utilizado em fogos de artifício para cor vermelha.'),
(226, 'Estrôncio', 'Metais alcalino terrosos', 'Metal que possui coloração prateada, é pouco maleável, mas se oxida rapidamente na presença de oxigênio, o que torna necessário conservá lo imerso em querosene.'),
(227, 'Estrôncio', 'Metais alcalino terrosos', 'Á temperatura ambiente, esse elemento encontra se no estado sólido, é encontrado na natureza na forma de sulfatos e carbonatos.'),
(228, 'Estrôncio', 'Metais alcalino terrosos', 'É um elemento químico radioativo e pode destruir tecidos corporais levando a um câncer.'),
(229, 'Ítrio', 'Metais alcalino terrosos', 'É utilizado em shows pirotécnicos, pois sua queima dá origem a uma forte chama vermelha, por isso é utilizado também em fogos de sinal ou alarme.'),
(230, 'Ítrio', 'Metais de transição', 'Elemento do 5º período com 1 elétron no subnível d; utilizado em lasers e supercondutores.'),
(231, 'Ítrio', 'Metais de transição', 'É um metal pertencente ao conjunto de elementos denominados terras raras, aspecto prateado metálico com brilho, relativamente estável no ar, e quimicamente semelhante aos lantanídios.'),
(232, 'Ítrio', 'Metais de transição', 'Lascas ou fragmentos desse metal podem inflamar se quando a temperatura é superior a 400°c.'),
(233, 'Ítrio', 'Metais de transição', 'O uso desse elemento está sendo estudado como uso para a produção de ferro fundido nodular.'),
(234, 'Ítrio', 'Metais de transição', 'Potencialmente pode ser usado na composição de cerâmicas e vidros, devido ao fato de seu óxido apresentar elevado ponto de fusão, alta resistência mecânica e baixas características de expansão.'),
(235, 'Ítrio', 'Metais de transição', 'Metal prateado lustroso que é estável ao ar seco.'),
(236, 'Ítrio', 'Metais de transição', 'Esse elemento é muito reativo com ácidos.'),
(237, 'Zircônio', 'Metais de transição', 'É muito utilizado no campo dos eletrônicos por conta de suas propriedades luminescentes. também é utilizado na fabricação de lasers.'),
(238, 'Zircônio', 'Metais de transição', 'Elemento do 5º período com 2 elétrons no subnível d; resistente à corrosão e altas temperaturas.'),
(239, 'Zircônio', 'Metais de transição', 'É um metal branco prateado em estado metálico quando purificado e cinza prateado em estado impuro, maleável e dúctil.'),
(240, 'Zircônio', 'Metais de transição', 'É um metal semelhante ao titânio apresentando propriedades de resistência a corrosão nas cntp, não é atacado pela maioria dos ácidos, somente sendo atacado por ácido fluorídrico a qualquer concentração.'),
(241, 'Zircônio', 'Metais de transição', 'É comumente encontrado na natureza na forma de silicato e óxido do metal.'),
(242, 'Zircônio', 'Metais de transição', 'É um metal que apresenta uma reatividade relativamente baixa, na temperatura normal formando poucos compostos tais como nitretos, óxidos, silicatos e haletos, sendo estes seus compostos comumente conhecidos e mais utilizados.'),
(243, 'Zircônio', 'Metais de transição', 'Na natureza não é encontrado em estado elementar, sendo encontrado somente na forma de minérios.'),
(244, 'Zircônio', 'Metais de transição', 'O metal é utilizado para revestir internamente os reatores nucleares evitando o desperdício de combustível nuclear, facilitando a movimentação dos nêutrons.'),
(245, 'Zircônio', 'Metais de transição', 'Usado como material refratário na fabricação de cerâmicas e vidrarias laboratoriais e como catalisador em sínteses orgânicas.'),
(246, 'Nióbio', 'Metais de transição', 'Seu maior uso está concentrado nas usinas nucleares.'),
(247, 'Nióbio', 'Metais de transição', 'Elemento do 5º período com configuração eletrônica anômala (5s¹ 4d?); utilizado em supercondutores e ligas de alta resistência.'),
(248, 'Nióbio', 'Metais de transição', 'É um metal brilhante, extraído principalmente do mineral columbita, e considerado de baixa dureza.'),
(249, 'Nióbio', 'Metais de transição', 'Esse elemento não é encontrado de forma livre na natureza, mas sim em minérios, como a columbita e tantalita.'),
(250, 'Nióbio', 'Metais de transição', 'O brasil possui a maior parte desse elemento disponível no planeta (cerca de 94%) e é responsável por grande parte da comercialização desse metal.'),
(251, 'Nióbio', 'Metais de transição', 'É dúctil e apresenta propriedades supercondutoras, além de ser resistente à corrosão.'),
(252, 'Nióbio', 'Metais de transição', 'Esse elemento se converte num supercondutor quando reduzido a temperaturas criogênicas.'),
(253, 'Molibdênio', 'Metais de transição', 'Devido a sua coloração esse elemento é utilizado, geralmente na forma de liga metálica, para a produção de joias como, por exemplo, os piercings.'),
(254, 'Molibdênio', 'Metais de transição', 'Elemento do 5º período com configuração eletrônica anômala (5s¹ 4d?); importante catalisador industrial.'),
(255, 'Molibdênio', 'Metais de transição', 'Na primeira e segunda guerra mundial esse elemento foi muito utilizado como um substituto para o tungstênio em ligas metálicas, por aguentar temperaturas maiores.'),
(256, 'Molibdênio', 'Metais de transição', 'Esse elemento tem alto potencial redutivo, ou seja, é resistente a corrosão (oxidação) e um dos menores coeficientes de expansão térmica entre os metais utilizados comercialmente.'),
(257, 'Molibdênio', 'Metais de transição', 'É um dos poucos elementos de transição externa classificado dentre os elementos essenciais para o funcionamento do organismo humano.'),
(258, 'Molibdênio', 'Metais de transição', 'Esse elemento não é encontrado naturalmente na forma de metal livre.'),
(259, 'Molibdênio', 'Metais de transição', 'Esse elemento é usado como catalisador na indústria petroquímica. é útil para a eliminação do enxofre.'),
(260, 'Tecnécio', 'Metais de transição', 'Esse elemento é empregado em diversos pigmentos (com coloração alaranjada) para pinturas, tintas, plásticos e compostos de borracha.'),
(261, 'Tecnécio', 'Metais de transição', 'Elemento do 5º período com 5 elétrons no subnível d; elemento radioativo artificial.'),
(262, 'Tecnécio', 'Metais de transição', 'É um metal cinza prateado, que lentamente perde o brilho em contato com o ar úmido.'),
(263, 'Rutênio', 'Metais de transição', 'O elemento pode ser detectado em algumas estrelas e está presente nos produtos da fissão do urânio.'),
(264, 'Rutênio', 'Metais de transição', 'Elemento do 5º período com 7 elétrons no subnível d; utilizado como catalisador.'),
(265, 'Rutênio', 'Metais de transição', 'Este elemento é um metal raro, branco prateado, duro e frágil, pertencente ao grupo da platina.'),
(266, 'Rutênio', 'Metais de transição', 'É usado como catalisador em reações químicas, especialmente na indústria de eletrônicos e em células de combustível.'),
(267, 'Rutênio', 'Metais de transição', 'Apresenta alta resistência à corrosão e oxidação, mesmo em altas temperaturas.'),
(268, 'Ródio', 'Metais de transição', 'Pode aumentar a dureza de ligas metálicas quando adicionado em pequenas quantidades à platina ou paládio.'),
(269, 'Ródio', 'Metais de transição', 'Elemento do 5º período com 8 elétrons no subnível d; utilizado em conversores catalíticos automotivos.'),
(270, 'Ródio', 'Metais de transição', 'Este elemento é um metal branco prateado muito brilhante e altamente reflexivo.'),
(271, 'Ródio', 'Metais de transição', 'É amplamente utilizado em catalisadores automotivos para reduzir a emissão de gases poluentes.'),
(272, 'Ródio', 'Metais de transição', 'Possui excelente resistência à corrosão e é usado também em joias como revestimento para aumentar o brilho.'),
(273, 'Paládio', 'Metais de transição', 'É um dos metais mais raros e valiosos encontrados na crosta terrestre.'),
(274, 'Paládio', 'Metais de transição', 'Elemento do 5º período com configuração eletrônica anômala (4d¹?); utilizado em catalisadores e joias.'),
(275, 'Paládio', 'Metais de transição', 'É um metal branco prateado, leve e altamente maleável.'),
(276, 'Paládio', 'Metais de transição', 'Tem a capacidade de absorver grandes quantidades de hidrogênio, o que o torna útil em aplicações químicas e industriais.'),
(277, 'Paládio', 'Metais de transição', 'É amplamente utilizado em joias, relés elétricos, sensores e catalisadores automotivos.'),
(278, 'Prata', 'Metais de transição', 'Também é usado em ligas dentárias e dispositivos médicos.'),
(279, 'Prata', 'Metais de transição', 'Elemento do 5º período com configuração eletrônica anômala (5s¹ 4d¹?); excelente condutor de eletricidade e utilizado em fotografia.'),
(280, 'Prata', 'Metais de transição', 'Este elemento possui a maior condutividade elétrica e térmica entre todos os metais.'),
(281, 'Prata', 'Metais de transição', 'É amplamente utilizado na fabricação de moedas, joias e talheres.'),
(282, 'Prata', 'Metais de transição', 'Também é empregado em contatos elétricos, filmes fotográficos e espelhos.'),
(283, 'Cádmio', 'Metais de transição', 'Possui coloração branco metálico brilhante e é facilmente polido.'),
(284, 'Cádmio', 'Metais de transição', 'Elemento do 5º período com subnível d completo; utilizado em baterias e revestimentos protetores.'),
(285, 'Cádmio', 'Metais de transição', 'É um metal branco azulado, macio e maleável, tóxico para o organismo humano.'),
(286, 'Cádmio', 'Metais de transição', 'É utilizado principalmente em baterias recarregáveis de níquel cádmio.'),
(287, 'Cádmio', 'Metais de transição', 'Também é usado como pigmento em tintas, plásticos e em ligas metálicas.'),
(288, 'Índio', 'Metais de transição', 'Sua toxicidade ambiental levou à substituição por metais menos prejudiciais em diversas aplicações.'),
(289, 'Índio', 'Outros metais', 'Elemento do 5º período com 1 elétron no subnível p; utilizado em ligas de baixo ponto de fusão.'),
(290, 'Índio', 'Outros metais', 'Este elemento é um metal macio, maleável e de coloração branco prateada com leve tom azulado.'),
(291, 'Índio', 'Outros metais', 'É usado em ligas metálicas, especialmente em soldas com baixo ponto de fusão.'),
(292, 'Índio', 'Outros metais', 'Amplamente utilizado em telas sensíveis ao toque (displays de celulares e monitores), sob a forma de óxido de índio e estanho (ito).'),
(293, 'Estanho', 'Outros metais', 'Emite um som agudo quando dobrado, conhecido como \"grito do índio\"\".\"'),
(294, 'Estanho', 'Outros metais', 'Elemento do 5º período com 2 elétrons no subnível p; utilizado em soldas e revestimentos.'),
(295, 'Estanho', 'Outros metais', 'É um metal maleável, prateado e resistente à corrosão, especialmente em ambientes úmidos.'),
(296, 'Estanho', 'Outros metais', 'Usado na produção de ligas como o bronze (junto com o cobre) e na soldagem de componentes eletrônicos.'),
(297, 'Estanho', 'Outros metais', 'Apresenta formas alotrópicas: o estanho branco é metálico, enquanto o estanho cinza é quebradiço.'),
(298, 'Antimônio', 'Outros metais', 'Também é utilizado no revestimento de latas de aço para evitar a oxidação de alimentos.'),
(299, 'Antimônio', 'Semimetais', 'Elemento do 5º período com 3 elétrons no subnível p; utilizado em ligas e semicondutores.'),
(300, 'Antimônio', 'Semimetais', 'Este elemento é um semimetal prateado e brilhante, com aparência semelhante à do chumbo.'),
(301, 'Antimônio', 'Semimetais', 'É usado como componente de ligas metálicas que precisam ser duras, como baterias e rolamentos.'),
(302, 'Antimônio', 'Semimetais', 'Também é utilizado em retardadores de chama, pigmentos e semicondutores.'),
(303, 'Telúrio', 'Semimetais', 'É tóxico em grandes quantidades e deve ser manipulado com cuidado.'),
(304, 'Telúrio', 'Semimetais', 'Elemento do 5º período com 4 elétrons no subnível p; utilizado em ligas e semicondutores.'),
(305, 'Telúrio', 'Semimetais', 'Este elemento possui coloração prateada com leve tonalidade dourada e estrutura cristalina.'),
(306, 'Telúrio', 'Semimetais', 'É utilizado principalmente como aditivo em ligas metálicas e como semicondutor.'),
(307, 'Telúrio', 'Semimetais', 'Melhora a usinabilidade do aço e pode ser encontrado em placas solares e dispositivos termoelétricos.'),
(308, 'Iodo', 'Semimetais', 'Tem odor semelhante ao alho, especialmente quando manipulado.'),
(309, 'Iodo', 'Halogênios', 'Elemento do 5º período com 5 elétrons no subnível p; essencial para a função da tireoide.'),
(310, 'Iodo', 'Halogênios', 'É um sólido de coloração violeta escura, que sublima facilmente em vapores roxos.'),
(311, 'Iodo', 'Halogênios', 'Essencial ao corpo humano, participa da produção de hormônios da tireoide.'),
(312, 'Iodo', 'Halogênios', 'Presente em antissépticos, contrastes radiológicos e no sal iodado.'),
(313, 'Xenônio', 'Halogênios', 'Apresenta propriedades antimicrobianas e é usado em soluções para desinfecção.'),
(314, 'Xenônio', 'Gases nobres', 'Elemento do 5º período com subnível p completo; forma um número maior de compostos em comparação com outros gases nobres.'),
(315, 'Xenônio', 'Gases nobres', 'É um gás incolor, inodoro e muito pesado em relação aos outros gases nobres.'),
(316, 'Xenônio', 'Gases nobres', 'Utilizado em lâmpadas de flash, faróis de carros e lasers médicos.'),
(317, 'Xenônio', 'Gases nobres', 'Também é empregado como anestésico em procedimentos clínicos especializados.'),
(318, 'Césio', 'Gases nobres', 'Apesar de inerte, pode formar compostos com flúor sob condições extremas.'),
(319, 'Césio', 'Metais alcalinos', 'Elemento pertencente ao 6º período da tabela com 1 elétron no subnível s.'),
(320, 'Césio', 'Metais alcalinos', 'É um metal extremamente macio e de coloração dourada clara.'),
(321, 'Césio', 'Metais alcalinos', 'Reage violentamente com a água, liberando calor suficiente para inflamar o hidrogênio produzido.'),
(322, 'Césio', 'Metais alcalinos', 'É usado em relógios atômicos de altíssima precisão.'),
(323, 'Bário', 'Metais alcalinos', 'Devido à sua reatividade, é armazenado em atmosferas inertes como argônio.'),
(324, 'Bário', 'Metais alcalino terrosos', 'Elemento pertencente ao 6º período com 2 elétrons no subnível s; utilizado em exames de raio x do sistema digestório.'),
(325, 'Bário', 'Metais alcalino terrosos', 'É um metal prateado e macio que oxida rapidamente em contato com o ar.'),
(326, 'Bário', 'Metais alcalino terrosos', 'Seus sais são usados como contraste em exames de imagem como o raio x do aparelho digestivo.'),
(327, 'Bário', 'Metais alcalino terrosos', 'É utilizado em fogos de artifício, produzindo chamas verdes intensas.'),
(328, 'Háfnio', 'Metais alcalino terrosos', 'É altamente reativo e tóxico quando ingerido na forma de sais solúveis.'),
(329, 'Háfnio', 'Metais de transição', 'Elemento do 6º período com 2 elétrons no subnível d; frequentemente encontrado com o zircônio.'),
(330, 'Háfnio', 'Metais de transição', 'É um metal brilhante, cinza prateado, muito resistente à corrosão.'),
(331, 'Háfnio', 'Metais de transição', 'Utilizado em ligas metálicas para reatores nucleares devido à sua alta capacidade de absorver nêutrons.'),
(332, 'Háfnio', 'Metais de transição', 'Também é empregado na fabricação de filamentos e eletrodos.'),
(333, 'Tântalo', 'Metais de transição', 'Apresenta propriedades semelhantes ao zircônio, com quem é frequentemente encontrado.'),
(334, 'Tântalo', 'Metais de transição', 'Elemento do 6º período com 3 elétrons no subnível d; resistente a ácidos e altas temperaturas.'),
(335, 'Tântalo', 'Metais de transição', 'É um metal duro, azul acinzentado e altamente resistente à corrosão, inclusive por ácidos fortes.'),
(336, 'Tântalo', 'Metais de transição', 'Muito utilizado em implantes cirúrgicos, instrumentos de laboratório e componentes eletrônicos (capacitores).'),
(337, 'Tântalo', 'Metais de transição', 'Tem ponto de fusão muito elevado.'),
(338, 'Tungstênio', 'Metais de transição', 'Pode ser reciclado sem perda de qualidade.'),
(339, 'Tungstênio', 'Metais de transição', 'Elemento do 6º período com configuração eletrônica anômala (6s¹ 5d?); possui o ponto de fusão mais alto entre os metais.'),
(340, 'Tungstênio', 'Metais de transição', 'Possui o maior ponto de fusão entre todos os metais (~3422 °c).'),
(341, 'Tungstênio', 'Metais de transição', 'É utilizado em filamentos de lâmpadas incandescentes, eletrodos e armamentos militares.'),
(342, 'Tungstênio', 'Metais de transição', 'Apresenta alta densidade e resistência à abrasão.'),
(343, 'Rênio', 'Metais de transição', 'Também é usado em ligas para ferramentas de corte e perfuração.'),
(344, 'Rênio', 'Metais de transição', 'Elemento do 6º período com 5 elétrons no subnível d; utilizado em ligas de alta resistência e catalisadores.'),
(345, 'Rênio', 'Metais de transição', 'É um dos metais mais raros da crosta terrestre.'),
(346, 'Rênio', 'Metais de transição', 'Utilizado em ligas de superligas para motores a jato e reatores nucleares.'),
(347, 'Rênio', 'Metais de transição', 'Possui um dos pontos de fusão mais altos (~3186 °c).'),
(348, 'Ósmio', 'Metais de transição', 'Tem grande resistência à deformação e oxidação.'),
(349, 'Ósmio', 'Metais de transição', 'Elemento do 6º período com 6 elétrons no subnível d; metal denso utilizado em ligas duras.'),
(350, 'Ósmio', 'Metais de transição', 'É um dos metais mais raros da crosta terrestre.'),
(351, 'Ósmio', 'Metais de transição', 'Utilizado em ligas de superligas para motores a jato e reatores nucleares.'),
(352, 'Ósmio', 'Metais de transição', 'Possui um dos pontos de fusão mais altos (~3186 °c).'),
(353, 'Irídio', 'Metais de transição', 'Tem grande resistência à deformação e oxidação.'),
(354, 'Irídio', 'Metais de transição', 'Elemento do 6º período com 7 elétrons no subnível d; resistente à corrosão e altas temperaturas.');
INSERT INTO `dica` (`idDica`, `elemento`, `familia`, `descricaoDica`) VALUES
(355, 'Irídio', 'Metais de transição', 'É um dos metais mais resistentes à corrosão.'),
(356, 'Irídio', 'Metais de transição', 'Possui coloração branco prateada e é muito denso.'),
(357, 'Irídio', 'Metais de transição', 'É usado em contatos elétricos, eletrodos e instrumentos científicos.'),
(358, 'Platina', 'Metais de transição', 'Sua escassez e durabilidade o tornam útil em aplicações especiais como discos de memória espacial.'),
(359, 'Platina', 'Metais de transição', 'Elemento do 6º período com configuração eletrônica anômala (6s¹ 5d?); catalisador importante em diversas reações químicas.'),
(360, 'Platina', 'Metais de transição', 'Metal nobre, maleável, resistente à oxidação e corrosão.'),
(361, 'Platina', 'Metais de transição', 'Muito usado em joalheria, equipamentos médicos, sensores e catalisadores.'),
(362, 'Platina', 'Metais de transição', 'Possui propriedades catalíticas excepcionais.'),
(363, 'Ouro', 'Metais de transição', 'É um dos metais mais valiosos e estáveis.'),
(364, 'Ouro', 'Metais de transição', 'Elemento do 6º período com configuração eletrônica anômala (6s¹ 5d¹?); metal nobre de alta condutividade e beleza.'),
(365, 'Ouro', 'Metais de transição', 'Metal amarelo brilhante, muito maleável e dúctil.'),
(366, 'Ouro', 'Metais de transição', 'Utilizado em joias, moedas e na indústria eletrônica por sua excelente condutividade e resistência à corrosão.'),
(367, 'Ouro', 'Metais de transição', 'É quimicamente estável e não se oxida com facilidade.'),
(368, 'Mercúrio', 'Metais de transição', 'Símbolo de valor desde a antiguidade.'),
(369, 'Mercúrio', 'Metais de transição', 'Elemento do 6º período com subnível d completo; único metal líquido à temperatura ambiente.'),
(370, 'Mercúrio', 'Metais de transição', 'É o único metal líquido à temperatura ambiente.'),
(371, 'Mercúrio', 'Metais de transição', 'Usado em termômetros, lâmpadas fluorescentes e amálgamas dentárias (em desuso).'),
(372, 'Mercúrio', 'Metais de transição', 'É tóxico e pode contaminar ambientes aquáticos.'),
(373, 'Tálio', 'Metais de transição', 'Evapora lentamente mesmo em temperaturas baixas.'),
(374, 'Tálio', 'Outros metais', 'Elemento do 6º período com 1 elétron no subnível p; é um metal tóxico.'),
(375, 'Tálio', 'Outros metais', 'É um metal macio, cinza, que se oxida rapidamente.'),
(376, 'Tálio', 'Outros metais', 'Extremamente tóxico, usado no passado em venenos para ratos.'),
(377, 'Tálio', 'Outros metais', 'Tem aplicações em equipamentos eletrônicos e vidros especiais.'),
(378, 'Chumbo', 'Outros metais', 'Seu uso é atualmente restrito devido à alta periculosidade.'),
(379, 'Chumbo', 'Outros metais', 'Elemento do 6º período com 2 elétrons no subnível p; metal pesado e tóxico.'),
(380, 'Chumbo', 'Outros metais', 'Metal pesado, macio, maleável e tóxico.'),
(381, 'Chumbo', 'Outros metais', 'Utilizado no passado em canos, tintas e combustíveis.'),
(382, 'Chumbo', 'Outros metais', 'Ainda usado em baterias, proteção contra radiação e ligas metálicas.'),
(383, 'Bismuto', 'Outros metais', 'Seu uso está sendo progressivamente reduzido por razões ambientais e de saúde.'),
(384, 'Bismuto', 'Outros metais', 'Elemento do 6º período com 3 elétrons no subnível p; metal de baixo ponto de fusão.'),
(385, 'Bismuto', 'Outros metais', 'Metal pesado, de coloração branco prateada com tons rosados.'),
(386, 'Bismuto', 'Outros metais', 'Um dos metais menos tóxicos entre os pesados, sendo usado em remédios e cosméticos.'),
(387, 'Bismuto', 'Outros metais', 'Tem propriedades diamagnéticas elevadas.'),
(388, 'Polônio', 'Outros metais', 'Forma ligas com baixo ponto de fusão utilizadas em sprinklers e fusíveis.'),
(389, 'Polônio', 'Semimetais', 'Elemento do 6º período com 4 elétrons no subnível p; elemento radioativo.'),
(390, 'Polônio', 'Semimetais', 'É um elemento altamente radioativo, raro e tóxico.'),
(391, 'Polônio', 'Semimetais', 'Produz calor devido à sua intensa radioatividade.'),
(392, 'Polônio', 'Semimetais', 'Foi descoberto por marie curie.'),
(393, 'Astato', 'Semimetais', 'Usado como fonte de calor em sondas espaciais e satélites.'),
(394, 'Astato', 'Halogênios', 'Elemento do 6º período com 5 elétrons no subnível p; elemento radioativo.'),
(395, 'Astato', 'Halogênios', 'É o halogênio mais raro, altamente radioativo e instável.'),
(396, 'Astato', 'Halogênios', 'Suas propriedades são pouco conhecidas devido à dificuldade de obtê lo em quantidades mensuráveis.'),
(397, 'Astato', 'Halogênios', 'Pode ser usado em terapias contra o câncer radioativo.'),
(398, 'Radônio', 'Halogênios', 'Supõe se que seja um sólido à temperatura ambiente.'),
(399, 'Radônio', 'Gases nobres', 'Elemento do 6º período com subnível p completo; elemento radioativo.'),
(400, 'Radônio', 'Gases nobres', 'Gás nobre radioativo, incolor e inodoro.'),
(401, 'Radônio', 'Gases nobres', 'Formado pela decomposição do rádio, é encontrado em ambientes subterrâneos.'),
(402, 'Radônio', 'Gases nobres', 'Representa risco à saúde em locais mal ventilados.'),
(403, 'Frâncio', 'Gases nobres', 'Utilizado em pesquisas e tratamentos médicos no passado.'),
(404, 'Frâncio', 'Metais alcalinos', 'Elemento pertencente ao 7º período da tabela com 1 elétron no subnível s; é um elemento radioativo.'),
(405, 'Frâncio', 'Metais alcalinos', 'É o metal alcalino mais raro e radioativo.'),
(406, 'Frâncio', 'Metais alcalinos', 'Extremamente instável, com meia vida curta.'),
(407, 'Frâncio', 'Metais alcalinos', 'Pouco é conhecido sobre suas propriedades físicas.'),
(408, 'Rádio', 'Metais alcalinos', 'Apenas pequenas quantidades já foram produzidas em laboratório.'),
(409, 'Rádio', 'Metais alcalino terrosos', 'Elemento pertencente ao 7º período com 2 elétrons no subnível s; é um elemento radioativo.'),
(410, 'Rádio', 'Metais alcalino terrosos', 'É um metal branco prateado altamente radioativo.'),
(411, 'Rádio', 'Metais alcalino terrosos', 'Brilha no escuro devido à emissão de radiação.'),
(412, 'Rádio', 'Metais alcalino terrosos', 'Foi muito usado em tintas luminosas, mas abandonado por riscos à saúde.'),
(413, 'Rutherfórdio', 'Metais alcalino terrosos', 'Descoberto por marie e pierre curie.'),
(414, 'Rutherfórdio', 'Metais de transição', 'Elemento do 7º período com 2 elétrons no subnível d; elemento sintético e radioativo.'),
(415, 'Rutherfórdio', 'Metais de transição', 'Elemento sintético, altamente radioativo, produzido em laboratório por meio da fusão de núcleos atômicos.'),
(416, 'Rutherfórdio', 'Metais de transição', 'Possui meia vida muito curta, o que dificulta seu estudo.'),
(417, 'Rutherfórdio', 'Metais de transição', 'Seu nome é uma homenagem ao físico ernest rutherford.'),
(418, 'Dúbnio', 'Metais de transição', 'Não possui aplicações práticas conhecidas, sendo usado apenas em pesquisas científicas.'),
(419, 'Dúbnio', 'Metais de transição', 'Elemento do 7º período com 3 elétrons no subnível d; elemento sintético e radioativo.'),
(420, 'Dúbnio', 'Metais de transição', 'Elemento sintético e altamente radioativo.'),
(421, 'Dúbnio', 'Metais de transição', 'Foi nomeado em homenagem ao instituto de pesquisa de dubna, na rússia.'),
(422, 'Dúbnio', 'Metais de transição', 'Possui poucos isótopos identificados e todos têm meia vida muito curta.'),
(423, 'Seabórgio', 'Metais de transição', 'Usado exclusivamente em estudos científicos de química superpesada.'),
(424, 'Seabórgio', 'Metais de transição', 'Elemento do 7º período com 4 elétrons no subnível d; elemento sintético e radioativo.'),
(425, 'Seabórgio', 'Metais de transição', 'Elemento sintético criado em laboratório.'),
(426, 'Seabórgio', 'Metais de transição', 'Seu nome homenageia o cientista glenn t. seaborg, um dos descobridores de muitos elementos transurânicos.'),
(427, 'Seabórgio', 'Metais de transição', 'Muito instável, com meia vida de poucos segundos.'),
(428, 'Bóhrio', 'Metais de transição', 'Não possui aplicações práticas; seu interesse é apenas científico.'),
(429, 'Bóhrio', 'Metais de transição', 'Elemento do 7º período com 5 elétrons no subnível d; elemento sintético e radioativo.'),
(430, 'Bóhrio', 'Metais de transição', 'Elemento sintético altamente radioativo.'),
(431, 'Bóhrio', 'Metais de transição', 'Nomeado em homenagem ao físico dinamarquês niels bohr.'),
(432, 'Bóhrio', 'Metais de transição', 'Produzido em aceleradores de partículas e estudado em química nuclear.'),
(433, 'Hássio', 'Metais de transição', 'É instável e só existe por breves instantes.'),
(434, 'Hássio', 'Metais de transição', 'Elemento do 7º período com 6 elétrons no subnível d; elemento sintético e radioativo.'),
(435, 'Hássio', 'Metais de transição', 'Elemento produzido artificialmente.'),
(436, 'Hássio', 'Metais de transição', 'Nomeado com base no estado alemão de hesse, onde foi descoberto.'),
(437, 'Hássio', 'Metais de transição', 'Extremamente instável, com isótopos de meia vida inferior a um minuto.'),
(438, 'Meitnério', 'Metais de transição', 'Estudado em experimentos envolvendo elementos superpesados.'),
(439, 'Meitnério', 'Desconhecida', 'Elemento do 7º período com 7 elétrons no subnível d; elemento sintético e radioativo.'),
(440, 'Meitnério', 'Desconhecida', 'Elemento sintético com meia vida extremamente curta.'),
(441, 'Meitnério', 'Desconhecida', 'Homenageia lise meitner, uma das descobridoras da fissão nuclear.'),
(442, 'Meitnério', 'Desconhecida', 'Pouco se sabe sobre suas propriedades químicas devido à dificuldade de produção.'),
(443, 'Darmstádio', 'Desconhecida', 'Seu estudo ajuda na compreensão dos limites da tabela periódica.'),
(444, 'Darmstádio', 'Desconhecida', 'Elemento do 7º período com 8 elétrons no subnível d; elemento sintético e radioativo.'),
(445, 'Darmstádio', 'Desconhecida', 'Elemento sintético de número atômico 110, nomeado em homenagem à cidade de darmstadt, na alemanha.'),
(446, 'Darmstádio', 'Desconhecida', 'Possui meia vida de milissegundos a segundos, dependendo do isótopo.'),
(447, 'Darmstádio', 'Desconhecida', 'Produzido em colisões nucleares em aceleradores de partículas.'),
(448, 'Roentgênio', 'Desconhecida', 'Utilizado apenas em pesquisas científicas.'),
(449, 'Roentgênio', 'Desconhecida', 'Elemento do 7º período com 9 elétrons no subnível d; elemento sintético e radioativo.'),
(450, 'Roentgênio', 'Desconhecida', 'Elemento nomeado em homenagem a wilhelm röntgen, descobridor dos raios x.'),
(451, 'Roentgênio', 'Desconhecida', 'É extremamente instável, com poucos átomos sintetizados.'),
(452, 'Roentgênio', 'Desconhecida', 'Suas propriedades são estimadas teoricamente.'),
(453, 'Copernício', 'Desconhecida', 'Usado exclusivamente em estudos de física e química nuclear.'),
(454, 'Copernício', 'Metais de transição', 'Elemento do 7º período com subnível d completo; elemento sintético e radioativo.'),
(455, 'Copernício', 'Metais de transição', 'Elemento sintético.'),
(456, 'Copernício', 'Metais de transição', 'Nomeado em homenagem a nicolau copérnico.'),
(457, 'Copernício', 'Metais de transição', 'É um dos elementos mais pesados produzidos em laboratório.'),
(458, 'Nihônio', 'Metais de transição', 'Sua química é pouco conhecida, mas espera se que se comporte como um metal volátil.'),
(459, 'Nihônio', 'Outros metais', 'Elemento do 7º período com 1 elétron no subnível p; elemento sintético e radioativo.'),
(460, 'Nihônio', 'Outros metais', 'Elemento sintético.'),
(461, 'Nihônio', 'Outros metais', 'Seu nome vem do termo “nihon”, que significa “japão” em japonês.'),
(462, 'Nihônio', 'Outros metais', 'Muito instável, com meia vida de poucos segundos.'),
(463, 'Fleróvio', 'Outros metais', 'Seu comportamento químico é ainda pouco compreendido.'),
(464, 'Fleróvio', 'Outros metais', 'Elemento do 7º período com 2 elétrons no subnível p; elemento sintético e radioativo.'),
(465, 'Fleróvio', 'Outros metais', 'Elemento sintético e radioativo.'),
(466, 'Fleróvio', 'Outros metais', 'Nomeado em homenagem ao instituto flerov, na rússia.'),
(467, 'Fleróvio', 'Outros metais', 'Pode apresentar propriedades metálicas e semi metálicas, dependendo do isótopo.'),
(468, 'Moscóvio', 'Outros metais', 'Estudado por seu possível comportamento como um gás nobre \"pesado\"\".\"'),
(469, 'Moscóvio', 'Outros metais', 'Elemento do 7º período com 3 elétrons no subnível p; elemento sintético e radioativo.'),
(470, 'Moscóvio', 'Outros metais', 'Elemento sintético.'),
(471, 'Moscóvio', 'Outros metais', 'Seu nome homenageia o laboratório nacional de livermore, nos eua.'),
(472, 'Moscóvio', 'Outros metais', 'Tem isótopos de vida muito curta.'),
(473, 'Livermório', 'Outros metais', 'Suas propriedades reais ainda estão sendo investigadas.'),
(474, 'Livermório', 'Outros metais', 'Elemento do 7º período com 4 elétrons no subnível p; elemento sintético e radioativo.'),
(475, 'Livermório', 'Outros metais', 'Elemento sintético.'),
(476, 'Livermório', 'Outros metais', 'Seu nome homenageia o laboratório nacional de livermore, nos eua.'),
(477, 'Livermório', 'Outros metais', 'Tem isótopos de vida muito curta.'),
(478, 'Tenessino', 'Outros metais', 'Suas propriedades reais ainda estão sendo investigadas.'),
(479, 'Tenessino', 'Halogênios', 'Elemento do 7º período com 5 elétrons no subnível p; elemento sintético e radioativo.'),
(480, 'Tenessino', 'Halogênios', 'Elemento sintético.'),
(481, 'Tenessino', 'Halogênios', 'Nomeado em homenagem ao estado do tennessee, nos eua.'),
(482, 'Tenessino', 'Halogênios', 'É o halogênio mais pesado conhecido.'),
(483, 'Oganessônio', 'Halogênios', 'Sua estabilidade e reatividade ainda são objeto de estudo.'),
(484, 'Oganessônio', 'Gases nobres', 'Elemento do 7º período com subnível p completo; elemento sintético e radioativo.'),
(485, 'Oganessônio', 'Gases nobres', 'Último elemento da tabela periódica conhecido atualmente.'),
(486, 'Oganessônio', 'Gases nobres', 'Nomeado em homenagem ao físico yuri oganessian.'),
(487, 'Oganessônio', 'Gases nobres', 'Apesar de estar na coluna dos gases nobres, pode apresentar comportamento diferente devido à sua massa.'),
(488, '0', 'Gases nobres', 'Extremamente instável, com meia vida inferior a 1 milissegundo.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogada`
--

CREATE TABLE `jogada` (
  `idJogada` int NOT NULL,
  `idJogador1` int NOT NULL,
  `idJogador2` int NOT NULL,
  `idElemento1` int NOT NULL,
  `idElemento2` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `jogada`
--

INSERT INTO `jogada` (`idJogada`, `idJogador1`, `idJogador2`, `idElemento1`, `idElemento2`) VALUES
(1, 17, 17, 151, 151),
(2, 18, 18, 367, 367);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogador`
--

CREATE TABLE `jogador` (
  `idJogador` int NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `dica`
--
ALTER TABLE `dica`
  ADD PRIMARY KEY (`idDica`);

--
-- Índices de tabela `jogada`
--
ALTER TABLE `jogada`
  ADD PRIMARY KEY (`idJogada`),
  ADD KEY `fk_jogada_jogador1` (`idJogador1`),
  ADD KEY `fk_jogada_jogador2` (`idJogador2`),
  ADD KEY `fk_jogada_elemento1` (`idElemento1`),
  ADD KEY `fk_jogada_elemento2` (`idElemento2`);

--
-- Índices de tabela `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`idJogador`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dica`
--
ALTER TABLE `dica`
  MODIFY `idDica` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT de tabela `jogada`
--
ALTER TABLE `jogada`
  MODIFY `idJogada` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `jogador`
--
ALTER TABLE `jogador`
  MODIFY `idJogador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `jogada`
--
ALTER TABLE `jogada`
  ADD CONSTRAINT `fk_jogada_jogador1` FOREIGN KEY (`idJogador1`) REFERENCES `jogador` (`idJogador`),
  ADD CONSTRAINT `fk_jogada_jogador2` FOREIGN KEY (`idJogador2`) REFERENCES `jogador` (`idJogador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
