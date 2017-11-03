<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html>
		<head>
			<meta charset="UTF-8"/>
			<title>Kanban Board</title>

			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>

			<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'/>
			<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Arbutus+Slab'/>
			<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/spectrum/1.8.0/spectrum.min.css'/>

			<link rel="stylesheet" href="css/style.css"/>


		</head>

		<body>
			<!-- Simple MDL Progress Bar -->
			<div id="p1" class="mdl-progress mdl-js-progress"/>
			<script>
  document.querySelector('#p1').addEventListener('mdl-componentupgraded', function() {
    this.MaterialProgress.setProgress(44);
  });
			</script>
			<div class="kanban__title">
				<h1>
					<i class="material-icons">check</i> Lista de tareas</h1>
			</div>
			<div class="dd">
				<ol class="kanban To-do">
					<div class="kanban__title">
						<h2>
							<i class="material-icons">report_problem</i> To do</h2>
					</div>
					<xsl:for-each select="tasklist/task[status='0']">
						<xsl:variable name="v_id">
							<xsl:value-of select="id"/>
						</xsl:variable>
						<li class="dd-item" data-id="{$v_id}">
							<h3 class="title dd-handle" >
								<xsl:value-of select="title"/>
							</h3>
							<div class="text">
								<xsl:value-of select="description"/>

							</div> 

						</li>
						</xsl:for-each>
					</ol>
					 <ol class="kanban progress">
						<h2><i class="material-icons">build</i> In progress</h2>
						<xsl:for-each select="tasklist/task[status='1']">
						<xsl:variable name="v_id">
							<xsl:value-of select="id"/>
						</xsl:variable>
						<li class="dd-item" data-id="{$v_id}">
							<h3 class="title dd-handle" >
								<xsl:value-of select="title"/>
							</h3>
							<div class="text" contenteditable="true">
								<xsl:value-of select="description"/>

							</div> 

						</li>
						</xsl:for-each>
						</ol>
						 <ol class="kanban  Done">
						<h2><i class="material-icons">check_circle</i> Done</h2>
						<xsl:for-each select="tasklist/task[status='2']">
						<xsl:variable name="v_id">
							<xsl:value-of select="id"/>
						</xsl:variable>
						<li class="dd-item" data-id="{$v_id}">
							<h3 class="title dd-handle" >
								<xsl:value-of select="title"/>
							</h3>
							<div class="text" contenteditable="true">
								<xsl:value-of select="description"/>

							</div> 
							

						</li>
						</xsl:for-each>
						</ol>
				</div>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 