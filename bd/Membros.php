<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<title>Membros</title>
		<link rel = "stylesheet" href = "D:\Arquivos de Programas\wamp\www\Membros.css">
    </head>
	
	<body>
	
		<!-- Menu -->
		<header class="container">
			<h1><img src="C:\Users\RaulNC\Desktop\logo ij.png" alt="Informática Júnior"></h1>
			
			<nav class="menu-opcoes">
				<ul>
					<li><a href="Homepage.php">Página Inicial</a></li>
					<li><a href="Objetivos.php">Objetivos Estratégicos</a></li>
					<li><a href="Membros.php">Membros</a></li>
				</ul>
			</nav>
		</header>
		<!-- Fim do Menu -->
	<!-- Tabela -->
	  <h1 class="titulo">Membros</h1>
      <div class="row">
        <div class="col-md-6">
          <table class="table">
            <thead>
              <tr>
                <th>Nome</th>
                <th>Cargo</th>
                <th>Ações Estratégicas</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Administrativo-Financeiro</td>
                <td><p>Gerenciar e fiscalizar o patrimônio da empresa</p>
					<p>Garantir o cumprimento das regras vigentes</p></td>
              </tr>
              <tr>
                <td>2</td>
                <td>Marketing e vendas</td>
                <td><p>Fortalecer a marca da empresa</p></td>
              </tr>
              <tr>
                <td>3</td>
                <td>Presidência</td>
                <td><p>Garantir a representatividade</p>
					<p>Buscar oportunidades de crescimento</p>
					<p>Coordenar as diretorias</p></td>
			  </tr>
			  <tr>
				<td>4</td>
				<td>Projetos</td>
				<td><p>Planejar, negociar, executar e gerenciar projetos</p>
					<p>Buscar novas tecnologias</p></td>
			  </tr>
			  <tr>
				<td>5</td>
				<td>Recursos Humanos</td>
				<td><p>Gerenciar pessoas</p>
					<p>Zelar pelo bem estar na empresa</p></td>
              </tr>
			  <tr>
				<td>6</td>
				<td>Núcleo de Qualidade</td>
				<td><p>Mapear, deselvolver acompanhar e otimizar processos</p></td>
			  </tr>
			  <tr>
				<td>7</td>
				<td>Núcleo de Rsponsabilidade Social Empresarial</td>
				<td><p>Desenvolver e promover projetos e ações sociaoambientais</p></td>
			  </tr>
            </tbody>
          </table>
        </div>
		<!-- Fim da tabela -->
	
		<div id = "rodape">
			&copy; Copyright Informática Júnior <?php print date("Y");?>
		</div>
	</body>
</html>
