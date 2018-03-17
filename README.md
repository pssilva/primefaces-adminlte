Primefaces AdminLTE
==============================================
Projeto conceito para implementar um theme primefaces com base no template [AdminLTE 2](https://adminlte.io/themes/AdminLTE/index2.html). Assim colocar em prática as habilidades necessárias para certificação [JSF Developer - 1ZO-896](https://education.oracle.com/pls/web_prod-plq-dad/view_pdf?c_org_id=378219&amp;c_lang=PTB&amp;c_id=D77738GC10)

## Objetivos Principais Conceitos:
- Colocar em prática as skills necessárias para certificação conforme o conteúdo programático, OCE Java EE 6: 
    1. - [EJB Developer - 1ZO-895](https://education.oracle.com/pls/web_prod-plq-dad/view_pdf?c_org_id=378219&c_lang=PTB&c_id=D77742GC10)
    2. - [JSF Developer - 1ZO-896](https://education.oracle.com/pls/web_prod-plq-dad/view_pdf?c_org_id=378219&c_lang=PTB&c_id=D77738GC10)
    3. - [JPA - 1ZO-898](https://education.oracle.com/pls/web_prod-plq-dad/view_pdf?c_org_id=378219&c_lang=PTB&c_id=D77746GC10)
    4. - [Web Component - 1ZO-899](https://education.oracle.com/pls/web_prod-plq-dad/view_pdf?c_org_id=378219&c_lang=PTB&c_id=D71828)
	
- Implementar um Web Service RESTful usando as tecnologias (JAX-RS): Dropwizard, Jersey;
- [Jenkins](https://jenkins.io/) - Integração Contínua; 
- Projetar Sistemas usando Arquiterura Microservices;
- Implantação Contínua (Continuous Deployment);

### Adquirir Proficiências em Habilidades

1. Experiência em sistemas usando o framework JSF Primefaces (e.g. [Primefaces](https://www.primefaces.org/));
    <p><img src="https://github.com/pssilva/primefaces-adminlte/blob/master/doc-repo/primetek_logo.png" alt="Experiência em sistemas usando o framework JSF Primefaces" height="50" width="195"></p>
2. Experiência em sistemas de containerização (e.g. [Docker](https://hub.docker.com/r/pss1suporte/paas-docker/));
    <p><img src="https://github.com/pssilva/primefaces-adminlte/blob/master/doc-repo/docker.png" alt="Experiência em sistemas de containerização Docker" height="50" width="195"></p>
3. Experiência em sistemas Linux e shell scripting;
    <p><img src="https://github.com/pssilva/primefaces-adminlte/blob/master/doc-repo/shell-linux.jpeg" alt="Experiência em sistemas Linux e shell scripting" height="91" width="150"></p>
4. Experiência em sistemas Amazon Web Services - AWS;
    <p><img src="https://github.com/pssilva/primefaces-adminlte/blob/master/doc-repo/aws.png" alt="Experiência em sistemas Amazon Web Services - AWS" height="50" width="195"></p>
5. Experiência em projetos utilizando micro serviços (Microservices) e computação distribuída;

![Microservices](https://github.com/pssilva/primefaces-adminlte/blob/master/doc-repo/microservices-domain.png)

### Como usar:
Considerando que temos uma instância do Amazon Machine Image - AMI iniciada: [aqui](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/AccessingInstances.html) AWS EC2. Execute os comandos abaixo:

1. Clonar o projeto: `git clone https://github.com/pssilva/primefaces-adminlte.git`;
2. Acessar a pasta: `cd primefaces-adminlte`;
3. Instalar as dependências do AdminLTE: 
    1. Acessar: `cd src/main/resources/META-INF/resources/primefaces-adminlte`;
    2. composer: `composer install`;
    3. Node: `npm install admin-lte --save`;
    4. brew: `bower install admin-lte`;
4. Maven na pasta do projeto `primefaces-adminlte`:  `mvn clean package`;
5. Install o theme no seu projeto:
    1. adicionar a dependência POM: 
     
	```
	<dependency>
		<groupId>br.com.primefaces.adminlte</groupId>
		<artifactId>primefaces-adminlte</artifactId>
		<version>0.0.1-SNAPSHOT</version>
	 </dependency>
		 
	```	 

   2. adicionar o theme no seu WEB-INF/web.xml:
   
	```
	<context-param>
		<param-name>primefaces.THEME</param-name>
		<param-value>adminlte</param-value>
	</context-param>
		 
	```	 
   3. adicionar o CSS do template na usa página:
   
	```
	<h:head>
	    <title>
	    	<ui:insert name="title"> 
	        	Sua Página JSF :: Usando o Thema AdminLTE
	    	</ui:insert>
	    </title>
	    <f:facet name="first">
	        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	        <meta http-equiv="pragma" content="no-cache"/>
	        <meta http-equiv="cache-control" content="no-cache"/>
	        <meta http-equiv="expires" content="0"/>
	    </f:facet>
	    
	    <link rel="stylesheet"  id="AdminLTE_CSS"
			href="#{resource['primefaces-adminlte:dist/css/AdminLTE.css']}" 
	        type="text/css" media="all" />
	    <ui:insert name="head"/>
	    
	</h:head>
		 
	```	 

6. acessar alguns dos seguintes links: 
    1. `http://localhost:8080/ap-web/primefaces-adminlte/`;
    2. `http://localhost:8080/ap-web/primefaces-adminlte/index-primefaces.xhtml`;

### Temas 
O projeto toma como base o tema:

1. [AdminLTE](https://github.com/almasaeed2010/AdminLTE); <br />
>AdminLTE: `http://localhost:8080/ap-web/primefaces-adminlte/`

!["AdminLTE Presentation"](https://almsaeedstudio.com/AdminLTE2.png "AdminLTE Presentation")


### Referência

\[Felipe Gutierrez: 2016\], Publisher Apress, Copyright © 2016 by Felipe Gutierrez, [Pro Spring Boot](https://www.apress.com/us/book/9781484214329): A no-nonsense guide containing case studies and best practices for Spring Boot.<br />

\[Debu Panda (et all): 2014\], ©2014 by Manning Publications Co., [EJB 3 in Action](https://www.manning.com/books/ejb-3-in-action-second-edition): Second Edition.<br />

\[Carlo Scarioni: 2013\], Publisher Apress; 1st ed. edition (March 25, 2013), [Pro Spring Security](https://www.apress.com/us/book/9781430248187): Securing your enterprise and web spring and grails applications.<br />

\[Andrew Lee Rubinger, Bill Burke: 2010\], Publisher: O'Reilly Media, Copyright © 2010 Andrew Lee Rubinger and William J. Burke, Jr., [Enterprise JavaBeans 3.1](http://shop.oreilly.com/product/9780596158033.do): 6th Edition Developing Enterprise Java Components.<br />

\[Richard M. Reese: 2011\], Published by Packt Publishing Ltd.; Copyright © 2011 Packt Publishing, [EJB 3.1 Cookbook](https://www.packtpub.com/networking-and-servers/ejb-31-cookbook): Build real world EJB solutions with a collection of simple but incredibly effective recipes.<br />

\[Wetherbee, Jonathan (et al.): 2013\], Publisher Apress, [Beginning EJB 3](https://www.apress.com/us/book/9781430246923): Java EE 7 Edition. <br />

\[Giulio Zambon: 2012\], Publisher Apress, Copyright © 2016 by Giulio Zambon, [Beginning JSP, JSF and Tomcat](https://www.apress.com/us/book/9781430246237): Java Web Developer.<br />

\[Tim Berglund, Matthew McCullough: 2011\], O’Reilly Media, Inc.; Copyright © 2011 Gradle, Inc., [Building and Testing with Gradle](http://shop.oreilly.com/product/0636920019909.do): Understanding Next-Generation Builds.<br />

\[Anghel Leonard: 2010\], Published by Packt Publishing Ltd.; Copyright © 2010 Packt Publishing, [JSF 2.0 Cookbook](https://www.packtpub.com/web-development/jsf-20-cookbook): Over 100 simple but incredibly effective recipes for taking control of your JSF applications.<br />

\[K. Siva Prasad Reddy: 2013\], Published by Packt Publishing Ltd.; Copyright © 2013 Packt Publishing, [PrimeFaces Beginner's Guide](https://www.packtpub.com/web-development/primefaces-beginners-guide): Get your JSF-based projects up and running with this easy-to-implement guide on PrimeFaces.<br />

\[Mert Çalışkan, Oleg Varaksin: 2015\], Published by Packt Publishing Ltd.; Copyright © 2015 Packt Publishing, [PrimeFaces Cookbook Second Edition](https://www.packtpub.com/application-development/primefaces-cookbook-second-edition): Over 100 practical recipes to learn PrimeFaces 5.x – the most popular JSF component library on the planet.<br />

\[Sébastien Goasguen: 2016\], O’Reilly Media, Inc., [Docker Cookbook](http://www.allitebooks.com/docker-cookbook/): SOLUTIONS AND EXAMPLES FOR BUILDING DISTRIBUTED APPLICATIONS.<br />

\[Alan Mark Berg: 2015\], Packt Publishing, [Jenkins Continuous Integration Cookbook](https://ebooks-it.org/1784390089-ebook.htm), Second Edition<br />

